# Makefile for building static library in lib directory using nmake and ifx

# Compiler and flags
FC = ifx
FFLAGS = -c
LIB = lib
LIBFLAGS = /OUT:

# Files
LIBNAME = sub.lib
OBJ = sub.obj
SRC = sub.f90

# Default target
all: $(LIBNAME)

# Rule to create the static library
$(LIBNAME): $(OBJ)
	$(LIB) $(LIBFLAGS)$(LIBNAME) $(OBJ)

# Rule to compile sub.f90 into sub.obj
$(OBJ): $(SRC)
	$(FC) $(FFLAGS) $(SRC) -o $(OBJ)

# Clean up generated files
clean:
	del /Q $(OBJ) $(LIBNAME)

.PHONY: all clean