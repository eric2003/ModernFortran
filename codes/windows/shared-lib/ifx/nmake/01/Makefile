# nmake Makefile in root directory to build lib\myshared.dll and test\main.exe

# Compiler and tools
FC = ifx
FCFLAGS = /nologo /O2
LDFLAGS = /nologo
DLLFLAGS = /nologo /dll

# Directories
LIBDIR = lib
TESTDIR = test

# Source and output files
LIB_SRC = $(LIBDIR)\sub.f90
LIB_OBJ = $(LIBDIR)\sub.obj
LIB_DLL = $(LIBDIR)\myshared.dll
LIB_IMP = $(LIBDIR)\myshared.lib
TEST_SRC = $(TESTDIR)\main.f90
TEST_OBJ = $(TESTDIR)\main.obj
TEST_EXE = $(TESTDIR)\testprj.exe

# Default target
all: $(TEST_EXE)
	@echo === Build Complete ===
	@echo DLL $(LIB_DLL), import library $(LIB_IMP), and executable $(TEST_EXE) created.
	@echo Copying $(LIB_DLL) to $(TESTDIR)\ for runtime access...
	@copy $(LIB_DLL) $(TESTDIR)\myshared.dll >nul
	@echo LIB environment variable:
	@echo $(LIB)

# Rule to create DLL and import library
$(LIB_DLL) $(LIB_IMP): $(LIB_OBJ)
	@echo Creating DLL $(LIB_DLL) and import library $(LIB_IMP)...
	$(FC) $(DLLFLAGS) $(LIB_OBJ) /Fe$(LIB_DLL)

# Rule to compile lib\sub.f90 to object file
$(LIB_OBJ): $(LIB_SRC)
	@echo Compiling $(LIB_SRC)...
	$(FC) $(FCFLAGS) /c $(LIB_SRC) /Fo$(LIB_OBJ)

# Rule to create executable
$(TEST_EXE): $(TEST_OBJ) $(LIB_IMP)
	@echo Linking $(TEST_OBJ) with $(LIB_IMP)...
	$(FC) $(LDFLAGS) $(TEST_OBJ) $(LIB_IMP) /Fe$(TEST_EXE)

# Rule to compile test\main.f90 to object file
$(TEST_OBJ): $(TEST_SRC)
	@echo Compiling $(TEST_SRC)...
	$(FC) $(FCFLAGS) /c $(TEST_SRC) /Fo$(TEST_OBJ)

# Clean target
clean:
	@echo Cleaning up...
	@del $(LIB_OBJ) $(LIB_DLL) $(LIB_IMP) $(TEST_OBJ) $(TEST_EXE) $(TESTDIR)\myshared.dll 2>nul

.PHONY: all clean