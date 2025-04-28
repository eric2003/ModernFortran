gfortran -fpic -c sub.f90
gfortran -shared -o sub.so sub.o
----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

-----------------------------------------------------
generate dll
1. ifort -c sub.f90
2. ifort -dll -exe:sub.dll sub.obj

use dll
1. ifort -c main.f90 -o main.obj
2. ifort main.obj ../sub.lib -o testprj

check testprj.exe
dumpbin /imports testprj.exe


