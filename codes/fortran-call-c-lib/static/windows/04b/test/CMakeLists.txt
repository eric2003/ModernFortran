cmake_minimum_required(VERSION 3.25)
project(testprj)

enable_language(Fortran)

set(CMAKE_C_COMPILER icx)
set(CMAKE_BUILD_TYPE Release)

message( STATUS "CMAKE_SOURCE_DIR= ${CMAKE_SOURCE_DIR}")

if ( ${CMAKE_SYSTEM_NAME} MATCHES "Windows" )
    set ( MYLIB_DIR ${CMAKE_SOURCE_DIR}/../build/debug/ )
    set ( MYLIB_LIBRARIES "${MYLIB_DIR}/sub.lib"  )
endif()

list ( APPEND PRJ_LIBRARIES ${MYLIB_LIBRARIES} )

add_executable ( ${PROJECT_NAME}
    main.f90
)

target_link_libraries( ${PROJECT_NAME} 
    PRIVATE 
        ${PRJ_LIBRARIES}
)