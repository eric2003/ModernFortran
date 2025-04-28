cmake_minimum_required(VERSION 3.25)

project(testc)

set ( PRJ_LIBRARIES )
set ( PRJ_LINK_DIRS )

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)
set(CMAKE_Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/modules)

set(CMAKE_C_COMPILER icx)
set(CMAKE_BUILD_TYPE Release)

set ( MYLIB_LINK_DIR "d:/work/fortran_work/ModernFortran/codes/library/intel-fortran/static/02/lib/" )
set ( FORLIB_LINK_DIR "c:/Program Files (x86)/Intel/oneAPI/compiler/latest/windows/compiler/lib/intel64_win/" )

set ( SUB_LIBRARIES "sub.lib" )

list ( APPEND PRJ_LIBRARIES ${SUB_LIBRARIES} )
list ( APPEND PRJ_LINK_DIRS ${FORLIB_LINK_DIR} )
list ( APPEND PRJ_LINK_DIRS ${MYLIB_LINK_DIR} )


message ( STATUS "FORLIB_LINK_DIR=${FORLIB_LINK_DIR}" )
message ( STATUS "CMAKE_Fortran_IMPLICIT_LINK_DIRECTORIES=${CMAKE_Fortran_IMPLICIT_LINK_DIRECTORIES}" )

message ( STATUS "MSVC=${MSVC}" )
if ( MSVC )
    set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${PROJECT_NAME} )
endif()


add_executable ( ${PROJECT_NAME}
    main.c
)

target_link_libraries( ${PROJECT_NAME} 
    PRIVATE 
        ${PRJ_LIBRARIES}
)

target_link_directories( ${PROJECT_NAME} 
    PRIVATE
        ${PRJ_LINK_DIRS}
)