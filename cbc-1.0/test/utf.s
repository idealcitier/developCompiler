.file	"./utf.cb"
	.section	.rodata
.LC0:
	.string	"\343\201\223\343\202\223\343\201\253\343\201\241\343\201\257\344\270\226\347\225\214"
	.text
.globl main
	.type	main,@function
main:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$.LC0, %eax
	pushl	%eax
	call	puts
	addl	$4, %esp
.L0:
	movl	%ebp, %esp
	popl	%ebp
	ret
	.size	main,.-main
