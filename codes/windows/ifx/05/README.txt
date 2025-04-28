gcc -c main.c
gfortran -c sub.f90
gcc -o main main.o sub.o -lgfortran
==========================================

1.
cd build

2.
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

#3.
##ifort -c twomods.f90
#
#ifx -c ../twomods.f90

3.
#ifort -c onemod.f90

ifx -c ../onemod.f90

4.
#ifort -c twomods.f90

ifx -c ../twomods.f90


5.
#ifort -c main.f90

ifx -c ../main.f90

6.
#ifort main.obj twomods.obj onemod.obj -o testprj
#ifort main.obj onemod.obj twomods.obj -o testprj

ifx ./main.obj ./twomods.obj ./onemod.obj -o testprj






