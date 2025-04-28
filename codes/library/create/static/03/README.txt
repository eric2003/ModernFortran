gfortran -c onemod.f90
gfortran -c twomods.f90
ar r mods.a onemod.o twomods.o
