cmake_minimum_required(VERSION 3.20)

project ( testprj )

set ( PRJ_COMPILE_FEATURES )
set ( PRJ_COMPILE_DEFINITIONS )

enable_language(Fortran)

if ( ${CMAKE_SYSTEM_NAME} MATCHES "Windows" )
    set ( CGNS_INCLUDE_DIRS "C:/dev/cgns/include" CACHE PATH "path to CGNS headers" )
    set ( CGNS_LIBRARIES "C:/dev/cgns/lib/cgns.lib" CACHE PATH "path to CGNS library" )
    set ( MYLIB_HDF5 "c:/dev/HDF_Group/HDF5/1.13.2/lib/libhdf5.lib" )
    set ( MYLIB_AEC "c:/dev/HDF_Group/HDF5/1.13.2/lib/libaec.lib" )
    set ( MYLIB_SZAEC "c:/dev/HDF_Group/HDF5/1.13.2/lib/libszaec.lib" )
    set ( MYLIB_Z "c:/dev/HDF_Group/HDF5/1.13.2/lib/libz.lib" )
endif()

message(STATUS "The CGNS_INCLUDE_DIRS is ${CGNS_INCLUDE_DIRS}")

list ( APPEND PRJ_INCLUDE_DIRS ${CGNS_INCLUDE_DIRS} )
list ( APPEND PRJ_LIBRARIES ${CGNS_LIBRARIES} )
list ( APPEND PRJ_LIBRARIES ${MYLIB_HDF5} )
list ( APPEND PRJ_LIBRARIES ${MYLIB_Z} )
list ( APPEND PRJ_LIBRARIES ${MYLIB_SZAEC} )
list ( APPEND PRJ_LIBRARIES ${MYLIB_AEC} )

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