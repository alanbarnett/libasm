# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alan <alanbarnett328@gmail.com>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/08 17:06:44 by alan              #+#    #+#              #
#    Updated: 2020/04/12 17:55:43 by alan             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Configuration is done in config.mk, you shouldn't need to edit this file!

# Includes all needed variables
include config.mk

ASM_SRCS :=		$(wildcard $(SRCS_DIR)/*.s)
ASM_OBJS :=		$(patsubst %.s,%.o,$(ASM_SRCS))

.PHONY:			all clean fclean re

all: tags $(NAME)

tags: $(ASM_SRCS)
	@- ctags -R

$(NAME): $(ASM_OBJS)
	ar rc $(NAME) $(ASM_OBJS)
	ranlib $(NAME)

%.o: %.s Makefile
	nasm -f elf64 $<

clean:
	@- $(RM) $(ASM_OBJS)

fclean: clean
	@- $(RM) $(NAME)

re: fclean all
