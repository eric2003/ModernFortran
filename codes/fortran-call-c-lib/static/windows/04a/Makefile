ifeq ($(OS),Windows_NT)
    $(info OS = $(OS))
    TARGET_ARCH ?= x86_64
else
    HOST_ARCH   := $(shell uname -m)
    $(info WARNING - HOST_ARCH = $(HOST_ARCH))
endif

#CUR_DIR := $(shell pwd)
PROG    := testprj
CCFLAGS :=
LDFLAGS :=
FC      := gfortran
FFLAGS  := -O3 -Wall

# Target rules
.PHONY: all clean
all: $(PROG)

$(PROG):
	dir
	@echo "haha"
	@echo $(CUR_DIR)
	icx -c sub.c
	lib /OUT:sub.lib sub.obj

clean :
	rm *.obj
	rm *.lib