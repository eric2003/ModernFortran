$ gfortran -c main.f90
$ gcc -c -fno-leading-underscore csub.c
$ gfortran -o testprj main.o csub.o
------------------------------------------
$ gfortran -c main.f90
$ gcc -c csub.c
$ gfortran -o testprj main.o csub.o
--------------------------------------
nm csub.o
nm main.o
