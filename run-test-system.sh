#!/bin/bash -e

set -x

cmake -S . -B _builds/app
cmake --build _builds/app

cd _builds/app
ctest -VV
