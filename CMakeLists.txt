CMAKE_MINIMUM_REQUIRED(VERSION 3.0)

PROJECT("org.lua-lua5.4"
        VERSION "5.4.0.5")

INCLUDE(cmake/version.cmake)
INCLUDE(cmake/platform.cmake)
MESSAGE("Building for: ${JONCHKI_PLATFORM}")

#----------------------------------------------------------------------------
#
# Include the projects in the subdirectories.
# NOTE: build the external components first. Many parts depend on them.
#

ADD_SUBDIRECTORY(icons)
ADD_SUBDIRECTORY(lua5.4)

#----------------------------------------------------------------------------
