gfortran -fpic -c onemod.f90
gfortran -fpic -c twomods.f90
gfortran -fpic -c sub1.f90
gfortran -fpic -c sub2.f90
gfortran -shared -o mymods.so onemod.o twomods.o sub1.o sub2.o
