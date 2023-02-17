#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
void strlen_test(){
  size_t size = (size_t)INT_MAX;
  char *a = malloc(size + 3ul);
  memset(a,'a', size + 2ul);
  a[size + 2ul] = '\0';
  printf("%zu\n",ft_strlen(""));
  printf("%zu\n",ft_strlen("a"));
  printf("%zu\n",ft_strlen("ab"));
  printf("%zu\n",ft_strlen(a));
  free(a);
}
void strcpy_test(){
  char s1[] = "aaaaaa";
  char s2[] = "bbbbbb";
  printf("%s\n",ft_strcpy(s1, s2));
  printf("%s\n", s1);
}
int main(){
  strlen_test();
}