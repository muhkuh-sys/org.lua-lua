CMAKE_MINIMUM_REQUIRED(VERSION 3.0)

PROJECT("org.lua.lua-lua5.1-artifact")

INCLUDE(../../cmake/version.cmake)

SET(INSTALL_WINDOWS_x86        ${CMAKE_CURRENT_SOURCE_DIR}/../../build/windows_x86)
SET(INSTALL_WINDOWS_x86_64     ${CMAKE_CURRENT_SOURCE_DIR}/../../build/windows_x86_64)
SET(INSTALL_UBUNTU_1404_x86    ${CMAKE_CURRENT_SOURCE_DIR}/../../build/ubuntu_1404_x86)
SET(INSTALL_UBUNTU_1404_x86_64 ${CMAKE_CURRENT_SOURCE_DIR}/../../build/ubuntu_1404_x86_64)
SET(INSTALL_UBUNTU_1604_x86    ${CMAKE_CURRENT_SOURCE_DIR}/../../build/ubuntu_1604_x86)
SET(INSTALL_UBUNTU_1604_x86_64 ${CMAKE_CURRENT_SOURCE_DIR}/../../build/ubuntu_1604_x86_64)
SET(INSTALL_UBUNTU_1610_x86    ${CMAKE_CURRENT_SOURCE_DIR}/../../build/ubuntu_1610_x86)
SET(INSTALL_UBUNTU_1610_x86_64 ${CMAKE_CURRENT_SOURCE_DIR}/../../build/ubuntu_1610_x86_64)
SET(INSTALL_UBUNTU_1704_x86    ${CMAKE_CURRENT_SOURCE_DIR}/../../build/ubuntu_1704_x86)
SET(INSTALL_UBUNTU_1704_x86_64 ${CMAKE_CURRENT_SOURCE_DIR}/../../build/ubuntu_1704_x86_64)

# Get the version from one of the packages.
SET(org.lua.lua-lua5.1_DIR ${INSTALL_WINDOWS_x86}/dev/cmake)
FIND_PACKAGE("org.lua.lua-lua5.1" REQUIRED)
SET(PROJECT_VERSION ${org.lua.lua-lua5.1_VERSION})

SET(CPACK_OUTPUT_FILE_PREFIX targets/jonchki/repository/org/lua/lua/${PROJECT_VERSION})
SET(CPACK_INCLUDE_TOPLEVEL_DIRECTORY FALSE)
SET(CPACK_PACKAGE_FILE_NAME "lua-${PROJECT_VERSION}")

SET(CPACK_GENERATOR "TXZ")
INCLUDE(CPack)


#-----------------------------------------------------------------------------
#
# Install the Windows_x86 files.
#
INSTALL(FILES ${INSTALL_WINDOWS_x86}/lua5.1.exe ${INSTALL_WINDOWS_x86}/wlua5.1.exe ${INSTALL_WINDOWS_x86}/lua5.1.dll
        DESTINATION windows_x86
)

INSTALL(FILES ${INSTALL_WINDOWS_x86}/dev/lib/lua5.1.dll.a
        DESTINATION windows_x86/dev/lib
)

INSTALL(DIRECTORY ${INSTALL_WINDOWS_x86}/dev/include/lua5.1
        DESTINATION windows_x86/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_WINDOWS_x86}/dev/cmake
        DESTINATION windows_x86/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Windows_x86_64 files.
#
INSTALL(FILES ${INSTALL_WINDOWS_x86_64}/lua5.1.exe ${INSTALL_WINDOWS_x86_64}/wlua5.1.exe ${INSTALL_WINDOWS_x86_64}/lua5.1.dll
        DESTINATION windows_x86_64
)

INSTALL(FILES ${INSTALL_WINDOWS_x86_64}/dev/lib/lua5.1.dll.a
        DESTINATION windows_x86_64/dev/lib
)

INSTALL(DIRECTORY ${INSTALL_WINDOWS_x86_64}/dev/include/lua5.1
        DESTINATION windows_x86_64/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_WINDOWS_x86_64}/dev/cmake
        DESTINATION windows_x86_64/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1404_x86 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1404_x86}/lua5.1 ${INSTALL_UBUNTU_1404_x86}/wlua5.1 ${INSTALL_UBUNTU_1404_x86}/lua5.1.so
        DESTINATION ubuntu_1404_x86
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1404_x86}/dev/include/lua5.1
        DESTINATION ubuntu_1404_x86/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1404_x86}/dev/cmake
        DESTINATION ubuntu_1404_x86/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1404_x86_64 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1404_x86_64}/lua5.1 ${INSTALL_UBUNTU_1404_x86_64}/wlua5.1 ${INSTALL_UBUNTU_1404_x86_64}/lua5.1.so
        DESTINATION ubuntu_1404_x86_64
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1404_x86_64}/dev/include/lua5.1
        DESTINATION ubuntu_1404_x86_64/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1404_x86_64}/dev/cmake
        DESTINATION ubuntu_1404_x86_64/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1604_x86 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1604_x86}/lua5.1 ${INSTALL_UBUNTU_1604_x86}/wlua5.1 ${INSTALL_UBUNTU_1604_x86}/lua5.1.so
        DESTINATION ubuntu_1604_x86
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1604_x86}/dev/include/lua5.1
        DESTINATION ubuntu_1604_x86/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1604_x86}/dev/cmake
        DESTINATION ubuntu_1604_x86/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1604_x86_64 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1604_x86_64}/lua5.1 ${INSTALL_UBUNTU_1604_x86_64}/wlua5.1 ${INSTALL_UBUNTU_1604_x86_64}/lua5.1.so
        DESTINATION ubuntu_1604_x86_64
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1604_x86_64}/dev/include/lua5.1
        DESTINATION ubuntu_1604_x86_64/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1604_x86_64}/dev/cmake
        DESTINATION ubuntu_1604_x86_64/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1610_x86 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1610_x86}/lua5.1 ${INSTALL_UBUNTU_1610_x86}/wlua5.1 ${INSTALL_UBUNTU_1610_x86}/lua5.1.so
        DESTINATION ubuntu_1610_x86
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1610_x86}/dev/include/lua5.1
        DESTINATION ubuntu_1610_x86/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1610_x86}/dev/cmake
        DESTINATION ubuntu_1610_x86/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1610_x86_64 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1610_x86_64}/lua5.1 ${INSTALL_UBUNTU_1610_x86_64}/wlua5.1 ${INSTALL_UBUNTU_1610_x86_64}/lua5.1.so
        DESTINATION ubuntu_1610_x86_64
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1610_x86_64}/dev/include/lua5.1
        DESTINATION ubuntu_1610_x86_64/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1610_x86_64}/dev/cmake
        DESTINATION ubuntu_1610_x86_64/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1704_x86 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1704_x86}/lua5.1 ${INSTALL_UBUNTU_1704_x86}/wlua5.1 ${INSTALL_UBUNTU_1704_x86}/lua5.1.so
        DESTINATION ubuntu_1704_x86
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1704_x86}/dev/include/lua5.1
        DESTINATION ubuntu_1704_x86/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1704_x86}/dev/cmake
        DESTINATION ubuntu_1704_x86/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1704_x86_64 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1704_x86_64}/lua5.1 ${INSTALL_UBUNTU_1704_x86_64}/wlua5.1 ${INSTALL_UBUNTU_1704_x86_64}/lua5.1.so
        DESTINATION ubuntu_1704_x86_64
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1704_x86_64}/dev/include/lua5.1
        DESTINATION ubuntu_1704_x86_64/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1704_x86_64}/dev/cmake
        DESTINATION ubuntu_1704_x86_64/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------

INSTALL(FILES install.lua
        DESTINATION .)


CONFIGURE_FILE(lua51.xml
               ${CPACK_OUTPUT_FILE_PREFIX}/lua-${PROJECT_VERSION}.xml
               @ONLY)


#-----------------------------------------------------------------------------
#
# Filter the pom.xml file.
#
SET(POM_ARTIFACT_ID  "lua")
SET(POM_GROUP_ID     "org.lua")
SET(POM_VERSION      "${PROJECT_VERSION}")
SET(POM_PACKAGING    "tar.xz")
CONFIGURE_FILE(${CMAKE_CURRENT_SOURCE_DIR}/pom.xml ${CPACK_OUTPUT_FILE_PREFIX}/pom.xml)
