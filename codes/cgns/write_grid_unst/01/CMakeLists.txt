cmake_minimum_required(VERSION 3.20)

project ( testprj )

set ( PRJ_COMPILE_FEATURES )
set ( PRJ_COMPILE_DEFINITIONS )

enable_language(Fortran)

if ( ${CMAKE_SYSTEM_NAME} MATCHES "Windows" )
    set ( CGNS_INCLUDE_DIRS "C:/cgns/include" CACHE PATH "path to CGNS headers" )
    set ( CGNS_LIBRARIES "C:/cgns/lib/cgns.lib" CACHE PATH "path to CGNS library" )
endif()

message(STATUS "The CGNS_INCLUDE_DIRS is ${CGNS_INCLUDE_DIRS}")

list ( APPEND PRJ_LIBRARIES ${CGNS_LIBRARIES} )
list ( APPEND PRJ_INCLUDE_DIRS ${CGNS_INCLUDE_DIRS} )

add_executable( ${PROJECT_NAME}
    main.f90
)

target_include_directories ( ${PROJECT_NAME}
    PRIVATE 
        ${PRJ_INCLUDE_DIRS}
)

target_compile_definitions ( ${PROJECT_NAME}
    PRIVATE
       ${PRJ_COMPILE_DEFINITIONS} 
)

target_link_libraries ( ${PROJECT_NAME} 
    PRIVATE 
        ${PRJ_LIBRARIES}
)