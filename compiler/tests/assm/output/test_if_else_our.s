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
	mov	w8, #3
	str	w8, [sp, #8]
	ldr	w13, [sp, #4]
	ldr	w14, [sp, #8]
	mov	w10, w13
	mov	w11, w14
	cmp	w10, w11
	cset	w15, gt
	mov	w10, w15
	cmp	w10, #0
	b.ne	.Lthen
	b	.Lelse
.Lthen:
	mov	w8, #1
	str	w8, [sp, #12]
	b	.Lmerge
.Lelse:
	mov	w8, #0
	str	w8, [sp, #12]
	b	.Lmerge
.Lmerge:
	ldr	w16, [sp, #12]
	mov	w0, w16
	add	sp, sp, #16
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

