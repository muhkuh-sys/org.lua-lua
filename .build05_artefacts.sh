#! /bin/bash
set -e

#-----------------------------------------------------------------------------
#
# Build all artefacts.
#
pushd build
rm -rf org.lua.lua-lua51
rm -rf windows_32
rm -rf windows_64
rm -rf ubuntu_1204_32
rm -rf ubuntu_1204_64
rm -rf ubuntu_1404_32
rm -rf ubuntu_1404_64
rm -rf ubuntu_1604_32
rm -rf ubuntu_1604_64

mkdir org.lua.lua-lua51
mkdir windows_32
mkdir windows_64
mkdir ubuntu_1204_32
mkdir ubuntu_1204_64
mkdir ubuntu_1404_32
mkdir ubuntu_1404_64
mkdir ubuntu_1604_32
mkdir ubuntu_1604_64

tar --extract --directory windows_32 --file build_windows_32.tar.gz --gzip
tar --extract --directory windows_64 --file build_windows_64.tar.gz --gzip
tar --extract --directory ubuntu_1204_32 --file build_ubuntu_1204_32.tar.gz --gzip
tar --extract --directory ubuntu_1204_64 --file build_ubuntu_1204_64.tar.gz --gzip
tar --extract --directory ubuntu_1404_32 --file build_ubuntu_1404_32.tar.gz --gzip
tar --extract --directory ubuntu_1404_64 --file build_ubuntu_1404_64.tar.gz --gzip
tar --extract --directory ubuntu_1604_32 --file build_ubuntu_1604_32.tar.gz --gzip
tar --extract --directory ubuntu_1604_64 --file build_ubuntu_1604_64.tar.gz --gzip
popd

pushd build/org.lua.lua-lua51
cmake -DCMAKE_INSTALL_PREFIX="" ../../lua5.1/installer
make
make package
popd
