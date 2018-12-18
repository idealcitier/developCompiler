.file	"./const.cb"
	.section	.rodata
.LC0:
	.string	"msgstring"
.LC1:
	.string	"%d"
.LC2:
	.string	";%d"
.LC3:
	.string	";%s"
.LC4:
	.string	""
	.text
.globl main
	.type	main,@function
main:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$16, %eax
	pushl	%eax
	movl	$.LC1, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$16, %eax
	pushl	%eax
	movl	$.LC2, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$16, %eax
	pushl	%eax
	movl	$.LC2, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$.LC0, %eax
	pushl	%eax
	movl	$.LC3, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$.LC4, %eax
	pushl	%eax
	call	puts
	addl	$4, %esp
	movl	$0, %eax
	jmp	.L0
.L0:
	movl	%ebp, %esp
	popl	%ebp
	ret
	.size	main,.-main
