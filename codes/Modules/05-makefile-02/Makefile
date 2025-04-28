FC = gfortran
FFLAGS = -O3 -Wall -std=f2008

$(shell makedepf90 -o testprj *.f90 > my.depend )

%.mod %.o : %.f90
	$(FC) $(FFLAGS) -o $@ -c $<

FOBJ=main.o mymod1.o mymod2.o

testprj: $(FOBJ)
	$(FC) -o $@ $(FFLAGS) $(LDFLAGS) $(FOBJ) $(LIBS)

main.o : main.f90 mymod2.o mymod1.o
mymod1.o : mymod1.f90
mymod2.o : mymod2.f90


.PHONY: clean
clean :
	rm *.o testprj