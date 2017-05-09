# code.mk
#
# Copyright (c) 2014 Horst H. von Brand
# Bajo licencia MIT. Vea LICENSE-MIT para detalles

ALL	+= code/coin-changing code/tst-bs code/subset
INPUTS	+= $(CODE_SRC)
CLEAN	+= $(CODE_INPUT:.c=.o) $(CODE_EXTRA:.c=.o)
CLOBBER += code/coin-changing code/tst-bs code/subset

CODE_INPUT := code/binary-search.c code/insertion.c code/subset.c
CODE_EXTRA := code/coin-changing.c code/tst-bs.c

CC     := gcc
CFLAGS := -std=c99 -Wall

code/coin-changing: code/coin-changing.o
	$(CC) $(CFLAGS) -o $@ $^


code/tst-bs: code/tst-bs.o code/binary-search.o
	$(CC) $(CFLAGS) -o $@ $^

code/subset: code/subset.o
	$(CC) $(CFLAGS) -o $@ $^

code/tst-bs.o: code/binary-search.h
code/binary-search.o: code/binary-search.h

