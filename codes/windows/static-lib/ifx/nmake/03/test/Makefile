# nmake Makefile to compile main.f90 and link with ../sub.lib

# Compiler and linker
FC = ifx
#FCFLAGS = /nologo /O2
#LDFLAGS = /nologo

FCFLAGS = /O2
LDFLAGS = 

# Source and output files
SRC = main.f90
OBJ = main.obj
EXE = testprj.exe
LIBSUB = ..\lib\sub.lib

# Default target
all: $(EXE)
	@echo === Build Complete ===
	@echo Executable $(EXE) created.
	@echo LIB environment variable:
	@echo $(LIB)

# Rule to create executable
$(EXE): $(OBJ) $(LIBSUB)
	@echo Linking $(OBJ) with $(LIBSUB)...
	$(FC) $(LDFLAGS) $(OBJ) $(LIBSUB) /Fe$(EXE)

# Rule to compile Fortran source to object file
$(OBJ): $(SRC)
	@echo Compiling $(SRC)...
	$(FC) $(FCFLAGS) /c $(SRC)

# Clean target
clean:
	@echo Cleaning up...
	@del $(OBJ) $(EXE) 2>nul

.PHONY: all clean