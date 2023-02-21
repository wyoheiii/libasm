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
.subsections_via_symbols
