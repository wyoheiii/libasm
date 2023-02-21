global _ft_read
extern ___error      ;errno no ptr kureru
_ft_read:    ; ssize_t ft_read(int fd, const void *buf,size_t n_byte) rdi,rsi,rdx
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov rax, 0x2000003 ;0x2000000 system call number
  syscall
  jae .ret   ; ~(CF) , systemcall err set cf
.error:
  mov [rsp], rax
  call ___error
  mov rdx, [rsp]
  mov [rax], rdx
  mov rax , -1
.ret:
  add rsp, 16
  pop rbp
  ret