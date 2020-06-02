cmake_minimum_required(VERSION 3.0)

# The version number is a combination of the LUA version and the packaging.
PROJECT(
	"org.lua.lua-lua5.1"
	VERSION ${VERSION}
)

SET(CMAKE_SKIP_RPATH FALSE)
SET(CMAKE_SKIP_BUILD_RPATH FALSE)
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)
set(CMAKE_BUILD_RPATH "$ORIGIN")
set(CMAKE_INSTALL_RPATH "$ORIGIN")


INCLUDE(CheckIncludeFiles)

# Enable tests (see here for details: http://www.vtk.org/Wiki/CMake/Testing_With_CTest)
ENABLE_TESTING()

#----------------------------------------------------------------------------
#
# Find all packages.
#

# Python is used for some test scripts.
FIND_PACKAGE(PythonInterp 2.7 REQUIRED)


#----------------------------------------------------------------------------
#
# Create the icons.
#
IF(LUA_ICON)
	MESSAGE("Use the build icon...")
ELSE(LUA_ICON)
	MESSAGE("Use the existing icon.")

	# Use the existing icon from the archive.
	SET(LUA_ICON "${CMAKE_CURRENT_SOURCE_DIR}/etc/lua.ico")
ENDIF(LUA_ICON)


#----------------------------------------------------------------------------
#
# Filter and compile the ressource files.
#

IF(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
	SET(LUALIB_RC  ${CMAKE_CURRENT_BINARY_DIR}/lua_dll.rc)
	CONFIGURE_FILE(${CMAKE_CURRENT_SOURCE_DIR}/lua_dll.rc  ${LUALIB_RC})

	SET(LUAEXE_RC  ${CMAKE_CURRENT_BINARY_DIR}/lua_exe.rc)
	CONFIGURE_FILE(${CMAKE_CURRENT_SOURCE_DIR}/lua_exe.rc  ${LUAEXE_RC})

	SET(WLUAEXE_RC ${CMAKE_CURRENT_BINARY_DIR}/wlua_exe.rc)
	CONFIGURE_FILE(${CMAKE_CURRENT_SOURCE_DIR}/wlua_exe.rc ${WLUAEXE_RC})
ELSE(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
	SET(LUALIB_RC  )
	SET(LUAEXE_RC  )
	SET(WLUAEXE_RC )
ENDIF(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")


#----------------------------------------------------------------------------
#
# Find all headers and libraries.
#
CHECK_INCLUDE_FILES(readline/readline.h HAVE_READLINE_H)


#----------------------------------------------------------------------------
#
# Build the LUA shared object and executable.
#

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/src)

SET(lua_SOURCES
	src/lapi.c
	src/lcode.c
	src/ldebug.c
	src/ldo.c
	src/ldump.c
	src/lfunc.c
	src/lgc.c
	src/llex.c
	src/lmem.c
	src/lobject.c
	src/lopcodes.c
	src/lparser.c
	src/lstate.c
	src/lstring.c
	src/ltable.c
	src/ltm.c
	src/lundump.c
	src/lvm.c
	src/lzio.c
	src/lauxlib.c
	src/lbaselib.c
	src/ldblib.c
	src/liolib.c
	src/lmathlib.c
	src/loslib.c
	src/ltablib.c
	src/lstrlib.c
	src/loadlib.c
	src/linit.c
)

SET(lua_HEADERS
	src/lapi.h
	src/lauxlib.h
	src/lcode.h
	src/ldebug.h
	src/ldo.h
	src/lfunc.h
	src/lgc.h
	src/llex.h
	src/llimits.h
	src/lmem.h
	src/lobject.h
	src/lopcodes.h
	src/lparser.h
	src/lstate.h
	src/lstring.h
	src/ltable.h
	src/ltm.h
	src/luaconf.h
	src/lua.h
	src/lualib.h
	src/lundump.h
	src/lvm.h
	src/lzio.h
)

IF(UNIX)
	IF(HAVE_READLINE_H)
		ADD_DEFINITIONS(-DLUA_USE_LINUX)
		SET(lua_libs m dl readline)
	ELSE(HAVE_READLINE_H)
		ADD_DEFINITIONS(-DLUA_USE_POSIX -DLUA_USE_DLOPEN)
		SET(lua_libs m dl)
	ENDIF(HAVE_READLINE_H)
ELSE(UNIX)
	IF(WIN32)
		add_definitions(-DLUA_BUILD_AS_DLL)
		set(lua_libs )
	ENDIF(WIN32)
ENDIF(UNIX)


ADD_LIBRARY(TARGET_lualib SHARED ${lua_SOURCES} ${LUALIB_RC})
SET_PROPERTY(TARGET TARGET_lualib PROPERTY VERSION ${lua_VERSION})
SET_PROPERTY(TARGET TARGET_lualib PROPERTY INTERFACE_LINK_LIBRARIES ${lua_libs})

TARGET_COMPILE_DEFINITIONS(TARGET_lualib
                           PRIVATE _GNU_SOURCE)


ADD_EXECUTABLE(TARGET_luaexe
               src/lua.c
               ${LUAEXE_RC})
TARGET_LINK_LIBRARIES(TARGET_luaexe TARGET_lualib)

ADD_EXECUTABLE(TARGET_wluaexe WIN32
               src/lua.c
               ${WLUAEXE_RC})
TARGET_LINK_LIBRARIES(TARGET_wluaexe TARGET_lualib)

SET_TARGET_PROPERTIES(TARGET_lualib PROPERTIES PREFIX "" OUTPUT_NAME lua5.1 IMPORT_PREFIX "")
SET_TARGET_PROPERTIES(TARGET_luaexe PROPERTIES OUTPUT_NAME lua5.1)
SET_TARGET_PROPERTIES(TARGET_wluaexe PROPERTIES OUTPUT_NAME wlua5.1)
SET_PROPERTY(TARGET TARGET_luaexe PROPERTY VERSION ${lua_VERSION})
SET_PROPERTY(TARGET TARGET_wluaexe PROPERTY VERSION ${lua_VERSION})

SET(CMAKE_INSTALL_PREFIX /install)
INSTALL(TARGETS TARGET_luaexe TARGET_wluaexe TARGET_lualib
        EXPORT EXPORT_package
        LIBRARY DESTINATION .
        ARCHIVE DESTINATION dev/lib
        RUNTIME DESTINATION .
        INCLUDES DESTINATION dev/include/lua5.1)
INSTALL(FILES   ${lua_HEADERS}  DESTINATION dev/include/lua5.1)

# Add tests for this module.
IF((${CMAKE_SYSTEM_NAME} STREQUAL "Windows") AND (${CMAKE_COMPILER_IS_GNUCC}))
	# Here are the MinGW specific tests.
	ADD_TEST(NAME lua_MinGW_DLL_dependencies
	         COMMAND "${PYTHON_EXECUTABLE}" ${CMAKE_DLL_TEST} -u lua5.1 $<TARGET_FILE:TARGET_luaexe> $<TARGET_FILE:TARGET_wluaexe> $<TARGET_FILE:TARGET_lualib>)
ENDIF((${CMAKE_SYSTEM_NAME} STREQUAL "Windows") AND (${CMAKE_COMPILER_IS_GNUCC}))


#----------------------------------------------------------------------------
#
# Build the CMAKE package.
#
INCLUDE(CMakePackageConfigHelpers)

SET(INCLUDE_INSTALL_DIR dev/include/)
CONFIGURE_PACKAGE_CONFIG_FILE(
	cmake/config.cmake.in
	"${CMAKE_CURRENT_BINARY_DIR}/package/${PROJECT_NAME}-config.cmake"
	INSTALL_DESTINATION dev/cmake
	PATH_VARS INCLUDE_INSTALL_DIR
)

WRITE_BASIC_PACKAGE_VERSION_FILE(
	"${CMAKE_CURRENT_BINARY_DIR}/package/${PROJECT_NAME}-version.cmake"
	COMPATIBILITY ExactVersion
)

EXPORT(
	EXPORT EXPORT_package
	FILE "${CMAKE_CURRENT_BINARY_DIR}/package/${PROJECT_NAME}-targets.cmake"
	NAMESPACE ${PROJECT_NAME}::
)

INSTALL(
	EXPORT EXPORT_package
	FILE ${PROJECT_NAME}-targets.cmake
	NAMESPACE ${PROJECT_NAME}::
	DESTINATION dev/cmake
)
INSTALL(
	FILES "${CMAKE_CURRENT_BINARY_DIR}/package/${PROJECT_NAME}-config.cmake" "${CMAKE_CURRENT_BINARY_DIR}/package/${PROJECT_NAME}-version.cmake"
	DESTINATION dev/cmake
	COMPONENT Devel
)
