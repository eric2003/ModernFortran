$ gcc -c sub.c
$ ar r sub.a sub.o
$ nm sub.a
----------------------------------------
$ gfortran -c main.f90
$ gfortran -o testprj main.o ../sub.a
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
$ dumpbin /symbols sub.lib
-------------------------------
$ cd test
$ ifort -c main.f90
$ ifort -o testprj main.obj ../sub.lib
--------------------------------------
$ cd testc
$ icx -c main.c
$ icx -o testprj main.obj ../sub.lib
$env:path += ";d:\work\fortran_work\ModernFortran\codes\fortran-call-c-lib\shared\windows\02\"
$ ./testprj.exe
