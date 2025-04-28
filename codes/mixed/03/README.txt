gfortran -c fprog.f90
gcc -c -fno-leading-underscore csub.c
gfortran fprog.o csub.o -o fprog

gfortran fprog.f90 -o main
