cmake_minimum_required(VERSION 3.25)
project(testprj)
set(CMAKE_C_COMPILER icx)
set(CMAKE_BUILD_TYPE Release)
add_library ( sub STATIC
    sub.c
)