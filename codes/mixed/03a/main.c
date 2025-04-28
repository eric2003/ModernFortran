#include <stdio.h>
#include <string.h>

extern void print_character_(char* str, int len);

int main(int argc, char *argv[])
{
    char str[20] = "Hello from C";
    int len = strlen(str);

    print_character_(str, len);

    return 0;
}
