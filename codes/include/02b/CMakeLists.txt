cmake_minimum_required(VERSION 4.0.1)

project ( testprj )

set ( PRJ_COMPILE_FEATURES )
set ( PRJ_COMPILE_DEFINITIONS )
set ( PRJ_INCLUDE_DIRS )
set ( PRJ_LIBRARIES )

enable_language(Fortran)

set( BIT64_FLAG TRUE )
if ( BIT64_FLAG )
    set ( ARCH "x64" )
else()
    set ( ARCH "x86" )
endif()

message( STATUS "ARCH=${ARCH}" )

list ( APPEND PRJ_INCLUDE_DIRS "c:/Program Files (x86)/Microsoft SDKs/MPI/Include" )
#list ( APPEND PRJ_INCLUDE_DIRS "c:/Program Files (x86)/Microsoft SDKs/MPI/Include/x64" )
list ( APPEND PRJ_INCLUDE_DIRS "c:/Program Files (x86)/Microsoft SDKs/MPI/Include/${ARCH}" )

message( STATUS "PRJ_INCLUDE_DIRS=${PRJ_INCLUDE_DIRS}" )

list ( APPEND PRJ_COMPILE_FEATURES cxx_std_20 )

if ( MSVC )
    set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${PROJECT_NAME} )
endif()

add_executable( ${PROJECT_NAME}
    main.f90
)

target_include_directories ( ${PROJECT_NAME}
	PRIVATE
		${PRJ_INCLUDE_DIRS}
)

target_compile_features ( ${PROJECT_NAME} 
	PRIVATE 
		${PRJ_COMPILE_FEATURES}
)

target_compile_definitions ( ${PROJECT_NAME}
	PRIVATE
	   ${PRJ_COMPILE_DEFINITIONS} 
)

target_link_libraries ( ${PROJECT_NAME}
	PRIVATE
	   ${PRJ_LIBRARIES} 
)
