#include <stdio.h>

#ifdef MYLIB_EXPORTS
#define MYLIB_API __declspec(dllexport)
#else
#define MYLIB_API __declspec(dllimport)
#endif

MYLIB_API void c_print_string(const char *str)
{
    printf("%s\n", str);
}