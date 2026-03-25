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
	mov	w8, #10
	str	w8, [sp, #4]
	mov	w8, #5
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
	ldr	w16, [sp, #4]
	mov	w10, w16
	mov	w11, #8
	cmp	w10, w11
	cset	w17, gt
	mov	w10, w17
	cmp	w10, #0
	b.ne	.Lthen5
	b	.Lelse6
.Lelse:
	mov	w8, #3
	str	w8, [sp, #12]
	b	.Lmerge
.Lmerge:
	ldr	w13, [sp, #12]
	mov	w0, w13
	add	sp, sp, #16
	ldp	x29, x30, [sp], #16
	ret
.Lthen5:
	mov	w8, #1
	str	w8, [sp, #12]
	b	.Lmerge7
.Lelse6:
	mov	w8, #2
	str	w8, [sp, #12]
	b	.Lmerge7
.Lmerge7:
	b	.Lmerge
	.cfi_endproc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

