#include <iostream>
#include <gtest/gtest.h>
using namespace std;

TEST(HelloTest, BasicAssertions) {
  EXPECT_STRNE("kendrick", "drake");
  EXPECT_EQ(7 * 5, 35);
}