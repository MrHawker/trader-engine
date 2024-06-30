CC=g++
CFLAGS= -Wall -std=c++17 -g -lgtest -lgtest_main
main: src/main.cpp
	$(CC) $^ $(CFLAGS) -o $@
sample_test: tests/sample_test.cpp
	$(CC) $^ $(CFLAGS) -o $@
	./sample_test