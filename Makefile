# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kczech <kczech@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/05 15:50:06 by abouchfa          #+#    #+#              #
#    Updated: 2023/02/25 11:42:55 by kczech           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fractol

CFLAGS = cc -Wall -Wextra -Werror

MLX = mlx/libmlx.a -lm -framework OpenGL -framework AppKit

CFILE = fractol.c \
		utils/draw.c \
		utils/libft_funs.c \
		utils/maths.c \
		utils/hooks.c \

all : $(NAME)

$(NAME) : $(CFILE)
	$(CFLAGS) $(CFILE) $(MLX) -o $(NAME)

clean :
	rm -f $(NAME)

fclean:	clean

re : clean all