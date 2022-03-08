# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jeekim <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/09 15:03:42 by jeekim            #+#    #+#              #
#    Updated: 2022/02/17 16:31:54 by jeekim           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = gcc
CCFLAGS = -Wall -Wextra -Werror
AR = ar
ARFLAGS = rcs
RM = rm -f

SRCS = cspdiu.c \
	   ft_printf.c \
	   xX.c \
	   basic.c \
	   nbr.c
OBJS = $(SRCS:.c=.o)

all : $(NAME)

$(NAME) : $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

.c.o : $(SRCS)
	$(CC) $(CCFLAG) -c $^

clean :
	$(RM) $(OBJS)

fclean : clean
	$(RM) $(NAME)

re : fclean all

.PHONY : all clean fclean re
