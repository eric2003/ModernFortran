gfortran -c sub.f90
ar r sub.a sub.o
----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

#1. ifort -c sub.f90
#2. lib /OUT:sub.lib sub.obj

#lib /OUT:sub.lib sub.obj

#ifort main.f90 ../sub.lib

1.
ifx -c ../sub.f90


2. Creating a static library
lib /OUT:sub.lib sub.obj

3.
cd ../../test/build

4.
ifx ../main.f90 ../../lib/build/sub.lib -o testprj



