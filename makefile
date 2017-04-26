

.PHONY: all clean

build/deposit.o:src/deposit.c
	gcc -Wall -Werror -c src/deposit.c -o build/deposit.o

build/main.o:src/main.c
	gcc -Wall -Werror -c src/main.c -o build/main.o

read: bin build build/deposit.o build/main.o 
	gcc build/deposit.o build/main.o -o bin/deposit-calc

clean:
	rm -rf build/*.o bin/*

mkD:
	mkdir bin
	mkdir build

rmD:
	rm -r bin
	rm -r build

bin:
	test ! -d bin && mkdir bin

build: 	
	test ! -d build && mkdir build
