cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

$ icx -c csub.c
$ lib /OUT:csub.lib csub.obj
$ ifort -c forsub.f90
$ ifort -c main.f90
$ ifort -o testprj main.obj csub.lib
