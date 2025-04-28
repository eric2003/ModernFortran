# 编译器和编译选项
FC = gfortran
FFLAGS = -O3 -Wall

# 源文件目录和模块文件目录
SRCDIR = src
MODDIR = mod

# 源文件和目标文件列表
SRC = $(wildcard $(SRCDIR)/*.f90)
OBJ = $(patsubst $(SRCDIR)/%.f90, %.o, $(SRC))
MOD = $(patsubst $(SRCDIR)/%.f90, $(MODDIR)/%.mod, $(SRC))

# 默认目标：编译所有目标文件
all: $(MOD) $(OBJ)

# 模块文件的生成规则
$(MODDIR)/%.mod: $(SRCDIR)/%.f90
	$(FC) $(FFLAGS) -c $< -o $@

# 目标文件依赖于源文件和模块文件
%.o: $(SRCDIR)/%.f90 $(MODDIR)/%.mod
	$(FC) $(FFLAGS) -c $< -o $@

# 清除中间文件和目标文件
clean:
	rm -f $(OBJ) $(MOD)
