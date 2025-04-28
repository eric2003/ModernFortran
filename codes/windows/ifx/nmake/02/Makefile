# Makefile for Intel oneAPI Fortran compiler (ifx) on Windows
# Designed for use with nmake
# Explicitly lists source files for nmake compatibility

# Compiler
FC = ifx

# Compiler flags
FFLAGS = /O2 /warn:all /standard-semantics

# Linker flags (same as FFLAGS for simplicity)
LDFLAGS = $(FFLAGS)

# Output executable name
TARGET = main.exe

# Source directory
SRCDIR = .

# Object directory
OBJDIR = obj

# List of source files
SOURCES = $(SRCDIR)\main.f90 $(SRCDIR)\sub1.f90 $(SRCDIR)\sub2.f90

# Object files (derived from source files)
OBJECTS = $(OBJDIR)\main.obj $(OBJDIR)\sub1.obj $(OBJDIR)\sub2.obj

# Default target
all: $(TARGET)

# Create OBJDIR if it doesn't exist
$(OBJDIR):
	@if not exist $(OBJDIR) mkdir $(OBJDIR)

# Link object files to create executable
$(TARGET): $(OBJDIR) $(OBJECTS)
	$(FC) $(LDFLAGS) /exe:$(TARGET) $(OBJECTS)

# Compile rules for each source file
$(OBJDIR)\main.obj: $(SRCDIR)\main.f90
	$(FC) $(FFLAGS) /c $(SRCDIR)\main.f90 /object:$(OBJDIR)\main.obj

$(OBJDIR)\sub1.obj: $(SRCDIR)\sub1.f90
	$(FC) $(FFLAGS) /c $(SRCDIR)\sub1.f90 /object:$(OBJDIR)\sub1.obj

$(OBJDIR)\sub2.obj: $(SRCDIR)\sub2.f90
	$(FC) $(FFLAGS) /c $(SRCDIR)\sub2.f90 /object:$(OBJDIR)\sub2.obj

# Clean up generated files
clean:
	@if exist $(OBJDIR) rmdir /S /Q $(OBJDIR)
	@if exist *.exe del /Q *.exe
	@if exist *.mod del /Q *.mod
	@if exist *_genmod.f90 del /Q *_genmod.f90

# Phony targets (nmake doesn't use .PHONY, but comments clarify intent)
# all and clean are not files