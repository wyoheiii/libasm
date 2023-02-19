	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 1
	.globl	_ft_read                        ## -- Begin function ft_read
	.p2align	4, 0x90
_ft_read:                               ## @ft_read
## %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_read
	popq	%rbp
	retq
                                        ## -- End function
.subsections_via_symbols
