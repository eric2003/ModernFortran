cmake_minimum_required(VERSION 3.25)

project(testc)

set ( PRJ_LIBRARIES )

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)
set(CMAKE_Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/modules)

set(CMAKE_C_COMPILER icx)
set(CMAKE_BUILD_TYPE Release)

link_directories(d:/work/fortran_work/ModernFortran/codes/library/intel-fortran/static/02/lib/)
#link_directories(c:/Program Files (x86)/Intel/oneAPI/compiler/latest/windows/compiler/lib/intel64_win/)
link_directories("c:/Program Files %28x86%29/Intel/oneAPI/compiler/latest/windows/compiler/lib/intel64_win/")
set ( SUB_LIBRARIES "sub.lib" )

message ( STATUS "MSVC=${MSVC}" )
if ( MSVC )
    set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${PROJECT_NAME} )
endif()

list ( APPEND PRJ_LIBRARIES ${SUB_LIBRARIES} )

add_executable ( ${PROJECT_NAME}
    main.c
)

target_link_libraries( ${PROJECT_NAME} 
    PRIVATE 
        ${PRJ_LIBRARIES}
)