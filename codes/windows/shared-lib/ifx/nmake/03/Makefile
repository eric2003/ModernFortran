# Makefile for nmake to build a DLL and executable

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
LIBSRC = $(LIBDIR)\onemod.f90
TESTSRC = $(TESTDIR)\main.f90

# Object files
LIBOBJ = $(BUILDDIR)\onemod.obj
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

# Rule to compile lib source to object
$(LIBOBJ): $(LIBSRC)
    if not exist $(BUILDDIR) mkdir $(BUILDDIR)
    $(FC) $(FFLAGS) /c $(LIBSRC) /Fo$(LIBOBJ)

# Rule to compile test source to object
$(TESTOBJ): $(TESTSRC)
    if not exist $(BUILDDIR) mkdir $(BUILDDIR)
    $(FC) $(FFLAGS) /c $(TESTSRC) /Fo$(TESTOBJ)

# Clean up
clean:
    if exist $(BUILDDIR) rmdir /S /Q $(BUILDDIR)
    if exist $(BINDIR) rmdir /S /Q $(BINDIR)

# Phony targets
.PHONY: all clean