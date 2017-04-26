.PHONY: all clean

bin/deposit.o:src/deposit.c
	gcc -Wall -Werror -c src/deposit.c -o bin/deposit.o

bin/main.o:src/main.c
	gcc -Wall -Werror -c src/main.c -o bin/main.o

read:bin/deposit.o bin/main.o 
	gcc bin/deposit.o bin/main.o -o build/deposit-calc

clean:
	rm -rf build/*.o bin/*

mkD:
	mkdir bin
	mkdir build



rmD:
	rm -r bin
	rm -r build
