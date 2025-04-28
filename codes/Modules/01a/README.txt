cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1. ifort -c sub.f90
2. gfortran main.o -o main
./main

1. gfortran -c main.f90
2. gfortran main.o -o main
./main