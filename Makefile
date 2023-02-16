SRCS = *.s
OBJS = $(SRCS:=.o)
NAME = libasm.a
NASM = #
NASM_OPTION =
RM = rm -f
#all
clean :
		$(RM) $(OBJS)
fclean : clean
		$(RM) $(NAME)
#re