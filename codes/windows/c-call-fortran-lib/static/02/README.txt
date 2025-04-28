cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

$ ifort -c onemod.f90
$ lib /OUT:onemod.lib onemod.obj
----------------------------------
check onemod.lib
------------------------------------------
dumpbin /symbols onemod.lib
------------------------------------------
test(fortran)
$ ifort -c main.f90
$ ifort -o testprj main.obj ../onemod.lib
-------------------------------------
test(c)
$ icx -c main.c
$ icx -o testprj main.obj ../onemod.lib
