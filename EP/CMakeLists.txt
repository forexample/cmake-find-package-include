cmake_minimum_required(VERSION 3.14)
project(super-build)

include(ExternalProject)

ExternalProject_Add(
    foo
    URL https://github.com/forexample/foo/archive/v1.0.0.tar.gz
    URL_HASH SHA1=86081bf14e3e7f5d27248ef9d3c53cd3f140552e
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
)

ExternalProject_Add(
    bar
    URL https://github.com/forexample/bar/archive/v1.0.0.tar.gz
    URL_HASH SHA1=cb0223f9478a886f497ee4f4dc4a89cd95648fcd
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
)
