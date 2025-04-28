gcc -c main.c
gfortran -c sub.f90
gcc -o main main.o sub.o -lgfortran
==========================================

1.
cd build

2.
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

3.
# ifort -c mymod1.f90

ifx -c ../mymod1.f90

4.
#ifort -c mymod2.f90

ifx -c ../mymod2.f90


5.
#ifort -c sub1.f90

ifx -c ../sub1.f90

6.
#ifort -c sub2.f90

ifx -c ../sub2.f90

7.
#ifort -c main.f90

ifx -c ../main.f90

8.
#ifort main.obj sub1.obj sub2.obj mymod1.obj mymod2.obj -o main

ifx ./main.obj ./sub1.obj ./sub2.obj ./mymod1.obj ./mymod2.obj -o testprj








