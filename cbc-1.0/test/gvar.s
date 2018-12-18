.file	"./gvar.cb"
	.data
.globl global_int
	.align	4
	.type	global_int,@object
	.size	global_int,4
global_int:
.long	1
.globl global_string
	.align	4
	.type	global_string,@object
	.size	global_string,4
global_string:
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
	movl	global_int, %eax
	pushl	%eax
	movl	$.LC1, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$2, %eax
	movl	%eax, global_int
	movl	global_int, %eax
	pushl	%eax
	movl	$.LC2, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	global_string, %eax
	pushl	%eax
	movl	$.LC3, %eax
	pushl	%eax
	call	printf
	addl	$8, %esp
	movl	$.LC4, %eax
	movl	%eax, global_string
	movl	global_string, %eax
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
	movl	%eax, stdin
	movl	$0, %eax
	jmp	.L0
.L0:
	movl	%ebp, %esp
	popl	%ebp
	ret
	.size	main,.-main
