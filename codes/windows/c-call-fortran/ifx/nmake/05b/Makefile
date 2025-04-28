# Makefile for mixed C/Fortran program using icx and ifx compilers

# Compilers
FC = ifx
CC = icx
FFLAGS = /nologo /O2 /fpp /module:$(BUILDDIR)/ /I:$(BUILDDIR)/
CFLAGS = /nologo /O2
LINKFLAGS = /nologo /Fe:$(BINDIR)\testprj.exe

# Directories
BUILDDIR = build
BINDIR = bin
CSRCDIR = c
FSRCdir = f90

# Target executable
EXE = $(BINDIR)\testprj.exe

# Source files
FSRC = $(FSRCdir)\onemod.f90 $(FSRCdir)\twomods.f90
CSRC = $(CSRCDIR)\main.c

# Object files
FOBJ = $(BUILDDIR)\onemod.obj $(BUILDDIR)\twomods.obj
COBJ = $(BUILDDIR)\main.obj

# Default target
all: $(EXE)

# Rule to build the executable
$(EXE): $(FOBJ) $(COBJ)
	if not exist $(BINDIR) mkdir $(BINDIR)
	$(CC) $(LINKFLAGS) $(FOBJ) $(COBJ)

# Rule to compile onemod.f90 to object
$(BUILDDIR)\onemod.obj: $(FSRCdir)\onemod.f90
	if not exist $(BUILDDIR) mkdir $(BUILDDIR)
	$(FC) $(FFLAGS) /c $(FSRCdir)\onemod.f90 /Fo$(BUILDDIR)\onemod.obj

# Rule to compile twomods.f90 to object (depends on mod3)
$(BUILDDIR)\twomods.obj: $(FSRCdir)\twomods.f90 $(BUILDDIR)\onemod.obj
	if not exist $(BUILDDIR) mkdir $(BUILDDIR)
	$(FC) $(FFLAGS) /c $(FSRCdir)\twomods.f90 /Fo$(BUILDDIR)\twomods.obj

# Rule to compile main.c to object
$(COBJ): $(CSRC)
	if not exist $(BUILDDIR) mkdir $(BUILDDIR)
	$(CC) $(CFLAGS) /c $(CSRC) /Fo$(COBJ)

# Clean up
clean:
	if exist $(BUILDDIR) rmdir /S /Q $(BUILDDIR)
	if exist $(BINDIR) rmdir /S /Q $(BINDIR)

# Phony targets
.PHONY: all clean