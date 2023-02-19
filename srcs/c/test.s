	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 1
	.globl	_f                              ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
## %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movb	$0, 2(%rdi)
	popq	%rbp
	retq
                                        ## -- End function
.subsections_via_symbols
