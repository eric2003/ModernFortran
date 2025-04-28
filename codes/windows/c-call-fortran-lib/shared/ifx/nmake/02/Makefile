# Makefile for nmake to build a DLL and executable with ifx and icx

# Compilers and flags
FC = ifx
CC = icx
FFLAGS = /nologo /O2 /module:build/
CFLAGS = /nologo /O2
DLLFLAGS = /nologo /DLL /module:build/
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
TESTSRC = $(TESTDIR)\main.c

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
    $(CC) $(LINKFLAGS) /Fe$(EXE) $(TESTOBJ) $(LIB_IMP)

# Rule to compile onemod.f90 to object
$(LIBOBJ): $(LIBSRC)
    if not exist $(BUILDDIR) mkdir $(BUILDDIR)
    $(FC) $(FFLAGS) /c $(LIBSRC) /Fo$(LIBOBJ)

# Rule to compile main.c to object
$(TESTOBJ): $(TESTSRC)
    if not exist $(BUILDDIR) mkdir $(BINDIR)
    $(CC) $(CFLAGS) /c $(TESTSRC) /Fo$(TESTOBJ)

# Clean up
clean:
    if exist $(BUILDDIR) rmdir /S /Q $(BUILDDIR)
    if exist $(BINDIR) rmdir /S /Q $(BINDIR)

# Phony targets
.PHONY: all clean