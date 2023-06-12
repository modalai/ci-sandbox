#!/bin/bash
set -e
rm -rf voxl-px4
git clone https://gitlab.com/voxl-public/voxl-sdk/services/voxl-px4.git

cd voxl-px4
ls
git submodule update --init --recursive

#./clean.sh
#./build.sh

echo "Hello Docker"
