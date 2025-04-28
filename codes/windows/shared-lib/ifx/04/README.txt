gfortran -c sub.f90
ar r sub.a sub.o
----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1.
ifx -c ../onemod.f90

2.
ifx -c ../twomods.f90

3. Creating a shared library
ifx -dll -exe:mods.dll onemod.obj twomods.obj

4.
cd ../../test/build

5.
ifx ../main.f90 ../../lib/build/mods.lib -I ../../lib/build/ -o testprj

6. 
$env:path += ";d:\work\fortran_work\ModernFortran\codes\windows\shared-lib\ifx\04\lib\build\"



