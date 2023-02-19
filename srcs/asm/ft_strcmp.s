global _ft_strcmp
%define s1_pos [rdi + rcx]
%define s2_pos [rsi + rcx]

_ft_strcmp: ;s1 rdi, src rsi
  push rbp
  mov rbp ,rsp
  mov rcx, 0
.IF1:
  movzx eax, BYTE s1_pos
  movzx edx, BYTE s2_pos
  cmp al, dl
  jne .ret
.IF2:
  cmp al, 0
  je .ret
.IF3:
  cmp dl, 0
  je .ret
  inc rcx
  jmp .IF1

.ret:
  sub eax, edx
  pop rbp
  ret