#ifndef ASM_H
#define ASM_H

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <errno.h>
#include <string.h>

char *ft_strcpy(char *d,const char *s);
size_t ft_strlen(char *s);
int ft_strcmp(const char *s1,const char *s2);
ssize_t ft_write(int fd, const void *buf,size_t n_byte);
#endif