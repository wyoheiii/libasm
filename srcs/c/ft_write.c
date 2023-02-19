#include <unistd.h>
ssize_t ft_write(int fd, const void *buf,size_t n_byte){
  return write(fd, buf, n_byte);
}