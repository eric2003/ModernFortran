# Makefile for building testprj.exe using Intel Fortran Compiler (ifx)

# Compiler and linker
FC = ifx
LD = ifx

# Compiler flags
FCFLAGS = -c

# Linker flags
LDFLAGS = -o testprj /link /subsystem:console

# Source and object files
SRC = main.f90
OBJ = main.obj
LIB = ../lib/sub.lib

# Target executable
EXE = testprj.exe

# Default target
all: $(EXE)

# Link object files and library to create executable
$(EXE): $(OBJ) $(LIB)
	$(LD) $(OBJ) $(LIB) $(LDFLAGS)

# Compile source files to object files
$(OBJ): $(SRC)
	$(FC) $(FCFLAGS) $(SRC)

# Clean up generated files
clean:
	del $(OBJ) $(EXE)

.PHONY: all clean