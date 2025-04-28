cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

$ ifort -c sub.f90
$ ifort -c main.f90
$ ifort -o testprj main.obj
