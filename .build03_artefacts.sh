#! /bin/bash
set -e

#-----------------------------------------------------------------------------
#
# Build all artefacts.
#
rm -rf build
mkdir build
mkdir build/org.lua.lua-lua51
mkdir build/org.lua.lua-lua52
mkdir build/org.lua.lua-lua53

pushd build/org.lua.lua-lua51
cmake -DCMAKE_INSTALL_PREFIX="" ../../lua5.1/installer
make
make package
popd

pushd build/org.lua.lua-lua52
cmake -DCMAKE_INSTALL_PREFIX="" ../../lua5.2/installer
make
make package
popd

pushd build/org.lua.lua-lua53
cmake -DCMAKE_INSTALL_PREFIX="" ../../lua5.3/installer
make
make package
popd
