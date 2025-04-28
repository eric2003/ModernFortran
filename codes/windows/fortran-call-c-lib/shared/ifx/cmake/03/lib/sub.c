#ifdef MYLIB_EXPORTS
#define MYLIB_API __declspec(dllexport)
#else
#define MYLIB_API __declspec(dllimport)
#endif

MYLIB_API int c_add_integer(int *a, int *b)
{
    return *a + *b;
}