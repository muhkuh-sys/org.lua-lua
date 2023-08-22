CMAKE_MINIMUM_REQUIRED(VERSION 3.0)

PROJECT("org.lua-lua5.4"
        VERSION "5.4.6.3")

INCLUDE(cmake/version.cmake)
INCLUDE(cmake/platform.cmake)
MESSAGE("Building for: ${JONCHKI_PLATFORM}")

#----------------------------------------------------------------------------

ADD_SUBDIRECTORY(lua5.4)

#----------------------------------------------------------------------------
