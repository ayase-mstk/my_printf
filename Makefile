NAME = libftprintf.a

SRCS = ft_printf.c print_char.c print_decimal.c \
		print_lowerhex.c print_pointer.c print_string.c \
		print_unsignedint.c print_upperhex.c print_other.c

OBJ_DIR = ./obj/
OBJS = $(SRCS:%.c=$(OBJ_DIR)%.o)

CC = cc

CFLAGS = -Wall -Wextra -Werror

AR = ar crs

RM = rm -rf

all: $(OBJ_DIR) $(NAME)

$(OBJ_DIR):
	mkdir -p obj

$(OBJ_DIR)%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(NAME):	$(OBJS)
	$(AR) $(NAME) $(OBJS)

clean:
	$(RM) $(OBJ_DIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re