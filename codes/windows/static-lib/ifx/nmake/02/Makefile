# Makefile for building testprj.exe

# Compiler and linker settings
FC = ifx
LIB = lib
LINK = ifx

# Object files
OBJ = sub.obj
LIBRARY = sub.lib
MAIN_SRC = main.f90
TARGET = testprj.exe

# Default target
all: $(TARGET)

# Build the subroutine object file
sub.obj: sub.f90
	$(FC) -c sub.f90 -o sub.obj

# Create the library from the object file
sub.lib: sub.obj
	$(LIB) /OUT:sub.lib sub.obj

# Link the main program with the library to create the executable
testprj.exe: main.f90 sub.lib
	$(LINK) main.f90 sub.lib -o testprj.exe

# Clean target to remove generated files
clean:
	del sub.obj sub.lib testprj.exe