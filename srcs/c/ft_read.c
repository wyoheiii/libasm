#include <unistd.h>

ssize_t ft_read(int fd, void* buf, size_t n_byte){
  return read(fd, buf, n_byte);
}