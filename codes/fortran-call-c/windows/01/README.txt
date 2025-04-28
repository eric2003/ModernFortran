$ gfortran -c main.f90
$ gcc -c -fno-leading-underscore csub.c
$ gfortran -o testprj main.o csub.o
-----------------------------------------------
$ ifort -c main.f90
$ icx -c csub.c
$ ifort -o testprj main.obj csub.obj
-----------------------------------------------
$ dumpbin /symbols main.obj
$ dumpbin /symbols csub.obj
$ dumpbin /exports csub.obj

$ cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

create dll lib
----------------------------
1. ifort -c onemod.f90
2. ifort -c twomods.f90
2. ifort -c sub1.f90
2. ifort -c sub2.f90
3. ifort -dll -exe:mods.dll onemod.obj twomods.obj sub1.obj sub2.obj
-----------------------------------------------------------------
check mods.lib
-----------------------------------------------------------------
$ dumpbin /symbols mods.lib
$ dumpbin /symbols mods.dll
$ dumpbin /exports mods.lib
$ dumpbin /exports mods.dll

use dll
--------------------------
test(fortran)
$ ifort -c main.f90 -I ../
$ ifort -o testprj main.obj ../mods.lib
-------------------------------------
test(c)
$ icx -c main.c
$ icx -o testprj main.obj ../mods.lib
-------------------------------------------
run testprj
---------------------------------------------
$env:path += ";d:\work\fortran_work\ModernFortran\codes\windows\c-call-fortran-lib\shared\04a\"