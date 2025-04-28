# Makefile 用于使用 Intel Fortran 编译器 (ifx) 构建 testprj.exe

# 编译器和链接器
FC = ifx
LD = ifx

# 编译器选项
FCFLAGS = -c

# 链接器选项，与命令行保持一致
LDFLAGS = -o testprj /link /subsystem:console

# 源文件、目标文件和库文件
SRC = main.f90
OBJ = main.obj
LIB = ../lib/sub.lib

# 目标可执行文件
EXE = testprj.exe

# 默认目标
all: $(EXE)

!MESSAGE Linking $(LIB)

# 链接目标文件和库文件生成可执行文件
$(EXE): $(OBJ) $(LIB)
	!MESSAGE Linking $(LIB)
	$(LD) $(OBJ) $(LIB) $(LDFLAGS)

# 编译源文件生成目标文件
$(OBJ): $(SRC)
	$(FC) $(FCFLAGS) $(SRC)

# 清理生成的文件
clean:
	del $(OBJ) $(EXE)

.PHONY: all clean