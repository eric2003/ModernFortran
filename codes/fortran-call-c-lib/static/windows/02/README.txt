------------------------------------
$ gfortran -c main.f90
$ gcc -c sub.c
$ gfortran -o testprj main.o sub.o
--------------------------------------
nm sub.o
nm main.o
------------------------------------
$ gcc -c sub.c
$ ar r sub.a sub.o
$ gfortran -c main.f90
$ gfortran -o testprj main.o ../sub.a
--------------------------------------

testc
------------------------
$ gcc -c sub.c
$ ar r sub.a csub.o
$ gcc -c main.c
$ gcc -o testprj main.o ../sub.a

$ icx -c sub.c
$ ifort main.f90 csub.obj -o testprj.exe
$ ./testprj.exe
---------------------------------------
$ cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'
---------------------------------------
create static lib:
----------------------------
$ icx -c sub.c
$ lib /OUT:sub.lib sub.obj

$ dumpbin /symbols sub.lib
-------------------------------
$ ifort -c main.f90
$ ifort -o testprj main.obj ../sub.lib
$ ./testprj.exe
---------------------------------------
$ dumpbin /symbols main.obj
$ dumpbin /symbols csub.obj
$ dumpbin /exports csub.obj
