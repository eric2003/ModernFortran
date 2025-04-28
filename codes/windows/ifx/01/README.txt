gcc -c main.c
gfortran -c sub.f90
gcc -o main main.o sub.o -lgfortran
==========================================

1.
cd build

2.
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

3.
#ifort .\main.f90

ifx ../main.f90

