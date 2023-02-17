	.file	"test.c"
	.intel_syntax noprefix
	.text
	.globl	f
	.type	f, @function
f:
.LFB0:
	.cfi_startproc
	mov	rax, rdi
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rdi], dl
	ret
	.cfi_endproc
.LFE0:
	.size	f, .-f
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
