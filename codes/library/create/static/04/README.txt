gfortran -c onemod.f90
gfortran -c twomods.f90
gfortran -c sub1.f90
gfortran -c sub2.f90
ar r mods.a onemod.o twomods.o sub1.o sub2.o
