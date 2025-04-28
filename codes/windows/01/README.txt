gcc -c main.c
gfortran -c sub.f90
gcc -o main main.o sub.o -lgfortran
==========================================

cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

ifort .\main.f90