#! /bin/bash
set -e

#-----------------------------------------------------------------------------
#
# Build the windows64 version.
#
rm -rf build/windows64
mkdir -p build/windows64
pushd build/windows64
cmake -DCMAKE_INSTALL_PREFIX="" -DJONCHKI_PLATFORM_DIST_ID="windows" -DJONCHKI_PLATFORM_DIST_VERSION="" -DJONCHKI_PLATFORM_CPU_ARCH="x64_86" -DImageMagick_convert_EXECUTABLE=/usr/bin/convert -DCMAKE_C_FLAGS=-m64 -DCMAKE_CXX_FLAGS=-m64 -DCMAKE_SYSTEM_NAME=Windows -DCMAKE_C_COMPILER=x86_64-w64-mingw32-gcc -DCMAKE_CXX_COMPILER=x86_64-w64-mingw32-g++ -DCMAKE_RC_COMPILER=x86_64-w64-mingw32-windres ../..
make pack
popd
