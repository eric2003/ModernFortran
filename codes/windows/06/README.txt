cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1、ifort -c main.f90
2、ifort -c sub1.f90
3、ifort -c sub2.f90
4、ifort main.obj sub1.obj sub2.obj -o main

gfortran -c mymod1.f90
gfortran -c mymod2.f90
gfortran -c main.f90

gfortran main.o mymod1.o mymod2.o -o main