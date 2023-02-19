#include "asm.h"
void len(){
  size_t size = (size_t)INT_MAX;
  char *a = malloc(size + 3ul);
  memset(a,'a', size + 2ul);
  a[size + 2ul] = '\0';
  printf("%zu\n",ft_strlen(""));
  printf("%zu\n",ft_strlen("a"));
  printf("%zu\n",ft_strlen("ab"));
  printf("%zu\n",ft_strlen(a));
  printf("%d\n",INT_MAX);
  free(a);
}
void cpy(){
  char s3[6] = "ccccc";
  char s1[2] = "a";
  char s2[7] = "bbbbbb";
  printf("s1    :%p\n",s1);
  printf("strcpy:%p\n",ft_strcpy(s1, s2));
  printf("s1:%s\n", s1);
  printf("s2:%s\n", s2);
  printf("s3:%s\n", s3);
}
int main(){
  len();
  cpy();
}