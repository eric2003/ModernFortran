FC = gfortran
FFLAGS = -O3 -Wall
SRC = $(wildcard *.f90)
OBJ = $(SRC:.f90=.o)
$(info SRC=$(SRC))
$(info OBJ=$(OBJ))

%.o : %.f90
	$(FC) $(FFLAGS) -o $@ -c $<

testprj: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $^
	@echo "echo1= \$$@ = $@ "
	@echo "echo2= \$$^ = $^ "
	@echo "echo3= \$$< = $< "
	$(info $$@ = $@)
	$(info $$^ = $^)
	$(info $$< = $<)


.PHONY: clean
clean :
	rm *.o testprj