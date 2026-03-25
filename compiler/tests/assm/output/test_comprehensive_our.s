	.text
	.file	"input.c"
	.globl	main
	.p2align	2
	.type	main,@function
main:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	sub	sp, sp, #64
	mov	w8, #10
	str	w8, [sp, #4]
	mov	w8, #5
	str	w8, [sp, #8]
	mov	w8, #3
	str	w8, [sp, #12]
	ldr	w13, [sp, #4]
	ldr	w14, [sp, #8]
	mov	w10, w13
	mov	w11, w14
	add	w15, w10, w11
	str	w15, [sp, #16]
	ldr	w16, [sp, #4]
	ldr	w17, [sp, #8]
	mov	w10, w16
	mov	w11, w17
	sub	w13, w10, w11
	str	w13, [sp, #20]
	ldr	w14, [sp, #8]
	ldr	w15, [sp, #12]
	mov	w10, w14
	mov	w11, w15
	mul	w16, w10, w11
	str	w16, [sp, #24]
	ldr	w17, [sp, #16]
	ldr	w13, [sp, #8]
	mov	w10, w17
	mov	w11, w13
	sdiv	w14, w10, w11
	str	w14, [sp, #28]
	ldr	w15, [sp, #4]
	ldr	w16, [sp, #8]
	mov	w10, w15
	mov	w11, w16
	cmp	w10, w11
	cset	w17, gt
	str	w17, [sp, #32]
	ldr	w13, [sp, #8]
	ldr	w14, [sp, #4]
	mov	w10, w13
	mov	w11, w14
	cmp	w10, w11
	cset	w15, lt
	str	w15, [sp, #36]
	ldr	w16, [sp, #12]
	mov	w10, w16
	mov	w11, #3
	cmp	w10, w11
	cset	w17, eq
	str	w17, [sp, #40]
	ldr	w13, [sp, #32]
	ldr	w14, [sp, #36]
	mov	w10, w13
	mov	w11, w14
	and	w15, w10, w11
	str	w15, [sp, #44]
	ldr	w16, [sp, #32]
	ldr	w17, [sp, #40]
	mov	w10, w16
	mov	w11, w17
	orr	w13, w10, w11
	str	w13, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #52]
	ldr	w14, [sp, #44]
	ldr	w15, [sp, #52]
	mov	w10, w14
	mov	w11, w15
	and	w16, w10, w11
	mov	w10, w16
	mov	w11, #0
	cmp	w10, w11
	cset	w17, ne
	mov	w10, w17
	cmp	w10, #0
	b.ne	.Lthen
	b	.Lelse
.Lthen:
	ldr	w13, [sp, #16]
	ldr	w14, [sp, #24]
	mov	w10, w13
	mov	w11, w14
	add	w15, w10, w11
	str	w15, [sp, #56]
	b	.Lmerge
.Lelse:
	ldr	w16, [sp, #20]
	ldr	w17, [sp, #28]
	mov	w10, w16
	mov	w11, w17
	sub	w13, w10, w11
	str	w13, [sp, #56]
	b	.Lmerge
.Lmerge:
	ldr	w14, [sp, #56]
	mov	w0, w14
	add	sp, sp, #64
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

