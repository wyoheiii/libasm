DIR = srcs
ASMDIR = $(DIR)/asm
CDIR = $(DIR)/c
SRCSASM = $(ASMDIR)/*.s
SRCSC = $(CDIR)/*.c
OBJS = $(SRCSASM:.s=.o)
NAME = libasm.a
RM = rm -f

.PHONY: all clean fclean re bonus asm c test

all: asm $(NAME)

$(NAME):
		ar rcs $(NAME) $(OBJS)

asm:
	make all -C $(ASMDIR)

c:
	make all -C $(CDIR)

clean :
		make clean -C $(ASMDIR)
		make clean -C $(CDIR)

fclean : clean
		make fclean -C $(ASMDIR)
		make fclean -C $(CDIR)
		$(RM) $(NAME)

test: re
		gcc $(ASMDIR)/main.c $(NAME)
		./a.out
#		$(RM) a.out
		make fclean -C .

re: fclean all