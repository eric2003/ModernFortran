#include <stdio.h>
extern int c_add_integer(int *a, int *b);

int main(int argc, char *argv[])
{
    int a = 1, b = 2;
    int c = add_integer( &a, &b );
    printf("c_add_integer c=%d\n",c);

    return 0;
}
