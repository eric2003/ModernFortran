gfortran -c sub.f90
ar r sub.a sub.o
----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1. dumpbin /exports ./bin/myshared.lib
2. dumpbin /exports ./bin/myshared.dll
3. dumpbin /imports ./bin/testprj.exe

1. dumpbin /symbols ./bin/mystatic.lib
2. dumpbin /exports ./bin/mystatic.lib
3. dumpbin /imports ./bin/testprj.exe
4. dumpbin /symbols ./bin/testprj.exe
5. dumpbin /LINKERMEMBER ./bin/testprj.exe


dumpbin /symbols ./build/add.obj
dumpbin /symbols ./build/main.obj
dumpbin /symbols ./bin/testprj.exe
dumpbin /imports ./bin/testprj.exe


