----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

dumpbin /symbols sub.lib
DUMPBIN /EXPORTS sub.lib

dumpbin /HEADERS
dumpbin /HEADERS /DIRECTIVES

======================================
1.
ifx -c ../onemod.f90

2.
ifx -c ../twomods.f90

3. Creating a shared library
ifx -dll -exe:./mods.dll ./onemod.obj ./twomods.obj

4. check mods.lib
dumpbin /exports ./mods.lib

5. check mods.dll
dumpbin /exports ./mods.dll

6.
cd ../../test/build

7.
icx ../main.c ../../lib/build/mods.lib -o testprj.exe

8.

$env:path += ";d:\work\fortran_work\ModernFortran\codes\windows\c-call-fortran-lib\shared\ifx\03a\lib\build\"

9、.\testprj.exe



