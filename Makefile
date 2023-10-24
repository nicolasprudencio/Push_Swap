CC			=	cc
C_FLAGS		=	-Wall -Wextra -Werror -g3 -ggdb
LIBFT_DIR	=	./utils/libft/src
LIBS_LINK	=	-L $(LIBFT_DIR) -lm -lft
INCLUDE		=	-I ./includes $(LIBS_LINK)

STACK_SRCS	=	swap.c

STACK_SRCS	=	$(addprefix srcs/stack/,$(STACK_SRCS))

OBJS_DIR	=	objs
OBJS_ALL	=	$(addprefix $(OBJS_DIR)/,$(SRCS_SERVER:.c=.o))
STCKS_PTH	=	srcs/stack/

STCKS		=	$(addprefix $(STCKS_PTH), $(STCK_FILES))
STCK_FILES	=	stack_push.c ft_dladdtop.c ft_dladdbtm.c ft_dlnew.c stack_print.c stack_rotate.c ft_clear_dlist.c stack_rotate_reverse.c stack_swap.c stack_double_swap.c

MAIN		=	main.c

ANSI		=	\033[0
YELLOW		=	;33
GREEN		=	;32
RED			=	;31

all: $(OBJS_ALL) libft_make swap

libft_make:
	@make -C $(LIBFT_DIR)

$(OBJS_DIR)/%.o:%.c
	@mkdir -p $(@D)
	@$(CC) $(C_FLAGS) -c $< -o $@ $(INCLUDE)

swap: $(OBJS_ALL)
	@$(CC) $(C_FLAGS) $(OBJS_ALL) $(STCKS) $(MAIN) $(INCLUDE) -o push_swap
	@printf "%s$(ANSI)$(GREEN)m%-15s$(ANSI)m\n" "push_swap:" "Compiled"

clean:
	@rm -rf $(OBJS_DIR)

fclean: clean
	@rm -rf push_swap
	@make -C $(LIBFT_DIR) fclean

re: fclean all

.PHONY: all tests libft_make swap client clean f_clean re