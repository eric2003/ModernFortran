$ cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

$ ifort -c sub.f90
$ ifort -dll -exe:sub.dll sub.obj
-----------------------------------------------------------------
check sub.lib
-----------------------------------------------------------------
$ dumpbin /symbols sub.lib
$ dumpbin /symbols sub.dll
$ dumpbin /exports sub.lib
$ dumpbin /exports sub.dll

-----------------------------------------------------------------
test(fortran)
$ ifort -c main.f90
$ ifort -o testprj main.obj ../mods.lib
-------------------------------------
test(c)
$ icx -c main.c
$ icx -o testprj main.obj ../sub.lib
-------------------------------------------
run testprj
---------------------------------------------
$env:path += ";d:\work\fortran_work\ModernFortran\codes\windows\c-call-fortran-lib\shared\01\"
$ .\testprj.exe
