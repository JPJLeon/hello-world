##
# @file Makefile
# @brief Tests for max-sum

CC	= clang
CFLAGS	= -O2 -Wall -g

ALL	= $(foreach I,1 2 3 4 5,tst-$I)
SRC	= $(foreach I,1 2 3 4 5,max-sum-$I.c)
OBJ	= $(SRC:.c=.o)

all: $(ALL)

tst-%: drive-max-sum.o max-sum-%.o
	$(CC) $(CFLAGS) -o $@ $^

drive-max-sum.o: max-sum.h
$(OBJ): max-sum.h

clean:
	rm -f drive-max-sum.o $(OBJ)

clobber: clean
	rm -f $(ALL)

.PHONY: all clean clobber
