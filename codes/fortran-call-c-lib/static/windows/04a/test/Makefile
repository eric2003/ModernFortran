ifeq ($(OS),Windows_NT)
    $(info OS = $(OS))
    TARGET_ARCH ?= x86_64
else
    HOST_ARCH   := $(shell uname -m)
    $(info WARNING - HOST_ARCH = $(HOST_ARCH))
endif

PROG    := testprj
CCFLAGS :=
LDFLAGS :=
FC      := gfortran
FFLAGS  := -O3 -Wall

# Target rules
.PHONY: all clean
all: $(PROG)

$(PROG):
	dir
	ifort -c main.f90
	ifort -o testprj main.obj ../sub.lib
	$(PROG)

clean :
	rm *.obj
	rm *.lib
