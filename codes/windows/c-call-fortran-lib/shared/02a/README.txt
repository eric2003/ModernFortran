$ cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

$ ifort -c onemod.f90
$ ifort -dll -exe:onemod.dll onemod.obj
-----------------------------------------------------------------
check onemod.lib
-----------------------------------------------------------------
$ dumpbin /symbols onemod.lib
$ dumpbin /symbols onemod.dll
$ dumpbin /exports onemod.lib
$ dumpbin /exports onemod.dll

-----------------------------------------------------------------
test(fortran)
$ ifort -c main.f90
$ ifort -o testprj main.obj ../onemod.lib
-------------------------------------
test(c)
$ icx -c main.c
$ icx -o testprj main.obj ../onemod.lib
-------------------------------------------
run testprj
---------------------------------------------
$env:path += ";d:\work\fortran_work\ModernFortran\codes\windows\c-call-fortran-lib\shared\02a\"
$ .\testprj.exe

