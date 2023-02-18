#include <string.h>
char* ft_strcpy(char *d,const char *s){
  size_t i = 0;
  while(s[i]){
    d[i] = s[i];
    i++;
  }
  d[i] = '\0';
  return d;
}