cmake_minimum_required(VERSION 3.31)

project ( testprj )

set ( PRJ_COMPILE_FEATURES )
set ( PRJ_COMPILE_DEFINITIONS )
set ( PRJ_INCLUDE_DIRS )
set ( PRJ_LIBRARIES )

enable_language(Fortran)

find_package(MPI REQUIRED)

message ( STATUS  "MPI_FOUND=${MPI_FOUND}" )

if ( MPI_FOUND )
	list ( APPEND PRJ_LIBRARIES MPI::MPI_Fortran )
endif ()

list ( APPEND PRJ_LIBRARIES MPI::MPI_Fortran )

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
