CMAKE_MINIMUM_REQUIRED(VERSION 3.0)

PROJECT(
        "org.lua-lua52"
        VERSION @PROJECT_VERSION@
)

SET(CPACK_INCLUDE_TOPLEVEL_DIRECTORY FALSE)
SET(CPACK_PACKAGE_FILE_NAME lua52-@PROJECT_VERSION@)

SET(CPACK_GENERATOR "ZIP")
INCLUDE(CPack)


#-----------------------------------------------------------------------------
#
# Install the 32bit files.
#
INSTALL(FILES @INSTALL_WIN32@/bin/lua5.2.exe @INSTALL_WIN32@/bin/wlua5.2.exe @INSTALL_WIN32@/bin/lua5.2.dll
        DESTINATION windows_x86/bin
)

INSTALL(FILES @INSTALL_WIN32@/lib/lua5.2.dll.a
        DESTINATION windows_x86/lib
)

INSTALL(DIRECTORY @INSTALL_WIN32@/include
        DESTINATION windows_x86
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY @INSTALL_WIN32@/cmake
        DESTINATION windows_x86
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the 64bit files.
#
INSTALL(FILES @INSTALL_WIN64@/bin/lua5.2.exe @INSTALL_WIN64@/bin/wlua5.2.exe @INSTALL_WIN64@/bin/lua5.2.dll
        DESTINATION windows_amd64/bin
)

INSTALL(FILES @INSTALL_WIN64@/lib/lua5.2.dll.a
        DESTINATION windows_amd64/lib
)

INSTALL(DIRECTORY @INSTALL_WIN64@/include
        DESTINATION windows_amd64
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY @INSTALL_WIN64@/cmake
        DESTINATION windows_amd64
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------

INSTALL(FILES install.lua
        DESTINATION .)
