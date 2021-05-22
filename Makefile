test: test.o
	g++ test.o -o test

test.o: Test.cpp math/Bits.hpp math/Dir.hpp math/Matrix.hpp
	g++ -I math/ -Wall -Wextra -std=c++11 -g -c Test.cpp -o test.o

clean:
	rm test.o test