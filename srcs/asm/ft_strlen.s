global _ft_strlen

_ft_strlen:
  push rbp                 ; push base ptr rsp--
  mov rbp,rsp              ; baseptr = stack ptr
  xor rax, rax             ; i = 0;
  jmp .L2                  ;
.L3:
  inc rax                  ; i + 1
.L2:
  cmp BYTE[rdi + rax], 0   ; flag = str + i != 0
  jne .L3                  ; if(flag) jump l3
  pop rbp                  ; pop rbp rsp++
  ret                      ; return i