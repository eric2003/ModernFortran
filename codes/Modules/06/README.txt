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

1. gfortran -c mymod1.f90
2. gfortran -c mymod2.f90
3. gfortran -c sub1.f90
4. gfortran -c sub2.f90
5. gfortran -c main.f90
6. gfortran main.o sub1.o sub2.o mymod1.o  mymod2.o -o main