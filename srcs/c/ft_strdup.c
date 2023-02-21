#include <stdlib.h>
#include <strings.h>
#include "asm.h"
char *ft_strdup(char *s){
  char *d = malloc((sizeof(char) * ft_strlen(s)) + 1);
  if(d == NULL)
    return NULL;
  return ft_strcpy(d, s);
}