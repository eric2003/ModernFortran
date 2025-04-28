# Makefile for nmake to build a dynamic library and executable

# Compiler and linker settings
CC = icx
FC = ifx

# Flags
CFLAGS = /nologo /O2 /c
!IFNDEF CDEFS
CDEFS = -DMYLIB_EXPORTS
!ENDIF
!MESSAGE CDEFS is $(CDEFS)
FFLAGS = /nologo /O2 /c
DLLFLAGS = /nologo /DLL 
LINKFLAGS = /nologo

# Directories
LIBDIR = lib
TESTDIR = test
BUILDDIR = build
BINDIR = bin

# Target dynamic library and executable
DLL = $(BINDIR)\myshared.dll
LIB_IMP = $(BINDIR)\myshared.lib
EXE = $(BINDIR)\testprj.exe

# Source files
LIB_SRC = $(LIBDIR)\sub.c
TEST_SRC = $(TESTDIR)\main.f90

# Object files
LIB_OBJ = $(BUILDDIR)\sub.obj
TEST_OBJ = $(BUILDDIR)\main.obj
#link /DLL /OUT:./bin/sub.dll ./build/sub.obj

# Default target
all: $(DLL) $(EXE)

# Rule to build the dynamic library
$(DLL): $(LIB_OBJ)
	if not exist "$(BINDIR)" mkdir "$(BINDIR)"
#	$(FC) $(DLLFLAGS) /Fe$(DLL) $(LIB_OBJ)
	link $(DLLFLAGS) /OUT:$(DLL) $(LIB_OBJ)

# Rule to build the executable
$(EXE): $(TEST_OBJ) $(LIB_IMP)
    if not exist "$(BINDIR)" mkdir "$(BINDIR)"
    $(FC) $(LINKFLAGS) /Fe$(EXE) $(TEST_OBJ) $(LIB_IMP)

# Rule to compile C source to object
$(LIB_OBJ): $(LIB_SRC)
    if not exist "$(BUILDDIR)" mkdir "$(BUILDDIR)"
    $(CC) $(CFLAGS) $(CDEFS) /Fo$(LIB_OBJ) $(LIB_SRC)

# Rule to compile Fortran source to object
$(TEST_OBJ): $(TEST_SRC)
    if not exist "$(BUILDDIR)" mkdir "$(BUILDDIR)"
    echo Compiling $(TEST_SRC) to $(TEST_OBJ)
    $(FC) $(FFLAGS) /Fo$(TEST_OBJ) $(TEST_SRC)

# Clean up
clean:
    if exist "$(BUILDDIR)" rmdir /S /Q "$(BUILDDIR)"
    if exist "$(BINDIR)" rmdir /S /Q "$(BINDIR)"

# Phony targets
.PHONY: all clean