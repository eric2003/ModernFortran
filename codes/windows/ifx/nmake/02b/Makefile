# Makefile for Intel oneAPI Fortran compiler (ifx) on Windows
# Designed for use with nmake
# Explicitly lists source files for nmake compatibility
# Uses inference rule for generic compilation
# Handles generated *_genmod.f90 and *.mod files in clean target
# Ensures OBJDIR creation

# Compiler
FC = ifx

# Compiler flags
FFLAGS = /O2 /warn:all /standard-semantics

# Linker flags
LDFLAGS = $(FFLAGS)

# Output executable name
TARGET = main.exe

# Source directory
SRCDIR = .

# Object directory
OBJDIR = obj

# List of source files
SOURCES = $(SRCDIR)\main.f90 $(SRCDIR)\sub1.f90 $(SRCDIR)\sub2.f90

# Object files
OBJECTS = $(OBJDIR)\main.obj $(OBJDIR)\sub1.obj $(OBJDIR)\sub2.obj

# Default target
all: $(TARGET)

# Create OBJDIR if it doesn't exist
$(OBJDIR):
	@if not exist $(OBJDIR)\nul mkdir $(OBJDIR)

# Link object files to create executable
$(TARGET): $(OBJECTS)
	$(FC) $(LDFLAGS) /exe:$(TARGET) $(OBJECTS)

# Inference rule for compiling .f90 to .obj
{$(SRCDIR)\}.f90{$(OBJDIR)\}.obj:
	$(FC) $(FFLAGS) /c $< /object:$@ /module:$(OBJDIR)

# Dependencies for each object file
$(OBJDIR)\main.obj: $(SRCDIR)\main.f90 $(OBJDIR)
$(OBJDIR)\sub1.obj: $(SRCDIR)\sub1.f90 $(OBJDIR)
$(OBJDIR)\sub2.obj: $(SRCDIR)\sub2.f90 $(OBJDIR)

# Clean up generated files
clean:
	@if exist $(OBJDIR) rmdir /S /Q $(OBJDIR)
	@if exist *.exe del /Q *.exe
	@if exist *.mod del /Q *.mod
	@if exist *_genmod.f90 del /Q *_genmod.f90

# Phony targets (nmake doesn't use .PHONY, but comments clarify intent)
# all and clean are not files