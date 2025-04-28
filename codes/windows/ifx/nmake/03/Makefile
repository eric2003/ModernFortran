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

# List of source files (in same order as OBJECTS)
SOURCES = $(SRCDIR)\main.f90 $(SRCDIR)\onemod.f90 $(SRCDIR)\twomods.f90

# Object files (correspond to SOURCES)
OBJECTS = $(OBJDIR)\main.obj $(OBJDIR)\onemod.obj $(OBJDIR)\twomods.obj

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

# Single dependency rule for all object files
$(OBJECTS): $(SOURCES) $(OBJDIR)

# Clean up generated files
clean:
	@if exist $(OBJDIR) rmdir /S /Q $(OBJDIR)
	@if exist *.exe del /Q *.exe
	@if exist *.mod del /Q *.mod
	@if exist *_genmod.f90 del /Q *_genmod.f90

# Phony targets (nmake doesn't use .PHONY, but comments clarify intent)
# all and clean are not files