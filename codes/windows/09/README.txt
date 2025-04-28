cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

1. ifort -c mymod1.f90
2. ifort -c mymod2.f90
3. ifort -c sub1.f90
4. ifort -c sub2.f90
5. ifort -c main.f90
6. ifort main.obj sub1.obj sub2.obj mymod1.obj  mymod2.obj -o main

