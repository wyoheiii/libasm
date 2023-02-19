SRCS =$(wildcard *.s)
OBJS = $(SRCS:.s=.o)
NASM = nasm
NASMFLAGS = -f macho64
RM = rm -f

all :$(OBJS)
%.o:%.s
	$(NASM) $(NASMFLAGS) $^


clean:
	$(RM) $(OBJS)

fclean: clean

.PHONY: all clean flcrean