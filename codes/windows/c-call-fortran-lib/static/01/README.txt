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
$ icx -c main.c
$ icx -o testprj main.obj ../sub.lib

dumpbin /symbols sub.lib
DUMPBIN /EXPORTS sub.lib

dumpbin /HEADERS
dumpbin /HEADERS /DIRECTIVES
