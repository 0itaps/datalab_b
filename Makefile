#
# Makefile that builds btest and other helper programs for the CS:APP data lab
# 
CC = gcc
CFLAGS = -O -Wall
LIBS = -lm

all: btest fshow ishow

btest: ./src/btest.c ./src/bits.c ./src/decl.c ./tests/tests.c ./include/btest.h ./include/bits.h
	$(CC) $(CFLAGS) $(LIBS) -o btest -I./include ./src/bits.c ./src/btest.c ./src/decl.c ./tests/tests.c

fshow: ./src/fshow.c
	$(CC) $(CFLAGS) -o fshow ./src/fshow.c

ishow: ./src/ishow.c
	$(CC) $(CFLAGS) -o ishow ./src/ishow.c

# Forces a recompile. Used by the driver program. 
btestexplicit:
	$(CC) $(CFLAGS) $(LIBS) -o btest ./src/bits.c ./src/btest.c ./src/decl.c ./src/tests.c 

clean:
	rm -f *.o btest fshow ishow *~


