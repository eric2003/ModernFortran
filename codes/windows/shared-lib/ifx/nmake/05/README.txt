gfortran -c sub.f90
ar r sub.a sub.o
----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1. dumpbin /exports ./bin/myshared.lib
2. dumpbin /exports ./bin/myshared.dll
3. dumpbin /imports ./bin/testprj.exe




