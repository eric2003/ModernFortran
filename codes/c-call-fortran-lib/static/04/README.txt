$ gfortran -c onemod.f90
$ gfortran -c twomods.f90
$ gfortran -c sub1.f90
$ gfortran -c sub2.f90
$ ar r mods.a onemod.o twomods.o sub1.o sub2.o
-------------------------------------------------
check mods.a
-------------------------------------------------
$ nm mods.a
-------------------------------------------------
test(fortran)
$ gfortran -c main.f90 -I../
$ gfortran -o testprj main.o ../mods.a
------------------------------------------
test(c)
$ gcc -c main.c
$ gcc -o testprj main.o ../mods.a -lgfortran
