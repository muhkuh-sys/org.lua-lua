#! /bin/bash
set -e

#-----------------------------------------------------------------------------
#
# Build the 64bit version.
#
rm -rf build64
mkdir build64
pushd build64
cmake -DCMAKE_C_FLAGS=-m64 -DCMAKE_CXX_FLAGS=-m64 ..
make
popd
