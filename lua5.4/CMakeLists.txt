cmake_minimum_required(VERSION 3.7)

INCLUDE(ExternalProject)

# Python is needed for the patch tool.
FIND_PACKAGE(PythonInterp 2.7 REQUIRED)


#----------------------------------------------------------------------------
#
# Extract the source and build the LUA interpreter.
#

SET(LUA_CMAKE_ARGS "")
LIST(APPEND LUA_CMAKE_ARGS "-DCMAKE_C_FLAGS=${CMAKE_C_FLAGS}")
LIST(APPEND LUA_CMAKE_ARGS "-DCMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}")
LIST(APPEND LUA_CMAKE_ARGS "-DCMAKE_SYSTEM_NAME=${CMAKE_SYSTEM_NAME}")
LIST(APPEND LUA_CMAKE_ARGS "-DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}")
LIST(APPEND LUA_CMAKE_ARGS "-DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}")
LIST(APPEND LUA_CMAKE_ARGS "-DLUA_ICON=${LUA_ICON}")
LIST(APPEND LUA_CMAKE_ARGS "-DCMAKE_DLL_TEST=${CMAKE_HOME_DIRECTORY}/cmake/tests/mingw_dll_dependencies.py")
LIST(APPEND LUA_CMAKE_ARGS "-DVERSION=${PROJECT_VERSION}")

IF(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
	LIST(APPEND LUA_CMAKE_ARGS "-DCMAKE_RC_COMPILER=${CMAKE_RC_COMPILER}")
ENDIF(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")

ExternalProject_Add(TARGET_lua54
                    PREFIX ${CMAKE_CURRENT_BINARY_DIR}/lua
                    URL ${CMAKE_CURRENT_SOURCE_DIR}/lua-5.4.0-beta-rc2.tar.gz
                    URL_HASH SHA1=5d018de9b1f69b7e334dc3fa43b815669e103880
                    PATCH_COMMAND "${PYTHON_EXECUTABLE}" ${CMAKE_HOME_DIRECTORY}/cmake/tools/apply_patches.py --working-folder ${CMAKE_CURRENT_BINARY_DIR}/lua/src/TARGET_lua54 --copy-folder ${CMAKE_CURRENT_SOURCE_DIR}/templates --patch-folder ${CMAKE_CURRENT_SOURCE_DIR}/patches --strip 1
                    CMAKE_ARGS ${LUA_CMAKE_ARGS}
                    TEST_COMMAND ${CMAKE_MAKE_PROGRAM} test
                    INSTALL_COMMAND ${CMAKE_MAKE_PROGRAM} install DESTDIR=${CMAKE_CURRENT_BINARY_DIR}/lua
)

#----------------------------------------------------------------------------
#
# Build a package for the selected platform.
#

SET(CPACK_OUTPUT_FILE_PREFIX ${CMAKE_BINARY_DIR}/../repository/org/lua/lua/${PROJECT_VERSION})
SET(CPACK_INCLUDE_TOPLEVEL_DIRECTORY FALSE)
SET(CPACK_PACKAGE_FILE_NAME "lua-${PROJECT_VERSION}-${JONCHKI_PLATFORM}")

SET(CPACK_GENERATOR "TXZ")
INCLUDE(CPack)

# This is the folder where the external project TARGET_lua54 installed the files.
SET(SUB_INSTALL_DIR "${CMAKE_CURRENT_BINARY_DIR}/lua/install")


IF(${JONCHKI_PLATFORM_DIST_ID} STREQUAL "windows")
	# Package a windows build.

	# Install the ".exe" files with the correct permissions.
	INSTALL(DIRECTORY ${SUB_INSTALL_DIR}/
	        DESTINATION .
	        USE_SOURCE_PERMISSIONS
	        FILES_MATCHING
	        PATTERN "lua5.4.exe"
	        PATTERN "wlua5.4.exe")

	# Install the DLL without execute permissions.
	INSTALL(FILES ${SUB_INSTALL_DIR}/lua5.4.dll
	        DESTINATION .)

	INSTALL(FILES ${SUB_INSTALL_DIR}/dev/lib/lua5.4.dll.a
	        DESTINATION dev/lib)

	INSTALL(DIRECTORY ${SUB_INSTALL_DIR}/dev/include/lua5.4
	        DESTINATION dev/include
	        FILES_MATCHING PATTERN "*.h")

	INSTALL(DIRECTORY ${SUB_INSTALL_DIR}/dev/cmake
	        DESTINATION dev
	        FILES_MATCHING PATTERN "*.cmake")

	CONFIGURE_FILE(installer/install_windows.lua
	               ${CMAKE_CURRENT_BINARY_DIR}/package/install.lua
	               @ONLY)

	INSTALL(FILES ${CMAKE_CURRENT_BINARY_DIR}/package/install.lua
	        DESTINATION .)
ELSE(${JONCHKI_PLATFORM_DIST_ID} STREQUAL "windows")
	# Package a linux build.

	INSTALL(DIRECTORY ${SUB_INSTALL_DIR}/
	        DESTINATION .
	        USE_SOURCE_PERMISSIONS
	        FILES_MATCHING
	        PATTERN "lua5.4"
	        PATTERN "wlua5.4")

	INSTALL(FILES ${SUB_INSTALL_DIR}/lua5.4.so
	        DESTINATION .)

	INSTALL(DIRECTORY ${SUB_INSTALL_DIR}/dev/include/lua5.4
	        DESTINATION dev/include
	        FILES_MATCHING PATTERN "*.h")

	INSTALL(DIRECTORY ${SUB_INSTALL_DIR}/dev/cmake
	        DESTINATION dev
	        FILES_MATCHING PATTERN "*.cmake")

	CONFIGURE_FILE(installer/install_linux.lua
	               ${CMAKE_CURRENT_BINARY_DIR}/package/install.lua
	               @ONLY)

	INSTALL(FILES ${CMAKE_CURRENT_BINARY_DIR}/package/install.lua
	        DESTINATION .)
ENDIF(${JONCHKI_PLATFORM_DIST_ID} STREQUAL "windows")

CONFIGURE_FILE(installer/lua5.4.xml
               ${CPACK_OUTPUT_FILE_PREFIX}/lua-${PROJECT_VERSION}-${JONCHKI_PLATFORM}.xml
               @ONLY)


#-----------------------------------------------------------------------------
#
# Create a custom target named "pack".
# It builds the package and creates the hashes.
#
ADD_CUSTOM_TARGET(pack
                  COMMAND ${CMAKE_MAKE_PROGRAM}
                  COMMAND ${CMAKE_MAKE_PROGRAM} package
                  COMMAND "${PYTHON_EXECUTABLE}" ${CMAKE_HOME_DIRECTORY}/cmake/tools/generate_hash.py ${CPACK_OUTPUT_FILE_PREFIX}/lua-${PROJECT_VERSION}-${JONCHKI_PLATFORM}.xml
                  COMMAND "${PYTHON_EXECUTABLE}" ${CMAKE_HOME_DIRECTORY}/cmake/tools/generate_hash.py ${CPACK_OUTPUT_FILE_PREFIX}/lua-${PROJECT_VERSION}-${JONCHKI_PLATFORM}.tar.xz
                  COMMENT "Pack the artifact and generate the hashes...")


#-----------------------------------------------------------------------------
#
# Filter the pom.xml file.
#
SET(POM_ARTIFACT_ID  "lua")
SET(POM_GROUP_ID     "org.lua")
SET(POM_VERSION      "${PROJECT_VERSION}")
SET(POM_PACKAGING    "tar.xz")
CONFIGURE_FILE(installer/pom.xml ${CPACK_OUTPUT_FILE_PREFIX}/lua-${PROJECT_VERSION}.pom)
