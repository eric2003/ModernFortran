gfortran -c sub.f90
ar r sub.a sub.o
----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1.
ifx -c ../sub.f90

#2. Creating a static library
#lib /OUT:sub.lib sub.obj

2. Creating a shared library
ifx -dll -exe:sub.dll sub.obj

3.
cd ../../test/build

4.
ifx ../main.f90 ../../lib/build/sub.lib -o testprj

5. 
$env:path += ";d:\work\fortran_work\ModernFortran\codes\windows\shared-lib\ifx\01\lib\build\"

7.  
dumpbin /imports ./testprj.exe


