INCLUDE=
LIB=
LINK=-lm

CC=gcc
CFLAGS=-ansi -Wall -O3 $(LIB) $(INCLUDE) -funroll-loops

TARGET=main

all: $(TARGET)

%: %.c
	$(CC) $(CFLAGS) -o $@ $< $(LINK)

clean :
	rm -f *.o *~ core $(TARGET)
