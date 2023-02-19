#include <stdlib.h>
#include <strings.h>
size_t ft_strlen(char *str){
  size_t len = 0;
  while(str[len])
    len++;
  return len;
}
char* ft_strcpy(char *d,const char *s){
  size_t i = 0;
  while(s[i]){
    d[i] = s[i];
    i++;
  }
  d[i] = '\0';
  return d;
}
char *ft_strdup(char *s){return ft_strcpy(malloc((sizeof(char) * ft_strlen(s)) + 1), s);}