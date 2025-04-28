include(FortranCInterface)

FortranCInterface_VERIFY()

add_library(sub STATIC
            csub.c
            forsub.f90
)
