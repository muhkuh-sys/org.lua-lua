CMAKE_MINIMUM_REQUIRED(VERSION 3.0)

PROJECT("org.lua-lua53-artifact")

INCLUDE(../../cmake/version.cmake)

SET(INSTALL_WIN32 ${CMAKE_CURRENT_SOURCE_DIR}/../../build_windows32/lua5.3/lua/install)
SET(INSTALL_WIN64 ${CMAKE_CURRENT_SOURCE_DIR}/../../build_windows64/lua5.3/lua/install)

SET(org.lua-lua53_DIR ${INSTALL_WIN32}/cmake)
FIND_PACKAGE("org.lua-lua53")
SET(PROJECT_VERSION ${org.lua-lua53_VERSION})

SET(CPACK_INCLUDE_TOPLEVEL_DIRECTORY FALSE)
SET(CPACK_PACKAGE_FILE_NAME "lua53-${PROJECT_VERSION}")

SET(CPACK_GENERATOR "ZIP")
INCLUDE(CPack)


#-----------------------------------------------------------------------------
#
# Install the 32bit files.
#
INSTALL(FILES ${INSTALL_WIN32}/bin/lua5.3.exe ${INSTALL_WIN32}/bin/wlua5.3.exe ${INSTALL_WIN32}/bin/lua5.3.dll
        DESTINATION windows_x86/bin
)

INSTALL(FILES ${INSTALL_WIN32}/lib/lua5.3.dll.a
        DESTINATION windows_x86/lib
)

INSTALL(DIRECTORY ${INSTALL_WIN32}/include
        DESTINATION windows_x86
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_WIN32}/cmake
        DESTINATION windows_x86
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the 64bit files.
#
INSTALL(FILES ${INSTALL_WIN64}/bin/lua5.3.exe ${INSTALL_WIN64}/bin/wlua5.3.exe ${INSTALL_WIN64}/bin/lua5.3.dll
        DESTINATION windows_amd64/bin
)

INSTALL(FILES ${INSTALL_WIN64}/lib/lua5.3.dll.a
        DESTINATION windows_amd64/lib
)

INSTALL(DIRECTORY ${INSTALL_WIN64}/include
        DESTINATION windows_amd64
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_WIN64}/cmake
        DESTINATION windows_amd64
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------

INSTALL(FILES install.lua
        DESTINATION .)


CONFIGURE_FILE(lua53.xml
               lua53-${PROJECT_VERSION}.xml
               @ONLY)
