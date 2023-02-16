
	.intel_syntax noprefix
	.text
	.globl	ft_strlen
	.type	ft_strlen, @function
ft_strlen:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -8[rbp], 0
	jmp	.L2
.L3:
	add	QWORD PTR -8[rbp], 1
.L2:
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L3
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret