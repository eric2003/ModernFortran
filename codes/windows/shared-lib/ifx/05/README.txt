gfortran -c sub.f90
ar r sub.a sub.o
----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1.
ifx -c ../onemod.f90

2.
ifx -c ../twomods.f90

3.
ifx -c ../sub1.f90

4.
ifx -c ../sub2.f90

5. Creating a shared library
ifx -dll -exe:shared.dll onemod.obj twomods.obj sub1.obj sub2.obj

6.
cd ../../test/build

7.
ifx ../main.f90 ../../lib/build/shared.lib -I ../../lib/build/ -o testprj

8. 
9、$env:path += ";d:\work\fortran_work\ModernFortran\codes\windows\shared-lib\ifx\05\lib\build\"



