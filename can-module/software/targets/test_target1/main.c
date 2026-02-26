#include <stdio.h>
#include <test_lib.h>

int main()
{
    int a = 5, b = 7;
    int result = test_function(a, b);

    printf("test_target1: %i\n", result);

    return 0;
}
