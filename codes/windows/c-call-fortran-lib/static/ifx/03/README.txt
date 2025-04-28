----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

$ ifort -c sub.f90
$ lib /OUT:sub.lib sub.obj
----------------------------------
test(fortran)
$ ifort -c main.f90
$ ifort -o testprj main.obj ../sub.lib
-------------------------------------
test(c)
$ icx -c ../main.c
$ icx -o testprj main.obj ../sub.lib

dumpbin /symbols sub.lib
DUMPBIN /EXPORTS sub.lib

dumpbin /HEADERS
dumpbin /HEADERS /DIRECTIVES

======================================
1.
ifx -c ../onemod.f90

2.
ifx -c ../twomods.f90

3. Creating a static library
lib /OUT:./mods.lib ./onemod.obj ./twomods.obj

4. check mods.lib
dumpbin /symbols ./mods.lib

5.
cd ../../test/build

6.
icx ../main.c ../../lib/build/mods.lib -o testprj.exe

