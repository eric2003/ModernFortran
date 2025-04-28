cmake_minimum_required(VERSION 4.0.1)

project(testprj LANGUAGES Fortran)

set(CMAKE_Fortran_COMPILER "ifx")

add_executable( ${PROJECT_NAME} )

target_sources( ${PROJECT_NAME}
    PRIVATE
        main.f90
)