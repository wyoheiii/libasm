	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 1
	.globl	_ft_strcmp                      ## -- Begin function ft_strcmp
	.p2align	4, 0x90
_ft_strcmp:                             ## @ft_strcmp
## %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rax), %edx
	movsbl	(%rsi,%rax), %ecx
	testl	%ecx, %ecx
	je	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	testb	%dl, %dl
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	addq	$1, %rax
	cmpb	%cl, %dl
	je	LBB0_1
LBB0_4:
	movsbl	%dl, %eax
	subl	%ecx, %eax
	popq	%rbp
	retq
                                        ## -- End function
.subsections_via_symbols
