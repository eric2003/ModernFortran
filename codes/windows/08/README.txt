cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1. ifort -c twomods.f90
2. ifort -c onemod.f90
3. ifort -c main.f90
4. ifort main.obj twomods.obj onemod.obj -o testprj

1. ifort -c twomods.f90
2. ifort -c onemod.f90
3. ifort -c main.f90
4. ifort main.o twomods.o onemod.o -o testprj
------------------------------------
1. ifort -c onemod.f90
2. ifort -c twomods.f90
3. ifort -c main.f90
4. ifort main.obj onemod.obj twomods.obj -o testprj

