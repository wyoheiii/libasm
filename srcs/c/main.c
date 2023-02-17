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

int main(){
  strlen_test();
}