cmake_minimum_required(VERSION 3.25)

project(testc)

set ( PRJ_LIBRARIES )
set ( PRJ_LINK_DIRS )

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)
set(CMAKE_Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/modules)

set(CMAKE_BUILD_TYPE Release)

set ( MYLIB_LINK_DIR "d:/work/fortran_work/ModernFortran/codes/library/intel-fortran/static/02/lib/" )
set ( SUB_LIBRARIES "sub.lib" )

list ( APPEND PRJ_LIBRARIES ${SUB_LIBRARIES} )
list ( APPEND PRJ_LINK_DIRS ${MYLIB_LINK_DIR} )

enable_language(Fortran)

list ( APPEND PRJ_LINK_DIRS ${CMAKE_Fortran_IMPLICIT_LINK_DIRECTORIES} )

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

include(CMakePrintHelpers)
cmake_print_properties(
  TARGETS ${PROJECT_NAME}
  PROPERTIES LINK_LIBRARIES
)

cmake_print_properties(
  TARGETS ${PROJECT_NAME}
  PROPERTIES LINK_DIRECTORIES
)








