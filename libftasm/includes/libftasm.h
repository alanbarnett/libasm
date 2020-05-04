/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftasm.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alan <alanbarnett328@gmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/04/12 17:53:36 by alan              #+#    #+#             */
/*   Updated: 2020/05/03 00:52:34 by alan             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTASM_H
# define LIBFTASM_H

#include <unistd.h>

int		ft_add(int a, int b);
int		ft_sub(int a, int b);

ssize_t	ft_read(int fd, const void *buf, size_t bytes);
ssize_t	ft_write(int fd, const void *str, size_t bytes);

size_t	ftasm_strlen(const char *str);

char	*ftasm_strcpy(char *dst, const char *src);
char	*ftasm_strdup(const char *str);

int		ftasm_strcmp(const char *dst, const char *src);

#endif
