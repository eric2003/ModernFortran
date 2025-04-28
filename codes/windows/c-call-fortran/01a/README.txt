$ icx -c csub.c
$ ifort main.f90 csub.obj -o testprj.exe
$ ./testprj.exe
-----------------------------

$ icx -c main.c
$ ifort -c add.f90
$ icx -o testprj main.obj add.obj
