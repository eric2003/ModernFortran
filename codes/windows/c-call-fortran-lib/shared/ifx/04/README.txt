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

3.
ifx -c ../sub1.f90

4.
ifx -c ../sub2.f90

5. Creating a shared library
ifx -dll -exe:./myshared.dll ./onemod.obj ./twomods.obj ./sub1.obj ./sub2.obj

6. check myshared.lib
dumpbin /exports ./myshared.lib

7. check myshared.dll
dumpbin /exports ./myshared.dll

8.
cd ../../test/build

9.
icx ../main.c ../../lib/build/myshared.lib -o ./testprj.exe

10.
$env:path += ";d:\work\fortran_work\ModernFortran\codes\windows\c-call-fortran-lib\shared\ifx\04\lib\build\"

11.
.\testprj.exe



