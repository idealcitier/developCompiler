.file	"./slvar.cb"
	.data
	.align	4
	.type	static_variable.0,@object
	.size	static_variable.0,4
static_variable.0:
.long	1
	.align	4
	.type	static_string.0,@object
	.size	static_string.0,4
static_string.0:
.long	.LC0
	.section	.rodata
.LC0:
	.string	"OK"
.LC1:
	.string	"%d"
.LC2:
	.string	";%d"
.LC3:
	.string	";%s"
.LC4:
	.string	"NEW"
.LC5:
	.string	""
	.text
.globl main
	.type	main,@function
main:
	pushl	%ebp
	movl	%esp, %ebp
	movl	static_variable.0, %eax
	pushl	%eax
	movl	$.LC1, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$2, %eax
	movl	%eax, static_variable.0
	movl	static_variable.0, %eax
	pushl	%eax
	movl	$.LC2, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	static_string.0, %eax
	pushl	%eax
	movl	$.LC3, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$.LC4, %eax
	movl	%eax, static_string.0
	movl	static_string.0, %eax
	pushl	%eax
	movl	$.LC3, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$.LC5, %eax
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
