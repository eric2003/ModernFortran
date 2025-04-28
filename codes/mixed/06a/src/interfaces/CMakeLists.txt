include(FortranCInterface)
FortranCInterface_VERIFY()


#add_library(bt-randomgen-wrap SHARED "")
add_library(bt-randomgen-wrap STATIC "")

target_sources(bt-randomgen-wrap
  PRIVATE
    interface_randomgen.f90
    randomgen.c
  )

target_link_libraries(bt-randomgen-wrap
  PUBLIC
    ${Backtrace_LIBRARIES}
  )
