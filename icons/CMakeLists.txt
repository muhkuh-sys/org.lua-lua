cmake_minimum_required(VERSION 3.0)

PROJECT("lua-icon")


#----------------------------------------------------------------------------
#
# Find all packages.
#

# Python (and PIL) is used to convert the PS to an icon.
FIND_PACKAGE(PythonInterp 2.7 REQUIRED)


#----------------------------------------------------------------------------
#
# Create the icons.
#
MESSAGE("Build icons...")

# Create the output folder. Image magick does not do this.
FILE(MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/icon)

SET(LUA_ICON "${CMAKE_CURRENT_BINARY_DIR}/icon/lua.ico" CACHE INTERNAL "The icon for the LUA interpreter.")

# Convert the PS file to an icon.
EXECUTE_PROCESS(COMMAND "${PYTHON_EXECUTABLE}" ps2ico.py lua-logo-nolabel.ps ${LUA_ICON}
                WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/icon)
