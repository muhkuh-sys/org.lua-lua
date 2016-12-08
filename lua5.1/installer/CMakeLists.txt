CMAKE_MINIMUM_REQUIRED(VERSION 3.0)

PROJECT("org.lua-lua5.1-artifact")

INCLUDE(../../cmake/version.cmake)

SET(INSTALL_WINDOWS_32     ${CMAKE_CURRENT_SOURCE_DIR}/../../build/windows_32)
SET(INSTALL_WINDOWS_64     ${CMAKE_CURRENT_SOURCE_DIR}/../../build/windows_64)
SET(INSTALL_UBUNTU_1204_32 ${CMAKE_CURRENT_SOURCE_DIR}/../../build/ubuntu_1204_32)
SET(INSTALL_UBUNTU_1204_64 ${CMAKE_CURRENT_SOURCE_DIR}/../../build/ubuntu_1204_64)
SET(INSTALL_UBUNTU_1404_32 ${CMAKE_CURRENT_SOURCE_DIR}/../../build/ubuntu_1404_32)
SET(INSTALL_UBUNTU_1404_64 ${CMAKE_CURRENT_SOURCE_DIR}/../../build/ubuntu_1404_64)
SET(INSTALL_UBUNTU_1604_32 ${CMAKE_CURRENT_SOURCE_DIR}/../../build/ubuntu_1604_32)
SET(INSTALL_UBUNTU_1604_64 ${CMAKE_CURRENT_SOURCE_DIR}/../../build/ubuntu_1604_64)

# Get the version from one of the packages.
SET(org.lua-lua5.1_DIR ${INSTALL_WINDOWS_32}/dev/cmake)
FIND_PACKAGE("org.lua-lua5.1" REQUIRED)
SET(PROJECT_VERSION ${org.lua-lua5.1_VERSION})

SET(CPACK_OUTPUT_FILE_PREFIX targets/jonchki/repository/org/lua/lua/${PROJECT_VERSION})
SET(CPACK_INCLUDE_TOPLEVEL_DIRECTORY FALSE)
SET(CPACK_PACKAGE_FILE_NAME "lua5.1-${PROJECT_VERSION}")

SET(CPACK_GENERATOR "ZIP")
INCLUDE(CPack)


#-----------------------------------------------------------------------------
#
# Install the Windows_32 files.
#
INSTALL(FILES ${INSTALL_WINDOWS_32}/lua5.1.exe ${INSTALL_WINDOWS_32}/wlua5.1.exe ${INSTALL_WINDOWS_32}/lua5.1.dll
        DESTINATION windows_32
)

INSTALL(FILES ${INSTALL_WINDOWS_32}/dev/lib/lua5.1.dll.a
        DESTINATION windows_32/dev/lib
)

INSTALL(DIRECTORY ${INSTALL_WINDOWS_32}/dev/include/lua5.1
        DESTINATION windows_32/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_WINDOWS_32}/dev/cmake
        DESTINATION windows_32/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Windows_64 files.
#
INSTALL(FILES ${INSTALL_WINDOWS_64}/lua5.1.exe ${INSTALL_WINDOWS_64}/wlua5.1.exe ${INSTALL_WINDOWS_64}/lua5.1.dll
        DESTINATION windows_64
)

INSTALL(FILES ${INSTALL_WINDOWS_64}/dev/lib/lua5.1.dll.a
        DESTINATION windows_64/dev/lib
)

INSTALL(DIRECTORY ${INSTALL_WINDOWS_64}/dev/include/lua5.1
        DESTINATION windows_64/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_WINDOWS_64}/dev/cmake
        DESTINATION windows_64/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1204_32 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1204_32}/lua5.1 ${INSTALL_UBUNTU_1204_32}/wlua5.1 ${INSTALL_UBUNTU_1204_32}/lua5.1.so
        DESTINATION ubuntu_1204_32
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1204_32}/dev/include/lua5.1
        DESTINATION ubuntu_1204_32/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1204_32}/dev/cmake
        DESTINATION ubuntu_1204_32/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1204_64 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1204_64}/lua5.1 ${INSTALL_UBUNTU_1204_64}/wlua5.1 ${INSTALL_UBUNTU_1204_64}/lua5.1.so
        DESTINATION ubuntu_1204_64
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1204_64}/dev/include/lua5.1
        DESTINATION ubuntu_1204_64/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1204_64}/dev/cmake
        DESTINATION ubuntu_1204_64/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1404_32 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1404_32}/lua5.1 ${INSTALL_UBUNTU_1404_32}/wlua5.1 ${INSTALL_UBUNTU_1404_32}/lua5.1.so
        DESTINATION ubuntu_1404_32
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1404_32}/dev/include/lua5.1
        DESTINATION ubuntu_1404_32/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1404_32}/dev/cmake
        DESTINATION ubuntu_1404_32/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1404_64 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1404_64}/lua5.1 ${INSTALL_UBUNTU_1404_64}/wlua5.1 ${INSTALL_UBUNTU_1404_64}/lua5.1.so
        DESTINATION ubuntu_1404_64
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1404_64}/dev/include/lua5.1
        DESTINATION ubuntu_1404_64/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1404_64}/dev/cmake
        DESTINATION ubuntu_1404_64/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1604_32 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1604_32}/lua5.1 ${INSTALL_UBUNTU_1604_32}/wlua5.1 ${INSTALL_UBUNTU_1604_32}/lua5.1.so
        DESTINATION ubuntu_1604_32
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1604_32}/dev/include/lua5.1
        DESTINATION ubuntu_1604_32/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1604_32}/dev/cmake
        DESTINATION ubuntu_1604_32/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1604_64 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1604_64}/lua5.1 ${INSTALL_UBUNTU_1604_64}/wlua5.1 ${INSTALL_UBUNTU_1604_64}/lua5.1.so
        DESTINATION ubuntu_1604_64
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1604_64}/dev/include/lua5.1
        DESTINATION ubuntu_1604_64/dev/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1604_64}/dev/cmake
        DESTINATION ubuntu_1604_64/dev
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------

INSTALL(FILES install.lua
        DESTINATION .)


CONFIGURE_FILE(lua51.xml
               ${CPACK_OUTPUT_FILE_PREFIX}/lua5.1-${PROJECT_VERSION}.xml
               @ONLY)


#-----------------------------------------------------------------------------
#
# Filter the pom.xml file.
#
SET(POM_ARTIFACT_ID  "lua5.1")
SET(POM_GROUP_ID     "org.lua")
SET(POM_VERSION      "${PROJECT_VERSION}")
SET(POM_PACKAGING    "zip")
CONFIGURE_FILE(${CMAKE_CURRENT_SOURCE_DIR}/pom.xml ${CPACK_OUTPUT_FILE_PREFIX}/pom.xml)
