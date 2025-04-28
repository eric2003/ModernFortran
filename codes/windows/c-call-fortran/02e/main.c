#include <stdio.h>
#include <string.h>

extern void for_print_character(char* str, int *i);

int main(int argc, char *argv[])
{
    char str[20] = "Hello from C";
    int len = strlen(str);
    int i=1234;
    printf("len=%d",len);


    for_print_character(str, &i);

    printf("len=%d",len);

    return 0;
}