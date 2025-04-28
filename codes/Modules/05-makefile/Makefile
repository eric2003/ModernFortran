FC = gfortran
FFLAGS = -O3 -Wall -std=f2008
SRC = $(wildcard *.f90)
OBJ = $(SRC:.f90=.o)
$(info SRC=$(SRC))
$(info OBJ=$(OBJ))

#makedepf90 $(ls *.f90)
#FILES= $makedepf90 $(ls *.f90)
FILES="$(shell ls)"
$(info FILES=$(FILES))
F90FILES="$(shell ls *.f90)"
$(info F90FILES=$(F90FILES))
F90FILES_1="$(shell (ls *.f90))"
$(info F90FILES_1=$(F90FILES_1))
DEP_FILES="$(shell makedepf90 $(shell ls *.f90))"
$(info DEP_FILES=$(DEP_FILES))

#%.mod %.o : %.f90
#	$(FC) $(FFLAGS) -o $@ -c $<

testprj: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $^
	@echo "echo1= \$$@ = $@ "
	@echo "echo2= \$$^ = $^ "
	@echo "echo3= \$$< = $< "
	$(info $$@ = $@)
	$(info $$^ = $^)
	$(info $$< = $<)
	
%.mod %.o : %.f90
	$(FC) $(FFLAGS) -c $^


.PHONY: clean
clean :
	rm *.o testprj