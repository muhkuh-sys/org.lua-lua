cmake_minimum_required(VERSION 3.0)

PROJECT("lua-icon")


#----------------------------------------------------------------------------
#
# Find all packages.
#

# Image Magick is used to create the icon. This is optional as we have an icon already in the LUA source archive.
FIND_PACKAGE(ImageMagick COMPONENTS convert)

# icotool is used to bundle the images to an ico file.
FIND_PROGRAM(ICOTOOL_EXECUTABLE NAMES icotool)


#----------------------------------------------------------------------------
#
# Create the icons.
#
IF(NOT IMAGEMAGICK_CONVERT_EXECUTABLE)
	MESSAGE("The imagemagic convert tool was not found.")
ENDIF(NOT IMAGEMAGICK_CONVERT_EXECUTABLE)
IF(NOT ICOTOOL_EXECUTABLE)
	MESSAGE("The icotool was not found.")
ENDIF(NOT ICOTOOL_EXECUTABLE)

IF(IMAGEMAGICK_CONVERT_EXECUTABLE AND ICOTOOL_EXECUTABLE)
	MESSAGE("Build icons...")

	# Create the output folder. Image magick does not do this.
	FILE(MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/icon)

	# Create our own icon with a lot more reolutions than the existing icon in the source archive.
	SET(LIST_ICON_FILES "")
	FOREACH(res IN ITEMS 256 128 64 32 16)
		MESSAGE("Creating ${res}x${res} icon.")
		SET(OUTPUT_FILENAME ${CMAKE_CURRENT_BINARY_DIR}/icon/lua_${res}x${res}.png)
		EXECUTE_PROCESS(COMMAND ${IMAGEMAGICK_CONVERT_EXECUTABLE} -density 384 -background transparent ${CMAKE_CURRENT_SOURCE_DIR}/icon/lua-logo-nolabel.ps -scale ${res}x${res} ${OUTPUT_FILENAME}
		                RESULT_VARIABLE CONVERT_RESULT)
		LIST(APPEND LIST_ICON_FILES "${OUTPUT_FILENAME}")
	ENDFOREACH(res)

	# Combine all icons to one file.
	SET(LUA_ICON "${CMAKE_CURRENT_BINARY_DIR}/icon/lua.ico" CACHE INTERNAL "The icon for the LUA interpreter.")
	EXECUTE_PROCESS(COMMAND ${ICOTOOL_EXECUTABLE} --create ${LIST_ICON_FILES} --output=${LUA_ICON}
	                RESULT_VARIABLE CONVERT_RESULT)
ENDIF(IMAGEMAGICK_CONVERT_EXECUTABLE AND ICOTOOL_EXECUTABLE)
