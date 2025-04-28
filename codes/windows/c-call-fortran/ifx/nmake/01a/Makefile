# Makefile for mixed C/Fortran program using icx and ifx compilers

# Compilers and flags
FC = ifx
CC = icx
FFLAGS = /nologo /O2 /fpp
CFLAGS = /nologo /O2
LINKFLAGS = /nologo /Fe:$(BINDIR)\testprj.exe

# Directories
BUILDDIR = build
BINDIR = bin

# Target executable
EXE = $(BINDIR)\testprj.exe

# Source files
FSRC = add.f90
CSRC = main.c

# Object files
FOBJ = $(BUILDDIR)\add.obj
COBJ = $(BUILDDIR)\main.obj

# Default target
all: $(EXE)

# Rule to build the executable
$(EXE): $(FOBJ) $(COBJ)
	if not exist $(BINDIR) mkdir $(BINDIR)
	$(CC) $(LINKFLAGS) $(FOBJ) $(COBJ)

# Rule to compile add.f90 to object
$(FOBJ): $(FSRC)
	if not exist $(BUILDDIR) mkdir $(BUILDDIR)
	$(FC) $(FFLAGS) /c $(FSRC) /Fo$(FOBJ)

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