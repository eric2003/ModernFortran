$ gfortran -c sub.f90
$ ar r sub.a sub.o
-------------------------
check sub.a
-------------------------
$ nm sub.a
-------------------------
test(fortran)
$ gfortran -c main.f90
$ gfortran -o testprj main.o ../sub.a
------------------------------------------
test(c)
$ gcc -c main.c
$ gcc -o testprj main.o ../sub.a -lgfortran