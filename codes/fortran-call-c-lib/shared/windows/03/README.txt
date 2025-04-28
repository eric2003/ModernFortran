$ cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'
---------------------------------------
create static lib:
----------------------------
$ icx -c sub.c -DMYLIB_EXPORTS
$ icx -dll -exe:sub.dll sub.obj
create shared lib:
----------------------------
$ icx -c sub.c -DMYLIB_EXPORTS
$ icx /LD sub.obj -o sub.dll
-------------------------------
create shared lib:
----------------------------
$ icx -c sub.c
$ icx /LD sub.obj -o sub.dll
-------------------------------
check exports
------------------------------
$ dumpbin /exports sub.lib
$ dumpbin /exports sub.dll
$ dumpbin /symbols sub.lib
-------------------------------
$ cd test
$ ifort -c main.f90
$ ifort -o testprj main.obj ../sub.lib
$env:path += ";d:\work\fortran_work\ModernFortran\codes\fortran-call-c-lib\shared\windows\03\"
$ ./testprj.exe
--------------------------------------
$ cd testc
$ icx -c main.c
$ icx -o testprj main.obj ../sub.lib
$env:path += ";d:\work\fortran_work\ModernFortran\codes\fortran-call-c-lib\shared\windows\03\"
$ ./testprj.exe
