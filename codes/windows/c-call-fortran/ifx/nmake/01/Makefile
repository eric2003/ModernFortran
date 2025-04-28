# Makefile for mixed C/Fortran program using icx and ifx compilers

# Compiler definitions
CC = icx
FC = ifx

# Compiler flags
CFLAGS = /O2 /I.
FFLAGS = /O2 /fpp

# Linker flags
LDFLAGS = /Fe:testprj.exe

# Object files
OBJECTS = main.obj add.obj

# Target executable
TARGET = testprj

# Default target
all: $(TARGET)

# Link object files to create executable
$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) $(LDFLAGS)

# Compile C source to object
main.obj: main.c
	$(CC) $(CFLAGS) /c main.c

# Compile Fortran source to object
add.obj: add.f90
	$(FC) $(FFLAGS) /c add.f90

# Clean up
clean:
	del *.obj *.exe *.mod

# Phony targets
.PHONY: all clean