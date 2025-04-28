gfortran -fpic -c onemod.f90
gfortran -shared -o onemod.so onemod.o
---------------------------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1. ifort -c onemod.f90
2. ifort -dll -exe:onemod.dll onemod.obj

ifort -c main.f90 -I ../ -o main.obj
ifort main.obj ../onemod.dll -o testprj
ifort main.obj -I ../ -o testprj

ifort main.f90 ../onemod.lib -I ../ -o testprj