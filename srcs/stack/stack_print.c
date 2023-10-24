/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   stack_print.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nicolas <nicolas@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/10 16:29:14 by nprudenc          #+#    #+#             */
/*   Updated: 2023/10/24 15:49:14 by nicolas          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "stacks.h"
#include <stdio.h>

void	print_stack(t_stack *stack)
{
	t_dlist	*temp;
	
	temp = stack->top;
	ft_printf("*********\n");
	while (temp)
	{
		printf("*%4d   *\n", temp->value);
		temp = temp->next;
	}
	ft_printf("*********\n");
}