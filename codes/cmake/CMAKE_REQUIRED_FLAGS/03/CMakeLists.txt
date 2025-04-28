cmake_minimum_required(VERSION 3.25 FATAL_ERROR)

project(testprj LANGUAGES Fortran)

set ( varA CMAKE_Fortran_COMPILER_ID_TOOL_MATCH_REGEX )
set ( varB CMAKE_Fortran_COMPILER_ID_TOOL_MATCH_REGEX )

message( STATUS "varA=${varA}" )
message( STATUS "varB=${varB}" )

if ( ${varA} MATCHES ${varB} )
   message( STATUS "HELLO1 varA=${varA}" )
endif()

if ( ${varA} MATCHES "CMAKE_Fortran_COMPILER_ID_TOOL_MATCH_REGEX" )
   message( STATUS "HELLO2 varA=${varA}" )
endif()

if ( varA MATCHES "CMAKE_Fortran_COMPILER_ID_TOOL_MATCH_REGEX" )
   message( STATUS "HELLO3 varA=${varA}" )
endif()
