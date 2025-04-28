# Makefile for nmake to build a static library and executable with ifx and icx

# Compilers and tools
FC = ifx
CC = icx
AR = lib
FFLAGS = /nologo /O2 /module:build/ /I:build/
CFLAGS = /nologo /O2
ARFLAGS = /nologo /OUT:
LINKFLAGS = /nologo

# Directories
LIBDIR = lib
TESTDIR = test
BUILDDIR = build
BINDIR = bin

# Target static library and executable
LIB_IMP = $(BINDIR)\mystatic.lib
EXE = $(BINDIR)\testprj.exe

# Source files
LIBSRC = $(LIBDIR)\onemod.f90 $(LIBDIR)\twomods.f90
TESTSRC = $(TESTDIR)\main.c

# Object files
LIBOBJ = $(BUILDDIR)\onemod.obj $(BUILDDIR)\twomods.obj
TESTOBJ = $(BUILDDIR)\main.obj

# Default target
all: $(LIB_IMP) $(EXE)

# Rule to build the static library
$(LIB_IMP): $(LIBOBJ)
    if not exist $(BINDIR) mkdir $(BINDIR)
    $(AR) $(ARFLAGS)$(LIB_IMP) $(LIBOBJ)

# Rule to build the executable
$(EXE): $(TESTOBJ) $(LIB_IMP)
    if not exist $(BINDIR) mkdir $(BINDIR)
    $(CC) $(LINKFLAGS) /Fe$(EXE) $(TESTOBJ) $(LIB_IMP)

# Rule to compile onemod.f90 to object
$(BUILDDIR)\onemod.obj: $(LIBDIR)\onemod.f90
    if not exist $(BUILDDIR) mkdir $(BUILDDIR)
    $(FC) $(FFLAGS) /c $(LIBDIR)\onemod.f90 /Fo$(BUILDDIR)\onemod.obj

# Rule to compile twomods.f90 to object (depends on mod3)
$(BUILDDIR)\twomods.obj: $(LIBDIR)\twomods.f90 $(BUILDDIR)\onemod.obj
    if not exist $(BUILDDIR) mkdir $(BUILDDIR)
    $(FC) $(FFLAGS) /c $(LIBDIR)\twomods.f90 /Fo$(BUILDDIR)\twomods.obj

# Rule to compile main.c to object
$(TESTOBJ): $(TESTSRC)
    if not exist $(BUILDDIR) mkdir $(BUILDDIR)
    $(CC) $(CFLAGS) /c $(TESTSRC) /Fo$(TESTOBJ)

# Clean up
clean:
    if exist $(BUILDDIR) rmdir /S /Q $(BUILDDIR)
    if exist $(BINDIR) rmdir /S /Q $(BINDIR)

# Phony targets
.PHONY: all clean