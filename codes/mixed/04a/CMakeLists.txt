cmake_minimum_required(VERSION 3.25)

project( testprj C CXX Fortran )

set ( CMAKE_C_COMPILER icx )
set ( CMAKE_BUILD_TYPE Release )

include(FortranCInterface)

# if you are working with C and Fortran
FortranCInterface_VERIFY()

# if you are working with C++ and Fortran
FortranCInterface_VERIFY(CXX)

message ( STATUS "CMAKE_SOURCE_DIR= ${CMAKE_SOURCE_DIR}")
message ( STATUS "Fortran_MODULE_DIRECTORY=${Fortran_MODULE_DIRECTORY}" )
message ( STATUS "CMAKE_Fortran_COMPILER_ID=${CMAKE_Fortran_COMPILER_ID}" )
message ( STATUS "CMAKE_Fortran_COMPILER_VERSION=${CMAKE_Fortran_COMPILER_VERSION}" )

add_executable ( ${PROJECT_NAME}
    main.f90
    csub.c
)
