#! /bin/bash
set -e

#-----------------------------------------------------------------------------
#
# Build all artefacts.
#
rm -rf build
mkdir build
mkdir build/org.lua.lua-lua51

pushd build/org.lua.lua-lua51
cmake -DCMAKE_INSTALL_PREFIX="" ../../lua5.1/installer
make
make package
popd
