#include <stdio.h>
#include <string.h>

extern void print_character(char* str);

int main(int argc, char *argv[])
{
    char str[20] = "Hello from C";
    int len = strlen(str);
    printf("len=%d",len);

    print_character(str);

    printf("len=%d",len);

    return 0;
}