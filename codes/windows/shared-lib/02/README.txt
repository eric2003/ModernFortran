cd d:\work\fortran_work\ModernFortran\codes\windows\shared-lib\02\
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

create dll lib
----------------------------
1. ifort -c onemod.f90
2. ifort -dll -exe:onemod.dll onemod.obj

use dll
--------------------------
1. ifort -c main.f90 -I ../ -o main.obj
2. ifort main.obj ../onemod.lib -o testprj

set path
-----------------
$env:path += ";d:\work\fortran_work\ModernFortran\codes\windows\shared-lib\02\"

run .\testprj.exe

check dll info of testprj.exe
---------------------------------------
dumpbin /imports testprj.exe