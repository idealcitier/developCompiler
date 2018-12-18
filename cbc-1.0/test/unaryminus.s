.file	"./unaryminus.cb"
	.section	.rodata
.LC0:
	.string	"%d;%d;%d"
.LC1:
	.string	""
	.text
.globl main
	.type	main,@function
main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12, %esp
	movl	$1, %eax
	movl	%eax, -4(%ebp)
	movl	$0, %eax
	movl	%eax, -8(%ebp)
	movl	$1, %eax
	negl	%eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	negl	%eax
	pushl	%eax
	movl	-8(%ebp), %eax
	negl	%eax
	pushl	%eax
	movl	-4(%ebp), %eax
	negl	%eax
	pushl	%eax
	movl	$.LC0, %eax
	pushl	%eax
	call	printf
	addl	$16, %esp
	movl	$.LC1, %eax
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
