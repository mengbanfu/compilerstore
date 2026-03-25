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
	mov	w8, #1
	str	w8, [sp, #4]
	mov	w8, #1
	str	w8, [sp, #8]
	mov	w8, #0
	str	w8, [sp, #12]
	ldr	w13, [sp, #4]
	ldr	w14, [sp, #8]
	mov	w10, w13
	mov	w11, w14
	and	w15, w10, w11
	str	w15, [sp, #16]
	ldr	w16, [sp, #4]
	ldr	w17, [sp, #12]
	mov	w10, w16
	mov	w11, w17
	orr	w13, w10, w11
	str	w13, [sp, #20]
	ldr	w14, [sp, #12]
	mov	w10, w14
	mov	w11, #0
	cmp	w10, w11
	cset	w15, eq
	str	w15, [sp, #24]
	ldr	w16, [sp, #16]
	ldr	w17, [sp, #20]
	mov	w10, w16
	mov	w11, w17
	add	w13, w10, w11
	ldr	w14, [sp, #24]
	mov	w10, w13
	mov	w11, w14
	add	w15, w10, w11
	mov	w0, w15
	add	sp, sp, #32
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

