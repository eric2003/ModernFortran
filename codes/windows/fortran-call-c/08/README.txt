$ icx -c csub.c
$ ifort main.f90 csub.obj -o testprj.exe
$ ./testprj.exe
-----------------------------

$ icx -c main.c
$ ifort -c add.f90
$ icx -o test main.obj add.obj
$ icx -o test main.obj add.obj -lgfortran