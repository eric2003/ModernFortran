$ cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

$ ifort -c onemod.f90
$ ifort -c twomods.f90
$ ifort -dll -exe:mods.dll onemod.obj twomods.obj
-----------------------------------------------------------------
check mods.lib
-----------------------------------------------------------------
$ dumpbin /symbols mods.lib
$ dumpbin /symbols mods.dll
$ dumpbin /exports mods.lib
$ dumpbin /exports mods.dll

-----------------------------------------------------------------
test(fortran)
$ ifort -c main.f90
$ ifort -o testprj main.obj ../mods.lib
-------------------------------------
test(c)
$ icx -c main.c
$ icx -o testprj main.obj ../mods.lib
-------------------------------------------
run testprj
---------------------------------------------
$env:path += ";d:\work\fortran_work\ModernFortran\codes\windows\c-call-fortran-lib\shared\03a\"
$ .\testprj.exe





