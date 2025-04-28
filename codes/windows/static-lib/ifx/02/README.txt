gfortran -c sub.f90
ar r sub.a sub.o
----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

#1. ifort -c onemod.f90
#2. lib /OUT:onemod.lib onemod.obj

#ifort main.f90 ../sub.lib

1.
ifx -c ../onemod.f90


2. Creating a static library
lib /OUT:onemod.lib onemod.obj

3.
cd ../../test/build

4.
#ifx ../main.f90 ../../lib/build/sub.lib -o testprj
#ifort main.f90 ../onemod.lib -I ../ -o testprj
#ifx ../main.f90 ../../lib/build/onemod.lib -I ../ -o testprj
ifx ../main.f90 ../../lib/build/onemod.lib -I ../../lib/build/ -o testprj



