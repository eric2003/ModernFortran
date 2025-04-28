gfortran -c onemod.f90
gfortran -c twomods.f90
gfortran -c sub1.f90
gfortran -c sub2.f90
ar r mods.a onemod.o twomods.o sub1.o sub2.o
----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1. ifort -c onemod.f90
2. ifort -c twomods.f90
3. ifort -c sub1.f90
4. ifort -c sub2.f90
5. lib /OUT:mods.lib onemod.obj twomods.obj sub1.obj sub2.obj


ifort main.f90 ../mods.lib -I ../ -o testprj
