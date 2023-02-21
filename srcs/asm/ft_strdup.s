global _ft_strdup
extern _ft_strlen
extern _ft_strcpy
extern _malloc
_ft_strdup:   ; char *dup(char *):rdi
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov [rsp + 8], rdi
  call _ft_strlen
  lea rdi, [rax + 1]
  call _malloc
.check_null:
  test rax, rax
  je .ret
.strcpy:
  mov rdi, rax
  mov rsi, [rsp + 8]
  call _ft_strcpy
.ret:
  add rsp,16
  pop rbp
  ret
