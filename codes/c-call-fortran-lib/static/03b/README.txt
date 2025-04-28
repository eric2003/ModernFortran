$ gfortran -c onemod.f90
$ gfortran -c twomods.f90
$ ar r mods.a onemod.o twomods.o
------------------------------------------
check mods.a
------------------------------------------
$ nm mods.a
------------------------------------------
test(fortran)
$ gfortran -c main.f90 -I../
$ gfortran -o testprj main.o ../mods.a
------------------------------------------
test(c)
$ gcc -c main.c
$ gcc -o testprj main.o ../mods.a -lgfortran