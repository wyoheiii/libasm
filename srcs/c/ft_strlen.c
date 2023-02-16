#include <strings.h>
size_t ft_strlen(char *str){
  size_t len = 0;
  while(str[len])
    len++;
  return len;
}