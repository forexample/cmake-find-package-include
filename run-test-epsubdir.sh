#!/bin/bash -e

echo "Running 'epsubdir' test"

set -x

cmake -S . -B _builds/app -DCMAKE_PREFIX_PATH=/home/travis/__EP_root -DCMAKE_FIND_PACKAGE_INCLUDE=`pwd`/hooks/epsubdir.cmake
cmake --build _builds/app

cd _builds/app
ctest -VV
