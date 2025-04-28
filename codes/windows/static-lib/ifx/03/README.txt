gfortran -c sub.f90
ar r sub.a sub.o
----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

#1. ifort -c onemod.f90
#2. ifort -c twomods.f90
#3. lib /OUT:mods.lib onemod.obj twomods.obj
#4. ifort main.f90 ../mods.lib -I ../ -o testprj


1.
ifx -c ../onemod.f90

2.
ifx -c ../twomods.f90

3.
ifx -c ../sub1.f90

4.
ifx -c ../sub2.f90

6. Creating a static library
lib /OUT:mystatic.lib onemod.obj twomods.obj sub1.obj sub2.obj

7.
cd ../../test/build

8.
ifx ../main.f90 ../../lib/build/mystatic.lib -I ../../lib/build/ -o testprj



