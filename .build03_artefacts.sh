#! /bin/bash
set -e

#-----------------------------------------------------------------------------
#
# Build all artefacts.
#
rm -rf build
mkdir build
mkdir build/org.lua-lua51
mkdir build/org.lua-lua52
mkdir build/org.lua-lua53

pushd build/org.lua-lua51
cmake -DCMAKE_INSTALL_PREFIX="" ../../installer/lua5.1
make
make package
popd

pushd build/org.lua-lua52
cmake -DCMAKE_INSTALL_PREFIX="" ../../installer/lua5.2
make
make package
popd

pushd build/org.lua-lua53
cmake -DCMAKE_INSTALL_PREFIX="" ../../installer/lua5.3
make
make package
popd
