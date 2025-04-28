cmake_minimum_required(VERSION 3.25)

project( testprj )
enable_language( Fortran )

set ( CMAKE_C_COMPILER icx )
set ( CMAKE_BUILD_TYPE Release )

message( STATUS "CMAKE_SOURCE_DIR= ${CMAKE_SOURCE_DIR}")

add_executable ( ${PROJECT_NAME}
    main.f90
    twomods.f90
    onemod.f90
)
