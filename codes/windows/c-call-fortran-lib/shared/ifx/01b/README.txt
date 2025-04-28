----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

dumpbin /symbols sub.lib
DUMPBIN /EXPORTS sub.lib

dumpbin /HEADERS
dumpbin /HEADERS /DIRECTIVES

======================================
1.
ifx -c ../sub.f90

2. Creating a shared library
ifx -dll -exe:./sub.dll ./sub.obj

3. check sub.lib
dumpbin /exports ./sub.lib

4. check sub.dll
dumpbin /exports ./sub.dll

5.
cd ../../test/build

6.

$env:path += ";d:\work\fortran_work\ModernFortran\codes\windows\c-call-fortran-lib\shared\ifx\01\lib\build\"

6.
icx ../main.c ../../lib/build/sub.lib -o testprj.exe


