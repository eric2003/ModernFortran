$ gcc -c sub.c
$ ar r sub.a sub.o
$ nm sub.a
----------------------------------------
$ gfortran -c main.f90
$ gfortran -o testprj main.o ../sub.a