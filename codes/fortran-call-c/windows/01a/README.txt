$ gfortran -c main.f90
$ gcc -c -fno-leading-underscore csub.c
$ gfortran -o testprj main.o csub.o
------------------------------------------
$ gfortran -c main.f90
$ gcc -c csub.c
$ gfortran -o testprj main.o csub.o
--------------------------------------
nm csub.o
nm main.o
-----------------------------------
$ icx -c csub.c
$ ifort main.f90 csub.obj -o testprj.exe
$ ./testprj.exe
---------------------------------------
$ cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'
---------------------------------------
$ ifort -c main.f90
$ icx -c csub.c
$ ifort -o testprj main.obj csub.obj
$ ./testprj.exe
---------------------------------------
$ dumpbin /symbols main.obj
$ dumpbin /symbols csub.obj
$ dumpbin /exports csub.obj
