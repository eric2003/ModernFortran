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
ifx -c ../sub.f90


2. Creating a static library
lib /OUT:./sub.lib ./sub.obj

3.
cd ../../test/build

4.
icx ../main.c ../../lib/build/sub.lib -o testprj.exe
