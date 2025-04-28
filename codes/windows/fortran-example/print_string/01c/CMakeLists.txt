cmake_minimum_required(VERSION 4.0.1)

project(testprj LANGUAGES Fortran)

set(CMAKE_Fortran_COMPILER "ifx")

if ( MSVC )
    set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${PROJECT_NAME} )
endif()

add_executable( ${PROJECT_NAME} )

target_sources( ${PROJECT_NAME}
    PRIVATE
        main.f90
)