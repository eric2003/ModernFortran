cmake_minimum_required(VERSION 4.0.1)

project(testprj LANGUAGES C Fortran)

set(CMAKE_C_COMPILER "icx")
set(CMAKE_Fortran_COMPILER "ifx")

# 调试输出编译器信息
message("C Compiler: ${CMAKE_C_COMPILER}")
message("C Compiler ID: ${CMAKE_C_COMPILER_ID}")

message("CMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}")

message("Fortran Compiler: ${CMAKE_Fortran_COMPILER}")
message("Fortran Compiler ID: ${CMAKE_Fortran_COMPILER_ID}")

if ( MSVC )
    set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${PROJECT_NAME} )
endif()

add_library( myshared SHARED )

target_sources( myshared
    PRIVATE
        lib/sub.c
)

target_compile_definitions( myshared 
	PRIVATE 
		MYLIB_EXPORTS
)

set_target_properties( myshared 
	PROPERTIES 
		OUTPUT_NAME "myshared" 
)

add_executable( ${PROJECT_NAME} )

target_sources( ${PROJECT_NAME}
    PRIVATE
        test/main.f90
)

target_link_libraries( ${PROJECT_NAME}
	PRIVATE 
		myshared
)

set_target_properties( ${PROJECT_NAME}  
	PROPERTIES 
		Fortran_MODULE_DIRECTORY "${CMAKE_BINARY_DIR}/modules"
)