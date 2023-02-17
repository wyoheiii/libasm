global ft_strcpy

ft_strcpy:   ;dest rardi, src rdx
  push rbp
  mov rbp, rsp
  sub rsp , 8
  mov QWORD[rbp - 8], 0
  mov rax, rdi
  jmp .L2
.LOOP:
  mov BYTE[rax + [rbp - 8]], [rsi + [rbp - 8]]
  inc [rbp - 8]
.L2:
  cmp BYTE[rdx + QWORD[rbp - 8]], 0
  jne .LOOP
  mov BYTE[rax + [rbp - 8]], 0
  add rsp, 8
  pop rbp
  ret