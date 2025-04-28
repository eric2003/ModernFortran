gfortran -c fprog.f90
gcc -c csub.c
gfortran fprog.o csub.o -o fprog
--------------------------------------
1. ifort -c fprog.f90
2. icx-cc -c csub.c -o csub.obj
3. ifort fprog.obj csub.obj -o fprog.exe


1. icx-cc -c main.c
2. icx-cc main.o -o main.exe
