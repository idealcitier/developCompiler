.file	"./initializer.cb"
	.section	.rodata
.LC0:
	.string	"%d;%d;%d"
.LC1:
	.string	"local"
.LC2:
	.string	";%s"
.LC3:
	.string	""
	.text
.globl main
	.type	main,@function
main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$4, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	imull	$5, %eax
	movl	-4(%ebp), %ecx
	imull	%ecx, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	-8(%ebp), %ecx
	subl	%ecx, %eax
	movl	-8(%ebp), %ecx
	imull	%ecx, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	pushl	%eax
	movl	-8(%ebp), %eax
	pushl	%eax
	movl	-4(%ebp), %eax
	pushl	%eax
	movl	$.LC0, %eax
	pushl	%eax
	call	printf
	addl	$16, %esp
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	$.LC1, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	pushl	%eax
	movl	$.LC2, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$.LC3, %eax
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
