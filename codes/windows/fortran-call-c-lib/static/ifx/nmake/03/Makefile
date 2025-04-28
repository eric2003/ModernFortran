# Makefile for nmake to build a static library and executable

# Compiler and linker settings
CC = icx
FC = ifx
AR = lib

# Flags
CFLAGS = /nologo /O2 /c
FFLAGS = /nologo /O2 /c
ARFLAGS = /nologo /out:
LINKFLAGS = /nologo

# Directories
LIBDIR = lib
TESTDIR = test
BUILDDIR = build
BINDIR = bin

# Target static library and executable
STATIC_LIB = $(BINDIR)\mystatic.lib
EXE = $(BINDIR)\testprj.exe

# Source files
LIB_SRC = $(LIBDIR)\sub.c
TEST_SRC = $(TESTDIR)\main.f90

# Object files
LIB_OBJ = $(BUILDDIR)\sub.obj
TEST_OBJ = $(BUILDDIR)\main.obj

# Default target
all: $(STATIC_LIB) $(EXE)

# Rule to build the static library
$(STATIC_LIB): $(LIB_OBJ)
    if not exist "$(BINDIR)" mkdir "$(BINDIR)"
    $(AR) $(ARFLAGS)$(STATIC_LIB) $(LIB_OBJ)

# Rule to build the executable
$(EXE): $(TEST_OBJ) $(STATIC_LIB)
    if not exist "$(BINDIR)" mkdir "$(BINDIR)"
    $(FC) $(LINKFLAGS) /Fe$(EXE) $(TEST_OBJ) $(STATIC_LIB)

# Rule to compile C source to object
$(LIB_OBJ): $(LIB_SRC)
    if not exist "$(BUILDDIR)" mkdir "$(BUILDDIR)"
    $(CC) $(CFLAGS) /Fo$(LIB_OBJ) $(LIB_SRC)

# Rule to compile Fortran source to object
$(TEST_OBJ): $(TEST_SRC)
    if not exist "$(BUILDDIR)" mkdir "$(BUILDDIR)"
    $(FC) $(FFLAGS) /Fo$(TEST_OBJ) $(TEST_SRC)

# Clean up
clean:
    if exist "$(BUILDDIR)" rmdir /S /Q "$(BUILDDIR)"
    if exist "$(BINDIR)" rmdir /S /Q "$(BINDIR)"

# Phony targets
.PHONY: all clean