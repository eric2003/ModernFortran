gfortran -c onemod.f90
gfortran -c twomods.f90
ar r mods.a onemod.o twomods.o
----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1. ifort -c onemod.f90
1. ifort -c twomods.f90
2. lib /OUT:mods.lib onemod.obj twomods.obj


ifort main.f90 ../mods.lib -I ../ -o testprj
