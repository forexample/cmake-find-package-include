#!/bin/bash -e

echo "Running 'hunter' test"

set -x

cmake -S . -B _builds/app -DCMAKE_PROJECT_INCLUDE_BEFORE=`pwd`/hooks/hunter-init.cmake
cmake --build _builds/app

cd _builds/app
ctest -VV
