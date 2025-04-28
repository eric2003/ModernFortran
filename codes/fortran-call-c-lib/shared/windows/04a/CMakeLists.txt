cmake_minimum_required(VERSION 3.25)

project(testprj)

set(CMAKE_C_COMPILER icx)
set(CMAKE_BUILD_TYPE Release)

add_library ( sub STATIC
    sub.c
)

message ( STATUS "MSVC=${MSVC}" )
if ( MSVC )
    set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${PROJECT_NAME} )
endif()