	.file	"test.c"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	f
	.type	f, @function
f:
.LFB0:
	.cfi_startproc
	mov	rax, rdi
	mov	BYTE PTR 2[rdi], 0
	ret
	.cfi_endproc
.LFE0:
	.size	f, .-f
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
