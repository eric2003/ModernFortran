gcc -c main.c
gfortran -c sub.f90
gcc -o main main.o sub.o -lgfortran
