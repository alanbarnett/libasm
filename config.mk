# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    config.mk                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alan <alanbarnett328@gmail.com>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/08 17:08:32 by alan              #+#    #+#              #
#    Updated: 2020/05/04 06:55:16 by abarnett         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Project
NAME :=			libasm.a

ifeq ($(shell uname -s),Darwin)
	SRCS_DIR :=		macos_srcs
	BINARY_FMT :=	macho64
endif
ifeq ($(shell uname -s),Linux)
	SRCS_DIR :=		linux_srcs
	BINARY_FMT :=	elf64
endif

INCLUDE_DIRS +=	-Iincludes
