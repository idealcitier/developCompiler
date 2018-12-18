.file	"./lvar1.cb"
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	";%d\n"
	.text
.globl main
	.type	main,@function
main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	$1, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	pushl	%eax
	movl	$.LC0, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$2, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	pushl	%eax
	movl	$.LC1, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$0, %eax
	jmp	.L0
.L0:
	movl	%ebp, %esp
	popl	%ebp
	ret
	.size	main,.-main
