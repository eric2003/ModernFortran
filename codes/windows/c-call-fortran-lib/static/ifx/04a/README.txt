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

5. Creating a static library
lib /OUT:./mystatic.lib ./onemod.obj ./twomods.obj ./sub1.obj ./sub2.obj

4. check mods.lib
dumpbin /symbols ./mystatic.lib

6.
cd ../../test/build

6.
icx ../main.c ../../lib/build/mods.lib -o testprj.exe

