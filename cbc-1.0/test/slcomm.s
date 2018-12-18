.file	"./slcomm.cb"
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	";%d"
.LC2:
	.string	"OK"
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
	movl	$1, %eax
	movl	%eax, static_variable.0
	movl	static_variable.0, %eax
	pushl	%eax
	movl	$.LC0, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$2, %eax
	movl	%eax, static_variable.0
	movl	static_variable.0, %eax
	pushl	%eax
	movl	$.LC1, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$.LC2, %eax
	movl	%eax, static_string.0
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
.local static_variable.0
	.comm	static_variable.0,4,4
.local static_string.0
	.comm	static_string.0,4,4
