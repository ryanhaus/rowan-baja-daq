#include <stdio.h>
#include <test_lib.h>

int main()
{
    int a = 5, b = 7;

    int add_result = test_function_add(a, b);
    int sub_result = test_function_sub(a, b);

    printf("%i + %i = %i\n", a, b, add_result);
    printf("%i - %i = %i\n", a, b, sub_result);

    return 0;
}
