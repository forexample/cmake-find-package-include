cmake_minimum_required(VERSION 3.14)

option(CMAKE_VERBOSE_MAKEFILE "..." ON)

project(app)

add_executable(app main.cpp)

find_package(foo CONFIG REQUIRED)
target_link_libraries(app PRIVATE foo::foo)

find_package(bar CONFIG REQUIRED)
target_link_libraries(app PRIVATE bar::bar)

enable_testing()
add_test(NAME app COMMAND app)
