$ gfortran -c main.f90
$ gcc -c -fno-leading-underscore csub.c
$ gfortran -o testprj main.o csub.o