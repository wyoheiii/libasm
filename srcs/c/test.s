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
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
## %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	L_.str(%rip), %rsi
	movl	$1, %edx
	movl	$1, %edi
	callq	_ft_write
	xorl	%eax, %eax
	popq	%rbp
	retq
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"a"

.subsections_via_symbols
