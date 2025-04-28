# Makefile for compiling and linking main.f90 in test directory using nmake and ifx

# Compiler and flags
FC = ifx
FFLAGS =
LINKFLAGS =

# Files
MAIN_SRC = main.f90
EXE = testprj.exe
LIB = ..\lib\sub.lib

# Default target
all: $(EXE)

# Rule to compile and link main.f90 with sub.lib
$(EXE): $(MAIN_SRC) $(LIB)
	$(FC) $(FFLAGS) $(MAIN_SRC) $(LIB) -o $(EXE)

# Clean up generated files
clean:
	del /Q $(EXE) *.obj

.PHONY: all clean