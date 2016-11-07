CMAKE_MINIMUM_REQUIRED(VERSION 3.0)

PROJECT("org.lua-lua53")

SET(CPACK_INCLUDE_TOPLEVEL_DIRECTORY FALSE)
SET(CPACK_PACKAGE_FILE_NAME lua53-${VERSION})

SET(CPACK_GENERATOR "ZIP")
INCLUDE(CPack)


#-----------------------------------------------------------------------------
#
# Install the 32bit files.
#
INSTALL(FILES ${MUHKUH_WIN32_INSTALL}/bin/lua5.3.exe ${MUHKUH_WIN32_INSTALL}/bin/wlua5.3.exe ${MUHKUH_WIN32_INSTALL}/bin/lua5.3.dll
        DESTINATION windows_x86/bin
)

INSTALL(FILES ${MUHKUH_WIN32_INSTALL}/lib/lua5.3.dll.a
        DESTINATION windows_x86/lib
)

INSTALL(DIRECTORY ${MUHKUH_WIN32_INSTALL}/include
        DESTINATION windows_x86
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${MUHKUH_WIN32_INSTALL}/cmake
        DESTINATION windows_x86
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the 64bit files.
#
INSTALL(FILES ${MUHKUH_WIN64_INSTALL}/bin/lua5.3.exe ${MUHKUH_WIN64_INSTALL}/bin/wlua5.3.exe ${MUHKUH_WIN64_INSTALL}/bin/lua5.3.dll
        DESTINATION windows_amd64/bin
)

INSTALL(FILES ${MUHKUH_WIN64_INSTALL}/lib/lua5.3.dll.a
        DESTINATION windows_amd64/lib
)

INSTALL(DIRECTORY ${MUHKUH_WIN64_INSTALL}/include
        DESTINATION windows_amd64
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${MUHKUH_WIN64_INSTALL}/cmake
        DESTINATION windows_amd64
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------

INSTALL(FILES install.lua
        DESTINATION .)
