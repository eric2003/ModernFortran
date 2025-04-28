$ cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

$ ifort -c onemod.f90
$ ifort -c twomods.f90
$ ifort -c sub1.f90
$ ifort -c sub2.f90
$ lib /OUT:mods.lib onemod.obj twomods.obj sub1.obj sub2.obj
-----------------------------------------------------------------
check mods.lib
-----------------------------------------------------------------
$ dumpbin /symbols mods.lib
-----------------------------------------------------------------
test(fortran)
$ ifort -c main.f90
$ ifort -o testprj main.obj ../mods.lib
-------------------------------------
test(c)
$ icx -c main.c
$ icx -o testprj main.obj ../mods.lib
