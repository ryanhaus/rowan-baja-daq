#include <criterion/criterion.h>
#include <test_lib.h>

TestSuite(test_lib);

Test(test_lib, test_add)
{
    cr_assert(test_function_add(5, 7) == 12, "Expected 5+7 = 12.");
    cr_assert(test_function_add(5, -2) == 3, "Expected 5+(-2) = 3.");
}

Test(test_lib, test_sub)
{
    cr_assert(test_function_sub(5, 7) == -2, "Expected 5-7 = -2.");
    cr_assert(test_function_sub(5, -2) == 7, "Expected 5-(-2) = 7.");
}
