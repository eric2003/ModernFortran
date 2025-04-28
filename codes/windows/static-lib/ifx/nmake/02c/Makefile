# Makefile for building testprj.exe

# Compiler and linker settings
FC = ifx
LIB = lib

# Object files
OBJ = sub.obj main.obj
LIBRARY = sub.lib
TARGET = testprj.exe

LDFLAGS = /link /LIBPATH:"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.43.34808\lib\x64" /OUT:testprj.exe

# Default target
all: $(TARGET)

# Build the subroutine object file
sub.obj: sub.f90
	$(FC) -c sub.f90 -o sub.obj

# Create the library from the object file
sub.lib: sub.obj
	$(LIB) /OUT:sub.lib sub.obj

# Build the main program object file
main.obj: main.f90
	$(FC) -c main.f90 -o main.obj

# Link the main program with the library to create the executable
testprj.exe: main.obj sub.lib
	$(LD) $(OBJ) $(LIB) $(LDFLAGS)

# Clean target to remove generated files
clean:
	del sub.obj sub.lib main.obj testprj.exe