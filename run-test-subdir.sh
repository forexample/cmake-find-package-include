#!/bin/bash -e

echo "Running 'subdir' test"

set -x

cmake -S . -B _builds/app -DCMAKE_FIND_PACKAGE_INCLUDE=`pwd`/hooks/subdir.cmake
cmake --build _builds/app

cd _builds/app
ctest -VV
