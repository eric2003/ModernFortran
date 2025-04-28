# Makefile for nmake to build a DLL and executable with ifx

# Compiler and flags
FC = ifx
FFLAGS = /nologo /O2 /module:build/ /I:build/
DLLFLAGS = /nologo /DLL /module:build/ /I:build/
LINKFLAGS = /nologo

# Directories
LIBDIR = lib
TESTDIR = test
BUILDDIR = build
BINDIR = bin

# Target DLL and executable
DLL = $(BINDIR)\myshared.dll
LIB_IMP = $(BINDIR)\myshared.lib
EXE = $(BINDIR)\testprj.exe

# Source files
LIBSRC = $(LIBDIR)\onemod.f90 $(LIBDIR)\twomods.f90 $(LIBDIR)\sub1.f90 $(LIBDIR)\sub2.f90
TESTSRC = $(TESTDIR)\main.f90

# Object files
LIBOBJ = $(BUILDDIR)\onemod.obj $(BUILDDIR)\twomods.obj $(BUILDDIR)\sub1.obj $(BUILDDIR)\sub2.obj
TESTOBJ = $(BUILDDIR)\main.obj

# Default target
all: $(DLL) $(EXE)

# Rule to build the DLL
$(DLL): $(LIBOBJ)
    if not exist $(BINDIR) mkdir $(BINDIR)
    $(FC) $(DLLFLAGS) /Fe$(DLL) $(LIBOBJ)

# Rule to build the executable
$(EXE): $(TESTOBJ) $(LIB_IMP)
    if not exist $(BINDIR) mkdir $(BINDIR)
    $(FC) $(LINKFLAGS) /Fe$(EXE) $(TESTOBJ) $(LIB_IMP)

# Rule to compile onemod.f90 to object
$(BUILDDIR)\onemod.obj: $(LIBDIR)\onemod.f90
    if not exist $(BUILDDIR) mkdir $(BUILDDIR)
    $(FC) $(FFLAGS) /c $(LIBDIR)\onemod.f90 /Fo$(BUILDDIR)\onemod.obj

# Rule to compile twomods.f90 to object (depends on mod3)
$(BUILDDIR)\twomods.obj: $(LIBDIR)\twomods.f90 $(BUILDDIR)\onemod.obj
    if not exist $(BUILDDIR) mkdir $(BUILDDIR)
    $(FC) $(FFLAGS) /c $(LIBDIR)\twomods.f90 /Fo$(BUILDDIR)\twomods.obj

# Rule to compile sub1.f90 to object
$(BUILDDIR)\sub1.obj: $(LIBDIR)\sub1.f90
    if not exist $(BUILDDIR) mkdir $(BUILDDIR)
    $(FC) $(FFLAGS) /c $(LIBDIR)\sub1.f90 /Fo$(BUILDDIR)\sub1.obj

# Rule to compile sub2.f90 to object
$(BUILDDIR)\sub2.obj: $(LIBDIR)\sub2.f90
    if not exist $(BUILDDIR) mkdir $(BUILDDIR)
    $(FC) $(FFLAGS) /c $(LIBDIR)\sub2.f90 /Fo$(BUILDDIR)\sub2.obj

# Rule to compile main.f90 to object (depends on all modules)
$(TESTOBJ): $(TESTSRC) $(LIBOBJ)
    if not exist $(BUILDDIR) mkdir $(BUILDDIR)
    $(FC) $(FFLAGS) /c $(TESTSRC) /Fo$(TESTOBJ)

# Clean up
clean:
    if exist $(BUILDDIR) rmdir /S /Q $(BUILDDIR)
    if exist $(BINDIR) rmdir /S /Q $(BINDIR)

# Phony targets
.PHONY: all clean