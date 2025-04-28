cd d:\work\fortran_work\ModernFortran\codes\windows\shared-lib\06\
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

create dll lib
----------------------------
1. ifort -c onemod.f90
2. ifort -c twomods.f90
2. ifort -c sub1.f90
2. ifort -c sub2.f90
3. ifort -dll -exe:mods.dll onemod.obj twomods.obj sub1.obj sub2.obj

use dll
--------------------------
1. ifort -c main.f90 -I ../ -o main.obj
2. ifort main.obj ../mods.lib -o testprj

set path
-----------------
$env:path += ";d:\work\fortran_work\ModernFortran\codes\windows\shared-lib\06\"

run .\testprj.exe

check dll info of testprj.exe
---------------------------------------
dumpbin /imports testprj.exe