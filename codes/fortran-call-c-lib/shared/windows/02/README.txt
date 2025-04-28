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
check exports
------------------------------
$ dumpbin /exports sub.lib



icx sub.obj -shared -o sub.dll
icx sub.obj /DLL sub.dll
icx -dll sub.dll sub.obj
icx /DLL sub.dll sub.obj
icx /LD sub.dll sub.obj
icx /LD sub.obj -o sub.dll

icx -c sub.c -DMYLIB_EXPORTS
icx /LD sub.obj -o sub.dll


$ dumpbin /symbols sub.lib
-------------------------------
$ ifort -c main.f90
$ ifort -o testprj main.obj ../sub.lib
$env:path += ";d:\work\fortran_work\ModernFortran\codes\fortran-call-c-lib\shared\windows\02\"
$ ./testprj.exe
---------------------------------------
$ dumpbin /symbols main.obj
$ dumpbin /symbols sub.obj
$ dumpbin /exports sub.obj

dumpbin /exports sub.obj
dumpbin /symbols sub.dll
dumpbin /exports sub.dll

-----------------------------------
$ cd testc
$ icx -c main.c
$ icx -o testprj main.obj ../sub.lib
$env:path += ";d:\work\fortran_work\ModernFortran\codes\fortran-call-c-lib\shared\windows\02\"
$ ./testprj.exe
