$ cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'
---------------------------------------
create static lib:
----------------------------
$ icx -c sub.c
$ lib /OUT:sub.lib sub.obj
------------------------------
check exports
------------------------------
$ dumpbin /exports sub.lib
$ dumpbin /symbols sub.lib
-------------------------------
create shared lib:
----------------------------
#$ icx -c sub.c -DMYLIB_EXPORTS
$ icx -c sub.c
$ icx /LD sub.obj -o sub.dll
-------------------------------
check exports
------------------------------
$ dumpbin /exports sub.lib
$ dumpbin /exports sub.dll
-------------------------------
$ cd test
$ ifort -c main.f90
$ ifort -o testprj main.obj ../sub.lib
$env:path += ";d:\work\fortran_work\ModernFortran\codes\fortran-call-c-lib\shared\windows\04\"
--------------------------------------
$ cd testc
$ icx -c main.c
$ icx -o testprj main.obj ../sub.lib
$env:path += ";d:\work\fortran_work\ModernFortran\codes\fortran-call-c-lib\shared\windows\04\"
$ ./testprj.exe
