# Makefile for compiling Fortran program with static library using nmake

# Compiler and flags
FC = ifx
FFLAGS = -c
LIB = lib
LIBFLAGS = /OUT:
LINKFLAGS =

# Directories
LIBDIR = lib
TESTDIR = test
BINDIR = bin

# Files
LIBNAME = $(LIBDIR)\sub.lib
OBJ = $(LIBDIR)\sub.obj
SRC = $(LIBDIR)\sub.f90
MAIN_SRC = $(TESTDIR)\main.f90
EXE = $(TESTDIR)\testprj.exe

# Default target
all: $(EXE)

# Rule to create the static library
$(LIBNAME): $(OBJ)
	$(LIB) $(LIBFLAGS)$(LIBNAME) $(OBJ)

# Rule to compile sub.f90 into sub.obj
$(OBJ): $(SRC)
	$(FC) $(FFLAGS) $(SRC) -o $(OBJ)

# Rule to compile and link main.f90 with sub.lib
$(EXE): $(MAIN_SRC) $(LIBNAME)
	cd $(TESTDIR) && $(FC) main.f90 ..\$(LIBNAME) -o testprj

# Clean up generated files
clean:
	del /Q $(OBJ) $(LIBNAME) $(EXE)

.PHONY: all clean