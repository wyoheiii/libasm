	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 1
	.globl	_ft_write                       ## -- Begin function ft_write
	.p2align	4, 0x90
_ft_write:                              ## @ft_write
## %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_write
	popq	%rbp
	retq
                                        ## -- End function
.subsections_via_symbols
