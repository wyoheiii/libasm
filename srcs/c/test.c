#include <unistd.h>
ssize_t ft_write(int fd, const void *buf,size_t n_byte){
  return write(fd, buf, n_byte);
}
int main(){
  ft_write(1,"a",1);
}