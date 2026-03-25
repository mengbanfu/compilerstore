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
	mov	w8, #3
	str	w8, [sp, #4]
	mov	w8, #4
	str	w8, [sp, #8]
	mov	w8, #2
	str	w8, [sp, #12]
	ldr	w13, [sp, #4]
	ldr	w14, [sp, #8]
	mov	w10, w13
	mov	w11, w14
	add	w15, w10, w11
	ldr	w16, [sp, #12]
	mov	w10, w15
	mov	w11, w16
	mul	w17, w10, w11
	ldr	w13, [sp, #8]
	ldr	w14, [sp, #12]
	mov	w10, w13
	mov	w11, w14
	sdiv	w15, w10, w11
	mov	w10, w17
	mov	w11, w15
	sub	w16, w10, w11
	str	w16, [sp, #16]
	ldr	w17, [sp, #16]
	mov	w0, w17
	add	sp, sp, #16
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

