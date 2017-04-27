

.PHONY: all clean

read: bin build build/src/deposit.o build/src/main.o 
	gcc build/src/deposit.o build/src/main.o -o bin/deposit-calc

build/src/deposit.o: src/deposit.c
	gcc -Wall -Werror -c src/deposit.c -o build/src/deposit.o

build/src/main.o: src/main.c
	gcc -Wall -Werror -c src/main.c -o build/src/main.o

clean:
	rm -rf build/src/*.o bin/* build/test/*.o

mkD:
	mkdir bin
	mkdir build
	mkdir build/src
	mkdir build/test

rmD:
	rm -r bin
	rm -r build
	
bin:
	test ! -d bin && mkdir bin

build: 
	test ! -d build && mkdir build
	test ! -d build/src && mkdir build/src
	test ! -d build/test && mkdir build/test

test: build/test/deposit_test.o build/test/validation_test.o build/test/main.o
	gcc build/test/deposit_test.o build/test/validation_test.o build/test/main.o -o bin/deposit-calc-test

build/test/deposit_test.o: test/deposit_test.c
	gcc -I thirdparty -c test/deposit_test.c -o build/test/deposit_test.o 

build/test/validation_test.o: test/validation_test.c
	gcc -I thirdparty -c test/validation_test.c -o build/test/validation_test.o

build/test/main.o: test/main.c
	gcc -I thirdparty -c test/main.c -o build/test/main.o
