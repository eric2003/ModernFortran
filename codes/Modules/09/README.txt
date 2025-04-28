1. gfortran -c twomods.f90
2. gfortran -c onemod.f90
3. gfortran -c main.f90
4. gfortran main.o twomods.o onemod.o -o testprj
------------------------------------
1. gfortran -c onemod.f90
2. gfortran -c twomods.f90
3. gfortran -c main.f90
4. gfortran main.o twomods.o onemod.o -o testprj
