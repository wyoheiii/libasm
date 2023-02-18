global _ft_strcpy

_ft_strcpy:   ;dest rdi, src rsi
  push rbp
  mov rbp, rsp
  mov rcx, 0
  jmp .L2
.LOOP:
  movzx edx , BYTE[rsi + rcx]
  mov BYTE[rdi + rcx], dl
  inc rcx
.L2:
  cmp BYTE[rsi + rcx], 0
  jne .LOOP
  mov BYTE[rdi + rcx], 0
  mov rax, rdi
  pop rbp
  ret