#!/bin/bash -e

echo "Running 'externalproject' test"

set -x

cmake -S . -B _builds/app -DCMAKE_PREFIX_PATH=/home/travis/__EP_root
cmake --build _builds/app

cd _builds/app
ctest -VV
