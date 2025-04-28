# nmake Makefile in root directory to build lib\onemod.lib and test\main.exe

# Compiler and tools
FC = ifx
FCFLAGS = /nologo /O2
LDFLAGS = /nologo
LIBTOOL = lib
LIBFLAGS = /nologo /out:lib\onemod.lib

# Directories
LIBDIR = lib
TESTDIR = test

# Source and output files
LIB_SRC = $(LIBDIR)\onemod.f90
LIB_OBJ = $(LIBDIR)\onemod.obj
LIB_MOD = $(LIBDIR)\onemod.mod
LIB_OUT = $(LIBDIR)\onemod.lib
TEST_SRC = $(TESTDIR)\main.f90
TEST_OBJ = $(TESTDIR)\main.obj
TEST_EXE = $(TESTDIR)\testprj.exe

# Default target
all: $(LIB_OUT) $(TEST_EXE)
	@echo === Build Complete ===
	@echo Static library $(LIB_OUT) and executable $(TEST_EXE) created.
	@echo LIB environment variable:
	@echo $(LIB)

# Rule to create static library
$(LIB_OUT): $(LIB_OBJ)
	@echo Creating static library $(LIB_OUT)...
	$(LIBTOOL) $(LIBFLAGS) $(LIB_OBJ)

# Rule to compile lib\onemod.f90 to object and module files
$(LIB_OBJ) $(LIB_MOD): $(LIB_SRC)
	@echo Compiling $(LIB_SRC)...
	$(FC) $(FCFLAGS) /c $(LIB_SRC) /Fo$(LIB_OBJ) /module:$(LIBDIR)

# Rule to create executable
$(TEST_EXE): $(TEST_OBJ) $(LIB_OUT)
	@echo Linking $(TEST_OBJ) with $(LIB_OUT)...
	$(FC) $(LDFLAGS) $(TEST_OBJ) $(LIB_OUT) /Fe$(TEST_EXE)

# Rule to compile test\main.f90 to object file
$(TEST_OBJ): $(TEST_SRC) $(LIB_MOD)
	@echo Compiling $(TEST_SRC)...
	$(FC) $(FCFLAGS) /c $(TEST_SRC) /Fo$(TEST_OBJ) /module:$(LIBDIR)

# Clean target
clean:
	@echo Cleaning up...
	@del $(LIB_OBJ) $(LIB_MOD) $(LIB_OUT) $(TEST_OBJ) $(TEST_EXE) 2>nul

.PHONY: all clean