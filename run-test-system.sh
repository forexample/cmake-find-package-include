#!/bin/bash -e

echo "Running 'system' test"

set -x

cmake -S . -B _builds/app
cmake --build _builds/app

cd _builds/app
ctest -VV
