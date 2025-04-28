$ gfortran -c onemod.f90
$ ar r onemod.a onemod.o
------------------------------------------
check onemod.a
------------------------------------------
$ nm onemod.a
------------------------------------------
test(fortran)
$ gfortran -c main.f90 -I../
$ gfortran -o testprj main.o ../onemod.a -lgfortran
------------------------------------------
test(c)
$ gcc -c main.c
$ gcc -o testprj main.o ../onemod.a
$ gcc -o testprj main.o ../onemod.a -lgfortran
