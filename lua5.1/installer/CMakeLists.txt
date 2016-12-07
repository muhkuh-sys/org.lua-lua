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
SET(org.lua-lua5.1_DIR ${INSTALL_WINDOWS_32}/cmake)
FIND_PACKAGE("org.lua-lua5.1" REQUIRED)
SET(PROJECT_VERSION ${org.lua-lua5.1_VERSION})

SET(CPACK_OUTPUT_FILE_PREFIX targets/jonchki/repository/org/lua/lua5.1/${PROJECT_VERSION})
SET(CPACK_INCLUDE_TOPLEVEL_DIRECTORY FALSE)
SET(CPACK_PACKAGE_FILE_NAME "lua5.1-${PROJECT_VERSION}")

SET(CPACK_GENERATOR "ZIP")
INCLUDE(CPack)


#-----------------------------------------------------------------------------
#
# Install the Windows_32 files.
#
INSTALL(FILES ${INSTALL_WINDOWS_32}/bin/lua5.1.exe ${INSTALL_WINDOWS_32}/bin/wlua5.1.exe ${INSTALL_WINDOWS_32}/bin/lua5.1.dll
        DESTINATION windows_32/bin
)

INSTALL(FILES ${INSTALL_WINDOWS_32}/lib/lua5.1.dll.a
        DESTINATION windows_32/lib
)

INSTALL(DIRECTORY ${INSTALL_WINDOWS_32}/include/lua5.1
        DESTINATION windows_32/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_WINDOWS_32}/cmake
        DESTINATION windows_32
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Windows_64 files.
#
INSTALL(FILES ${INSTALL_WINDOWS_64}/bin/lua5.1.exe ${INSTALL_WINDOWS_64}/bin/wlua5.1.exe ${INSTALL_WINDOWS_64}/bin/lua5.1.dll
        DESTINATION windows_64/bin
)

INSTALL(FILES ${INSTALL_WINDOWS_64}/lib/lua5.1.dll.a
        DESTINATION windows_64/lib
)

INSTALL(DIRECTORY ${INSTALL_WINDOWS_64}/include/lua5.1
        DESTINATION windows_64/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_WINDOWS_64}/cmake
        DESTINATION windows_64
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1204_32 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1204_32}/bin/lua5.1 ${INSTALL_UBUNTU_1204_32}/bin/wlua5.1 ${INSTALL_UBUNTU_1204_32}/bin/lua5.1.so
        DESTINATION ubuntu_1204_32/bin
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1204_32}/include/lua5.1
        DESTINATION ubuntu_1204_32/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1204_32}/cmake
        DESTINATION ubuntu_1204_32
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1204_64 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1204_64}/bin/lua5.1 ${INSTALL_UBUNTU_1204_64}/bin/wlua5.1 ${INSTALL_UBUNTU_1204_64}/bin/lua5.1.so
        DESTINATION ubuntu_1204_64/bin
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1204_64}/include/lua5.1
        DESTINATION ubuntu_1204_64/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1204_64}/cmake
        DESTINATION ubuntu_1204_64
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1404_32 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1404_32}/bin/lua5.1 ${INSTALL_UBUNTU_1404_32}/bin/wlua5.1 ${INSTALL_UBUNTU_1404_32}/bin/lua5.1.so
        DESTINATION ubuntu_1404_32/bin
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1404_32}/include/lua5.1
        DESTINATION ubuntu_1404_32/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1404_32}/cmake
        DESTINATION ubuntu_1404_32
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1404_64 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1404_64}/bin/lua5.1 ${INSTALL_UBUNTU_1404_64}/bin/wlua5.1 ${INSTALL_UBUNTU_1404_64}/bin/lua5.1.so
        DESTINATION ubuntu_1404_64/bin
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1404_64}/include/lua5.1
        DESTINATION ubuntu_1404_64/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1404_64}/cmake
        DESTINATION ubuntu_1404_64
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1604_32 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1604_32}/bin/lua5.1 ${INSTALL_UBUNTU_1604_32}/bin/wlua5.1 ${INSTALL_UBUNTU_1604_32}/bin/lua5.1.so
        DESTINATION ubuntu_1604_32/bin
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1604_32}/include/lua5.1
        DESTINATION ubuntu_1604_32/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1604_32}/cmake
        DESTINATION ubuntu_1604_32
        FILES_MATCHING PATTERN "*.cmake"
)


#-----------------------------------------------------------------------------
#
# Install the Ubuntu_1604_64 files.
#
INSTALL(FILES ${INSTALL_UBUNTU_1604_64}/bin/lua5.1 ${INSTALL_UBUNTU_1604_64}/bin/wlua5.1 ${INSTALL_UBUNTU_1604_64}/bin/lua5.1.so
        DESTINATION ubuntu_1604_64/bin
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1604_64}/include/lua5.1
        DESTINATION ubuntu_1604_64/include
        FILES_MATCHING PATTERN "*.h"
)

INSTALL(DIRECTORY ${INSTALL_UBUNTU_1604_64}/cmake
        DESTINATION ubuntu_1604_64
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
