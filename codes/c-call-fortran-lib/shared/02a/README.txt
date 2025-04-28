$ gfortran -fpic -c onemod.f90
$ gfortran -shared -o onemod.so onemod.o
-------------------------------------------------
check onemod.o
-------------------------------------------------
$ nm onemod.so
-------------------------------------------------
test(fortran)
$ gfortran -c main.f90
$ gfortran -o testprj main.o ../onemod.so
------------------------------------------
test(c)
$ gcc -c main.c
$ gcc -o testprj main.o ../onemod.so


