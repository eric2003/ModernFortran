$ gfortran -fpic -c onemod.f90
$ gfortran -fpic -c twomods.f90
$ gfortran -fpic -c sub1.f90
$ gfortran -fpic -c sub2.f90
$ gfortran -shared -o mods.so onemod.o twomods.o sub1.o sub2.o
--------------------------------------------------------------
check mods.o
--------------------------------------------------------------
$ nm mods.so
--------------------------------------------------------------
test(fortran)
$ gfortran -c main.f90
$ gfortran -o testprj main.o ../mods.so
--------------------------------------------------------------
test(c)
$ gcc -c main.c
$ gcc -o testprj main.o ../mods.so

