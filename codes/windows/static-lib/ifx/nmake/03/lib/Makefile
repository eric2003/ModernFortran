# nmake Makefile to compile sub.f90 and create sub.lib static library

# Compiler and flags
FC = ifx
FCFLAGS = /nologo /O2
LIBTOOL = lib
LIBFLAGS = /nologo /out:sub.lib

# Source and output files
SRC = sub.f90
OBJ = sub.obj
LIB = sub.lib

# Default target
all: $(LIB)
	@echo === Build Complete ===
	@echo Static library $(LIB) created.
	@echo LIB environment variable:
	@echo $(LIB)

# Rule to create static library
$(LIB): $(OBJ)
	@echo Creating static library $(LIB)...
	$(LIBTOOL) $(LIBFLAGS) $(OBJ)

# Rule to compile Fortran source to object file
$(OBJ): $(SRC)
	@echo Compiling $(SRC)...
	$(FC) $(FCFLAGS) /c $(SRC)

# Clean target
clean:
	@echo Cleaning up...
	@del $(OBJ) $(LIB) 2>nul

.PHONY: all clean