https://fortran-lang.org/learn/quickstart/hello_world/
https://fortran-lang.org/learn/building_programs/compiling_source/
https://gcc.gnu.org/wiki/GFortranGettingStarted
https://www.tutorialspoint.com/fortran/fortran_procedures.htm
#gfortran main.f90 -o main
#gfortran main.f90
1. gfortran -c main.f90
2. gfortran main.o -o main
./main

gfortran main.f90 sub1.f90 sub2.f90 -o main

gfortran -c main.f90
gfortran -c sub1.f90
gfortran -c sub2.f90

gfortran main.o sub1.o sub2.o -o main

gfortran main.f90 mymod1.f90 mymod1.f90 -o main

gfortran mymod1.f90 mymod1.f90 main.f90 -o main

gfortran -c mymod1.f90
gfortran -c mymod2.f90
gfortran -c main.f90

gfortran main.o mymod1.o mymod2.o -o main

makedepf90 $(ls *.f90)