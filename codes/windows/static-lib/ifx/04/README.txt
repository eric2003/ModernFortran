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


3. Creating a static library
lib /OUT:mods.lib onemod.obj twomods.obj

4.
cd ../../test/build

5.
#ifort main.f90 ../mods.lib -I ../ -o testprj
ifx ../main.f90 ../../lib/build/mods.lib -I ../../lib/build/ -o testprj



