---------------------------------------
$ cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'
---------------------------------------
create static lib:
----------------------------
$ icx -c ./c/sub.c -o ./build/sub.obj
$ lib /OUT:./build/sub.lib ./build/sub.obj
-------------------------------
$ ifx -c ./f90/main.f90 -o ./build/main.obj
$ ifx -o ./bin/testprj.exe ./build/main.obj ./build/sub.lib
$ ./bin/testprj.exe
---------------------------------------
$ dumpbin /symbols ./build/sub.obj
$ dumpbin /symbols ./build/sub.lib
$ dumpbin /symbols ./build/main.obj
$ dumpbin /symbols ./bin/testprj.exe
$ dumpbin /exports ./bin/testprj.exe

