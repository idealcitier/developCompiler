.file	"./sgvar.cb"
	.data
	.align	4
	.type	static_global_variable,@object
	.size	static_global_variable,4
static_global_variable:
.long	1
	.align	4
	.type	static_global_string,@object
	.size	static_global_string,4
static_global_string:
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
	movl	static_global_variable, %eax
	pushl	%eax
	movl	$.LC1, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$2, %eax
	movl	%eax, static_global_variable
	movl	static_global_variable, %eax
	pushl	%eax
	movl	$.LC2, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	static_global_string, %eax
	pushl	%eax
	movl	$.LC3, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$.LC4, %eax
	movl	%eax, static_global_string
	movl	static_global_string, %eax
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
