SRC_PARSON= src/parson/parson.c

SRC_S= 	$(SRC_PARSON) \
	src/server/main.c \

SRC_C=  $(SRC_PARSON) \
	src/client/main.c \

OBJ_S=	$(SRC_S:.c=.o)
OBJ_C=  $(SRC_C:.c=.o)

~_S=	src/server/*~
~_C=	src/client/*~

NAME_S= serveur
NAME_C= client

INC=	include/

PARSON_INC= src/parson/

RM=	rm -rf

CFLAGS=-Wall -Wextra -Werror

CFLAGS +=-I $(INC) -I $(PARSON_INC)


all:	$(NAME_S) $(NAME_C)

$(NAME_S):	$(OBJ_S)
		gcc $(SRC_S) $(CFLAGS) -o $(NAME_S)
$(NAME_C):	$(OBJ_C)
		gcc $(SRC_C) $(CFLAGS) -o $(NAME_C)

clean:
		$(RM) $(OBJ_S)
		$(RM) $(OBJ_C)
		$(RM) $(~_S)
		$(RM) $(~_C)	

fclean:         clean
		$(RM) $(NAME_S)
		$(RM) $(NAME_C)

re:             fclean all
