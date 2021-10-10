CC=gcc
CFLAGS=-Wall -Wextra -pedantic -Wno-unused-variable -Wno-unused-command-line-argument -Wno-unused-parameter -Wfloat-conversion -O0 -ggdb -no-pie -lm

NASM=nasm
NASMFLAGS=-f elf64 -g -F DWARF

BIN=./bin/
SRC=./src/

LINALG=$(SRC)/linalg/vector.h $(SRC)/linalg/vector.c $(SRC)/linalg/vector.S


linalg: $(LINALG)
			$(CC) $(CFLAGS) $^ -o $@ $(LIBS)
	

clean:
	rm -f ./bin/*.o
	rm -f ./bin/main ./bin/tester
