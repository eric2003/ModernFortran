cp ../onemod.mod .
gfortran -c main.f90
gfortran -o testprj main.o ../onemod.so