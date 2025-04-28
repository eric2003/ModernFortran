FC = ifx
FFLAGS = /O2 /Qmkl

SRCS = main.f90
OBJS = main.obj
TARGET = main.exe

all: $(TARGET)

$(TARGET): $(OBJS)
    $(FC) $(FFLAGS) /exe:$(TARGET) $(OBJS)

main.obj: main.f90
    $(FC) $(FFLAGS) /c main.f90

clean:
    del /q $(OBJS) $(TARGET)

.PHONY: all clean