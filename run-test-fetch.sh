#!/bin/bash -e

echo "Running 'fetch' test"

set -x

cmake -S . -B _builds/app -DCMAKE_FIND_PACKAGE_INCLUDE=`pwd`/hooks/fetch.cmake
cmake --build _builds/app

cd _builds/app
ctest -VV
