/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alan <alanbarnett328@gmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/04/12 17:53:36 by alan              #+#    #+#             */
/*   Updated: 2020/05/04 09:11:59 by abarnett         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

#include <unistd.h>

ssize_t	ft_read(int fd, const void *buf, size_t bytes);
ssize_t	ft_write(int fd, const void *str, size_t bytes);

size_t	ft_strlen(const char *str);

char	*ft_strcpy(char *dst, const char *src);
char	*ft_strdup(const char *str);

int		ft_strcmp(const char *dst, const char *src);

#endif
