	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 1
	.globl	_ft_strlen                      ## -- Begin function ft_strlen
	.p2align	4, 0x90
_ft_strlen:                             ## @ft_strlen
## %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$-1, %rax
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpb	$0, 1(%rdi,%rax)
	leaq	1(%rax), %rax
	jne	LBB0_1
## %bb.2:
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_ft_strcpy                      ## -- Begin function ft_strcpy
	.p2align	4, 0x90
_ft_strcpy:                             ## @ft_strcpy
## %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movb	(%rsi), %dl
	xorl	%ecx, %ecx
	testb	%dl, %dl
	je	LBB1_3
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movb	%dl, (%rax,%rcx)
	movzbl	1(%rsi,%rcx), %edx
	addq	$1, %rcx
	testb	%dl, %dl
	jne	LBB1_1
LBB1_3:
	movb	$0, (%rax,%rcx)
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_ft_strdup                      ## -- Begin function ft_strdup
	.p2align	4, 0x90
_ft_strdup:                             ## @ft_strdup
## %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	callq	_ft_strlen
	leaq	1(%rax), %rdi
	callq	_malloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_ft_strcpy
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
                                        ## -- End function
.subsections_via_symbols
