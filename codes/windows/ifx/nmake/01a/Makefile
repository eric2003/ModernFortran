# Makefile for Intel oneAPI Fortran compiler (ifx) on Windows
# To be used with nmake

# Compiler
FC = ifx

# Compiler flags
FFLAGS = /O2 /warn:all /standard-semantics

# Target executable
TARGET = main.exe

# Source file
SRC = main.f90

# Default target
all: $(TARGET)

# Link object files to create executable
$(TARGET): $(SRC:.f90=.obj)
	$(FC) $(FFLAGS) /exe:$(TARGET) $(SRC:.f90=.obj)

# Compile Fortran source to object file
$(SRC:.f90=.obj): $(SRC)
	$(FC) $(FFLAGS) /c $(SRC)

# Clean up
clean:
	del *.obj *.exe *.mod

# Phony targets
.PHONY: all clean