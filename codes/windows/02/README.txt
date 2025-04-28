cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

ifort -c .\main.f90
ifort .\main.obj -o main
ifort .\main.f90