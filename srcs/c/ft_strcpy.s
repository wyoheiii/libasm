	.file	"ft_strcpy.c"
	.globl	ft_strcpy
	.type	ft_strcpy, @function
ft_strcpy:
	movzx	ecx, BYTE PTR [rsi]
	mov	rax, rdi
	test	cl, cl
	je	.L4
	xor	edx, edx
.L3:
	mov	BYTE PTR [rax+rdx], cl
	add	rdx, 1
	movzx	ecx, BYTE PTR [rsi+rdx]
	test	cl, cl
	jne	.L3
	add	rdx, rax
	mov	BYTE PTR [rdx], 0
	ret
.L4:
	mov	rdx, rdi
	mov	BYTE PTR [rdx], 0
	ret
