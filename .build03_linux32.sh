#! /bin/bash
set -e

#-----------------------------------------------------------------------------
#
# Build the 32bit version.
#
rm -rf build32
mkdir build32
pushd build32
cmake -DCMAKE_C_FLAGS=-m32 -DCMAKE_CXX_FLAGS=-m32 ..
make
popd
