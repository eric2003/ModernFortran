----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

dumpbin /symbols sub.lib
DUMPBIN /EXPORTS sub.lib

dumpbin /HEADERS
dumpbin /HEADERS /DIRECTIVES

======================================
1.
ifx -c ../onemod.f90

2. Creating a shared library
ifx -dll -exe:./onemod.dll ./onemod.obj

3. check onemod.lib
dumpbin /exports ./onemod.lib

4. check onemod.dll
dumpbin /exports ./onemod.dll

5.
cd ../../test/build

6.
icx ../main.c ../../lib/build/onemod.lib -o ./testprj.exe

7.

$env:path += ";d:\work\fortran_work\ModernFortran\codes\windows\c-call-fortran-lib\shared\ifx\02\lib\build\"

6.
icx ../main.c ../../lib/build/sub.lib -o testprj.exe


