cmake_minimum_required(VERSION 3.0)

INCLUDE(ExternalProject)


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

ExternalProject_Add(TARGET_lua52
                    PREFIX ${CMAKE_CURRENT_BINARY_DIR}/lua
                    URL ${CMAKE_CURRENT_SOURCE_DIR}/lua-5.2.4.tar.gz
                    URL_HASH SHA1=ef15259421197e3d85b7d6e4871b8c26fd82c1cf
                    PATCH_COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_SOURCE_DIR}/templates ${CMAKE_CURRENT_BINARY_DIR}/lua/src/TARGET_lua52
                    CMAKE_ARGS ${LUA_CMAKE_ARGS}
                    TEST_COMMAND ${CMAKE_MAKE_PROGRAM} test
                    INSTALL_COMMAND ${CMAKE_MAKE_PROGRAM} install DESTDIR=${CMAKE_CURRENT_BINARY_DIR}/lua
)

#----------------------------------------------------------------------------
