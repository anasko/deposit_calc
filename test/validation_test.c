#include "../thirdparty/ctest.h"

CTEST(suite1, test1) {
  int a=254,b=34;
  int result = inpData(b,a);
    int expected = 34;
    ASSERT_EQUAL(expected, result);
}

CTEST(suite1, test2) {
   int a=254,b=35;
   int result = inpData(b,a);
    int expected = 35;
    ASSERT_EQUAL(expected, result);
}

CTEST(suite1, test3) {
    int a=254,b=36;
   int result = inpData(b,a);
    int expected = 36;
    ASSERT_EQUAL(expected, result);
}
