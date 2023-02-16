global ft_strlen

ft_strlen:
  push rbp
  mov rbp,rsp
  mov [rbp - 24],rdi
  mov qword[rbp - 8], 0
  jmp .L2:
.L3:
  add qword[rbp - 8], 1
.L2:
  mov rdx, [rbp - 24]
  mov rax, [rbp - 8]
  add rax,rdx
  movzx eax, byte[rax]
  test al,al
  jne .L3
  mov rax, [rbp - 8]
  pop rbp
  ret