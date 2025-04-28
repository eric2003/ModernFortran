#include <stdio.h>

__declspec(dllexport) void c_print_string(char *str)
{
    printf("%s\n", str);
}