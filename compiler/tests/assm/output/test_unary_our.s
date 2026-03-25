	.text
	.file	"input.c"
	.globl	main
	.p2align	2
	.type	main,@function
main:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	sub	sp, sp, #16
	mov	w8, #5
	str	w8, [sp, #4]
	ldr	w13, [sp, #4]
	mov	w10, #0
	mov	w11, w13
	sub	w14, w10, w11
	str	w14, [sp, #8]
	ldr	w15, [sp, #8]
	mov	w0, w15
	add	sp, sp, #16
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

