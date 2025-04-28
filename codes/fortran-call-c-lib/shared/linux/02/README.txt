$ gcc -fpic -c sub.c
$ gcc -shared -o sub.so sub.o
$ nm sub.so

----------------------------------------
$ gfortran -c main.f90
$ gfortran -o testprj main.o ../sub.so