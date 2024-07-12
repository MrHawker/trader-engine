cmake_minimum_required(VERSION 3.14)

#setting the compiler path

project(trader-engine)

# GoogleTest requires at least C++14
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#THIS PREFIX PATH MUST BE CHANGED INTO WHERE YOU INSTALLED YOUR GRPC | NOT NEEDED HERE FOR REMINDER
# list(APPEND CMAKE_PREFIX_PATH "/home/mrhawker/.local/grpc/lib/cmake")
# find_package(absl CONFIG REQUIRED)
# find_package(utf8_range CONFIG REQUIRED)
# find_package(Protobuf CONFIG REQUIRED)

message(STATUS "Using protobuf ${Protobuf_VERSION}")

include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/f8d7d77c06936315286eb55f8de22cd23c188571.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

enable_testing()

add_executable(
  sample
  tests/sample.cpp
)

target_link_libraries(
  sample
  GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(sample)