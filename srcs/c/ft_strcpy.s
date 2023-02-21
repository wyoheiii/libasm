	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 1
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
	je	LBB0_3
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movb	%dl, (%rax,%rcx)
	movzbl	1(%rsi,%rcx), %edx
	addq	$1, %rcx
	testb	%dl, %dl
	jne	LBB0_1
LBB0_3:
	movb	$0, (%rax,%rcx)
	popq	%rbp
	retq
                                        ## -- End function
.subsections_via_symbols
