$ gfortran -fpic -c sub.f90
$ gfortran -shared -o sub.so sub.o
-------------------------------------------------
check sub.o
-------------------------------------------------
$ nm sub.o
-------------------------------------------------
test(fortran)
$ gfortran -c main.f90
$ gfortran -o testprj main.o ../sub.so
------------------------------------------
test(c)
$ gcc -c main.c
$ gcc -o testprj main.o ../sub.so

