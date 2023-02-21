#include "asm.h"
void lenn(){
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
void cpyy(){
  char s3[6] = "ccccc";
  char s1[2] = "a";
  char s2[7] = "bbbbbb";
  printf("s1    :%p\n",s1);
  printf("strcpy:%p\n",ft_strcpy(s1, s2));
  printf("s1:%s\n", s1);
  printf("s2:%s\n", s2);
  printf("s3:%s\n", s3);
}
void cmpp(){
  printf("a:b  :%d\n",ft_strcmp("a","b"));
  printf("aa:b  :%d\n",ft_strcmp("aa","b"));
  printf("a:bb  :%d\n",ft_strcmp("a","bb"));
  printf(":b  :%d\n",ft_strcmp("","bb"));
  printf("a:  :%d\n",ft_strcmp("a",""));
  printf(":  :%d\n",ft_strcmp("",""));
  printf("abc:cba  :%d\n",ft_strcmp("abc","cba"));
  printf("za:zb  :%d\n",ft_strcmp("za","zb"));
  printf("z:a  :%d\n",ft_strcmp("z","a"));

}
void writee(){
  size_t size = (size_t)INT_MAX;
  char *a = malloc(size + 3ul);
  memset(a,'a', size + 2ul);
  a[size + 2ul] = '\0';
  printf(":%ld\n", ft_write(1,"abcd", 4));
  printf(":%ld\n", ft_write(2,"abcd", 4));
  printf("err:%ld\n", ft_write(-1,"abcdefghi", 9));
  printf("strerr:%s\n",strerror(errno));
  printf("err:%ld\n", ft_write(1,a, ft_strlen(a)));
  printf("strerr:%s\n",strerror(errno));
  free(a);
}
void readd(){
  char buf[1000];
  int fd1 = open("./Dockerfile", O_RDONLY);
  int fd2 = open("a", O_RDONLY);
  ssize_t res1 = ft_read(fd1,buf, 1000);
  buf[res1] = '\0';
  printf("res1:%ld, %s\n",res1, buf);
  ssize_t res2 = ft_read(fd2,buf, 1000);
  printf("errno:%d, res2:%ld, %s\n",errno,res2, strerror(errno));
  close(fd1);
  close(fd2);
}
int main(){
  lenn();
  cpyy();
  cmpp();
  writee();
  readd();
}