CC=g++
CFLAGS= -Wall -std=c++17 -g -lgtest -lgtest_main
main: src/main.cpp
	$(CC) $^ $(CFLAGS) -o $@
test: tests/sample.cpp
	cmake -S . -B build
	cmake --build build
	cd build && ctest