---------------------------------------
$ cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'
---------------------------------------
create static lib:
----------------------------
$ icx -c ./c/sub.c -o ./build/sub.obj -DMYLIB_EXPORTS
#$ lib /OUT:./build/sub.lib ./build/sub.obj
$ link /DLL /OUT:./bin/sub.dll ./build/sub.obj
-------------------------------
$ ifx -c ./f90/main.f90 -o ./build/main.obj
$ ifx -o ./bin/testprj.exe ./build/main.obj ./bin/sub.lib
$ ./bin/testprj.exe
---------------------------------------
$ dumpbin /symbols ./build/sub.obj
$ dumpbin /exports ./bin/sub.lib
$ dumpbin /exports ./bin/sub.dll
$ dumpbin /symbols ./build/main.obj
$ dumpbin /symbols ./bin/testprj.exe
$ dumpbin /exports ./bin/testprj.exe

icx -c sub.c -DMYLIB_EXPORTS
icx /LD sub.obj -o sub.dll
link /DLL /OUT:sub.dll sub.obj

link /DLL /OUT:./bin/sub.dll ./build/sub.obj

dumpbin.exe /ALL ./bin/sub.exp
dumpbin.exe /exports ./bin/sub.exp
dumpbin.exe /symbols ./bin/sub.exp
dumpbin /exports ./bin/sub.dll
dumpbin /exports ./bin/sub.lib

1. icx -c ./c/sub.c -o ./build/sub.obj -DMYLIB_EXPORTS
2. dumpbin /symbols ./build/sub.obj
3. link /DLL /OUT:./bin/sub.dll ./build/sub.obj
4. dumpbin /exports ./bin/sub.lib
5. dumpbin /exports ./bin/sub.dll
6. ifx -c ./f90/main.f90 -o ./build/main.obj
7. dumpbin /symbols ./build/main.obj
8. ifx -o ./bin/testprj.exe ./build/main.obj ./bin/sub.lib
9. dumpbin /imports ./bin/testprj.exe
10. ./bin/testprj.exe
