FC = gfortran
FFLAGS = -O3 -Wall -std=f2008

$(shell makedepf90 -o testprj *.f90 > my.depend )

%.mod %.o : %.f90
	$(FC) $(FFLAGS) -o $@ -c $<

include my.depend

.PHONY: clean
clean :
	rm -f *.o *.mod my.depend testprj