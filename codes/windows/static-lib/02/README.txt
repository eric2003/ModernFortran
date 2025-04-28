gfortran -c onemod.f90
ar r onemod.a onemod.o
----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1. ifort -c onemod.f90
2. lib /OUT:onemod.lib onemod.obj

gfortran -c tabulate.f90 -I ../sub

ifort main.f90 ../onemod.lib -I ../

ifort main.f90 ../onemod.lib -I ../ -o testprj

ifort -c main.f90 ../onemod.lib -I ../  -o main

ifort -c main.f90 ../onemod.lib -o main -I ../
ifort -c main.obj

ifort main.obj -o main

ifort main.obj ../onemod.lib -o main
ifort -module ../ main.f90
ifort -module ../ main.f90 ../onemod.lib
ifort main.f90 ../sub.lib

ifort -module moduledir -o myprogram main.f90
ifort -module ../ -o myprogram main.f90