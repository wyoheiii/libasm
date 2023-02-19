SRCS =$(wildcard *.c)
ASMS = $(SRCS:.c=.s)
CC = gcc
CFLAGS = -S -fno-asynchronous-unwind-tables -O
RM = rm -f

all:$(ASMS)

%.s:%.c
	$(CC) $(CFLAGS) $^


clean:
		$(RM) $(ASMS)

fclean: clean

.PHONY: all clean fclean