#! /bin/bash
set -e

#-----------------------------------------------------------------------------
#
# Build all artefacts.
#
rm -rf build
mkdir build
mkdir build/org.lua.lua-lua52

pushd build/org.lua.lua-lua52
cmake -DCMAKE_INSTALL_PREFIX="" ../../lua5.2/installer
make
make package
popd
