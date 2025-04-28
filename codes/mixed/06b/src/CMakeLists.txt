add_subdirectory(interfaces)

add_executable(bt-randomgen-example 
               bt-randomgen-example.f90
               interface_randomgen.f90
               )

target_link_libraries(bt-randomgen-example
  PRIVATE
    bt-randomgen-wrap
  )
