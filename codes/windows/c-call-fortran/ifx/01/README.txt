$ icx -c csub.c
$ ifort main.f90 csub.obj -o testprj.exe
$ ./testprj.exe
-----------------------------

$ icx -c ../main.c
$ ifx -c ../add.f90
$ icx -o ./testprj.exe ./main.obj ./add.obj
or
$ icx ./main.obj ./add.obj -o ./testprj.exe

