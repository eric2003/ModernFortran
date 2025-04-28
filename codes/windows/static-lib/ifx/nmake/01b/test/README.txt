cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1. ifort -c sub.f90
2. lib /OUT:sub.lib sub.obj

lib /OUT:sub.lib sub.obj

$ ifx -c main.f90
$ ifx main.obj ../lib/sub.lib -o testprj

