	.text
	.file	"input.c"
	.globl	main
	.p2align	2
	.type	main,@function
main:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	sub	sp, sp, #32
	mov	w8, #5
	str	w8, [sp, #4]
	mov	w8, #3
	str	w8, [sp, #8]
	ldr	w13, [sp, #4]
	ldr	w14, [sp, #4]
	mov	w10, w13
	mov	w11, w14
	cmp	w10, w11
	cset	w15, eq
	str	w15, [sp, #12]
	ldr	w16, [sp, #4]
	ldr	w17, [sp, #8]
	mov	w10, w16
	mov	w11, w17
	cmp	w10, w11
	cset	w13, ne
	str	w13, [sp, #16]
	ldr	w14, [sp, #4]
	ldr	w15, [sp, #8]
	mov	w10, w14
	mov	w11, w15
	cmp	w10, w11
	cset	w16, gt
	str	w16, [sp, #20]
	ldr	w17, [sp, #4]
	ldr	w13, [sp, #8]
	mov	w10, w17
	mov	w11, w13
	cmp	w10, w11
	cset	w14, ge
	str	w14, [sp, #24]
	ldr	w15, [sp, #8]
	ldr	w16, [sp, #4]
	mov	w10, w15
	mov	w11, w16
	cmp	w10, w11
	cset	w17, lt
	str	w17, [sp, #28]
	ldr	w13, [sp, #8]
	ldr	w14, [sp, #4]
	mov	w10, w13
	mov	w11, w14
	cmp	w10, w11
	cset	w15, le
	str	w15, [sp, #32]
	ldr	w16, [sp, #12]
	ldr	w17, [sp, #16]
	mov	w10, w16
	mov	w11, w17
	add	w13, w10, w11
	ldr	w14, [sp, #20]
	mov	w10, w13
	mov	w11, w14
	add	w15, w10, w11
	ldr	w16, [sp, #24]
	mov	w10, w15
	mov	w11, w16
	add	w17, w10, w11
	ldr	w13, [sp, #28]
	mov	w10, w17
	mov	w11, w13
	add	w14, w10, w11
	ldr	w15, [sp, #32]
	mov	w10, w14
	mov	w11, w15
	add	w16, w10, w11
	mov	w0, w16
	add	sp, sp, #32
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

