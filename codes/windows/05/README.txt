cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

ifort -c .\main.f90 -o main.o
ifort main.o -o main
ifort .\main.f90
-------------------------------
1、ifort -c main.f90
2、ifort -c sub1.f90
3、ifort -c sub2.f90
4、ifort main.obj sub1.obj sub2.obj -o main