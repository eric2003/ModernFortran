$ ifort -c main.f90
$ ifort -o testprj main.obj
$ ./testprj.exe
---------------------------------------
$ cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'
---------------------------------------
$ dumpbin /symbols main.obj
$ dumpbin /exports main.obj

