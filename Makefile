##
## EPITECH PROJECT, 2018
## asm
## File description:
## asm
##

NAME		=	libasm.so

SRCS		=	strlen.asm \
				strchr.asm \
				memset.asm \
				memcpy.asm \
				strcmp.asm \
				strncmp.asm \
				strcasecmp.asm \
				memmove.asm \
				rindex.asm \
				strstr.asm \
				strpbrk.asm \
				strcspn.asm

ASMFLAGS	=	-f elf64

LDFLAGS		=	-shared

ASM		=	nasm

LD		=	ld

RM		=	rm -f

OBJS		=	$(SRCS:.asm=.o)

%.o: %.asm
		$(ASM) -o $@ $< $(ASMFLAGS)

all:		$(NAME)

$(NAME):	$(OBJS)
		$(LD) $(LDFLAGS) -o $(NAME) $(OBJS)

clean:
		$(RM) $(OBJS)

fclean:		clean
		$(RM) $(NAME)

re:		fclean all

.PHONY:		all clean fclean re