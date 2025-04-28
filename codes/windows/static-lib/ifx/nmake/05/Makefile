# nmake Makefile in root directory to build lib\mods.lib and test\main.exe

# Compiler and tools
FC = ifx
FCFLAGS = /nologo /O2
LDFLAGS = /nologo
LIBTOOL = lib
LIBFLAGS = /nologo /out:lib\mods.lib

# Directories
LIBDIR = lib
TESTDIR = test

# Source and output files
LIB_SRC = $(LIBDIR)\onemod.f90 $(LIBDIR)\twomods.f90
LIB_OBJS = $(LIBDIR)\onemod.obj $(LIBDIR)\twomods.obj
LIB_MODS = $(LIBDIR)\mod1.mod $(LIBDIR)\mod2.mod $(LIBDIR)\mod3.mod
LIB_OUT = $(LIBDIR)\mods.lib
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
$(LIB_OUT): $(LIB_OBJS)
	@echo Creating static library $(LIB_OUT)...
	$(LIBTOOL) $(LIBFLAGS) $(LIB_OBJS)

# Rule to compile lib\onemod.f90 to object and module files
$(LIBDIR)\onemod.obj $(LIBDIR)\mod3.mod: $(LIBDIR)\onemod.f90
	@echo Compiling $(LIBDIR)\onemod.f90...
	$(FC) $(FCFLAGS) /c $(LIBDIR)\onemod.f90 /Fo$(LIBDIR)\onemod.obj /module:$(LIBDIR)

# Rule to compile lib\twomods.f90 to object and module files
$(LIBDIR)\twomods.obj $(LIBDIR)\mod1.mod $(LIBDIR)\mod2.mod: $(LIBDIR)\twomods.f90 $(LIBDIR)\mod3.mod
	@echo Compiling $(LIBDIR)\twomods.f90...
	$(FC) $(FCFLAGS) /c $(LIBDIR)\twomods.f90 /Fo$(LIBDIR)\twomods.obj /module:$(LIBDIR)

# Rule to create executable
$(TEST_EXE): $(TEST_OBJ) $(LIB_OUT)
	@echo Linking $(TEST_OBJ) with $(LIB_OUT)...
	$(FC) $(LDFLAGS) $(TEST_OBJ) $(LIB_OUT) /Fe$(TEST_EXE)

# Rule to compile test\main.f90 to object file
$(TEST_OBJ): $(TEST_SRC) $(LIB_MODS)
	@echo Compiling $(TEST_SRC)...
	$(FC) $(FCFLAGS) /c $(TEST_SRC) /Fo$(TEST_OBJ) /module:$(LIBDIR)

# Clean target
clean:
	@echo Cleaning up...
	@del $(LIB_OBJS) $(LIB_MODS) $(LIB_OUT) $(TEST_OBJ) $(TEST_EXE) 2>nul

.PHONY: all clean