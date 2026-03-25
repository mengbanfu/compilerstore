	.text
	.file	"input.c"
	.globl	get_five
	.p2align	2
	.type	get_five,@function
get_five:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	mov	w0, #5
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc
.Lfunc_end0:
	.size	get_five, .Lfunc_end0-get_five

	.globl	main
	.p2align	2
	.type	main,@function
main:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	sub	sp, sp, #16
	bl	get_five
	mov	w13, w0
	str	w13, [sp, #4]
	ldr	w14, [sp, #4]
	mov	w0, w14
	add	sp, sp, #16
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

