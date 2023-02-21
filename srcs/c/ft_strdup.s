	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 1
	.globl	_ft_strdup                      ## -- Begin function ft_strdup
	.p2align	4, 0x90
_ft_strdup:                             ## @ft_strdup
## %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	_ft_strlen
	leaq	1(%rax), %rdi
	callq	_malloc
	testq	%rax, %rax
	je	LBB0_1
## %bb.2:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_ft_strcpy
	jmp	LBB0_3
LBB0_1:
	xorl	%eax, %eax
LBB0_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
                                        ## -- End function
.subsections_via_symbols
