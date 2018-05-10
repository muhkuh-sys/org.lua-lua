#! /bin/bash
set -e

#-----------------------------------------------------------------------------
#
# Build the linux version.
#
rm -rf build/linux
mkdir -p build/linux
pushd build/linux
cmake -DCMAKE_INSTALL_PREFIX="" ../..
make && make package
popd
