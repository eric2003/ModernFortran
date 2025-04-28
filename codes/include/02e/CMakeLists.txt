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

set( MPI_INCLUDE_DIR "C:/Program Files (x86)/Microsoft SDKs/MPI/Include" )

list ( APPEND PRJ_INCLUDE_DIRS "${MPI_INCLUDE_DIR}" )
list ( APPEND PRJ_INCLUDE_DIRS "${MPI_INCLUDE_DIR}/${ARCH}" )

message( STATUS "PRJ_INCLUDE_DIRS=${PRJ_INCLUDE_DIRS}" )

set( MPI_LIB_DIR "C:/Program Files (x86)/Microsoft SDKs/MPI/Lib/${ARCH}" )
set( MPI_LIBRARIES )
list ( APPEND MPI_LIBRARIES "${MPI_LIB_DIR}/msmpifec.lib" )
list ( APPEND MPI_LIBRARIES "${MPI_LIB_DIR}/msmpifmc.lib" )

message( STATUS "MPI_LIBRARIES=${MPI_LIBRARIES}" )

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
