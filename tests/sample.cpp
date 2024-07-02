#include <iostream>
#include <gtest/gtest.h>
using namespace std;

TEST(BasicTest, BasicAssertions) {
  EXPECT_STRNE("kendrick", "drake");
  EXPECT_EQ(7 * 5, 35);
}