gfortran -c fprog.f90
#gcc -c -fno-leading-underscore csub.c
gcc -c csub.c
gfortran fprog.o csub.o -o fprog