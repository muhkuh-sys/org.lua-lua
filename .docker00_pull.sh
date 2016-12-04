#! /bin/bash
set -e

#-----------------------------------------------------------------------------
#
# Pull all images.
# This can take a while.
#
docker pull ubuntu:12.04
docker pull ubuntu:14.04
docker pull ubuntu:16.04
docker pull ubuntu:16.10
