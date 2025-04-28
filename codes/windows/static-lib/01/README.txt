gfortran -c sub.f90
ar r sub.a sub.o
----------------------------
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1. ifort -c sub.f90
2. lib /OUT:sub.lib sub.obj

lib /OUT:sub.lib sub.obj

ifort main.f90 ../sub.lib


6. ifort main.obj sub1.obj sub2.obj mymod1.obj  mymod2.obj -o main