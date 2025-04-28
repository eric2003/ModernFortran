# nmake Makefile in root directory to build lib/sub.lib and test/main.exe

# Compiler and tools
FC = ifx
FCFLAGS = /nologo /O2
LDFLAGS = /nologo
LIBTOOL = lib
LIBFLAGS = /nologo /out:lib\sub.lib

# Directories
LIBDIR = lib
TESTDIR = test

# Source and output files
LIB_SRC = $(LIBDIR)\sub.f90
LIB_OBJ = $(LIBDIR)\sub.obj
LIB_OUT = $(LIBDIR)\sub.lib
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

# Rule to compile lib/sub.f90 to object file
$(LIB_OBJ): $(LIB_SRC)
	@echo Compiling $(LIB_SRC)...
	$(FC) $(FCFLAGS) /c $(LIB_SRC) /Fo$(LIB_OBJ)

# Rule to create executable
$(TEST_EXE): $(TEST_OBJ) $(LIB_OUT)
	@echo Linking $(TEST_OBJ) with $(LIB_OUT)...
	$(FC) $(LDFLAGS) $(TEST_OBJ) $(LIB_OUT) /Fe$(TEST_EXE)

# Rule to compile test/main.f90 to object file
$(TEST_OBJ): $(TEST_SRC)
	@echo Compiling $(TEST_SRC)...
	$(FC) $(FCFLAGS) /c $(TEST_SRC) /Fo$(TEST_OBJ)

# Clean target
clean:
	@echo Cleaning up...
	@del $(LIB_OBJ) $(LIB_OUT) $(TEST_OBJ) $(TEST_EXE) 2>nul

.PHONY: all clean