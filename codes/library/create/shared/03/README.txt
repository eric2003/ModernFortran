gfortran -fpic -c onemod.f90
gfortran -fpic -c twomods.f90
gfortran -shared -o mymods.so onemod.o twomods.o
