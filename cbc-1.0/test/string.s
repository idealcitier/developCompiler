.file	"./string.cb"
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	";"
.LC2:
	.string	";a"
.LC3:
	.string	";aa;b"
.LC4:
	.string	";\""
.LC5:
	.string	";'"
.LC6:
	.string	";\7\b\33\f\n\r\t\v"
.LC7:
	.string	";ABCabc"
	.text
.globl main
	.type	main,@function
main:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$.LC0, %eax
	pushl	%eax
	call	printf
	addl	$4, %esp
	movl	$.LC1, %eax
	pushl	%eax
	call	printf
	addl	$4, %esp
	movl	$.LC2, %eax
	pushl	%eax
	call	printf
	addl	$4, %esp
	movl	$.LC3, %eax
	pushl	%eax
	call	printf
	addl	$4, %esp
	movl	$.LC4, %eax
	pushl	%eax
	call	printf
	addl	$4, %esp
	movl	$.LC5, %eax
	pushl	%eax
	call	printf
	addl	$4, %esp
	movl	$.LC6, %eax
	pushl	%eax
	call	printf
	addl	$4, %esp
	movl	$.LC7, %eax
	pushl	%eax
	call	printf
	addl	$4, %esp
	movl	$.LC0, %eax
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
