NAME :=	add
OBJS :=	main.o add.o

.PHONY:		all clean fclean re

all:		$(NAME)

$(NAME):	$(OBJS)
	gcc $(OBJS) -o $(NAME)

main.o:		main.c
	gcc -c main.c

add.o:		add.s
	nasm -f elf64 add.s

clean:
	@- rm $(OBJS)

fclean:		clean
	@- rm $(NAME)

re:			fclean all
