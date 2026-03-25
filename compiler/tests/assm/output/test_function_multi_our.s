	.text
	.file	"input.c"
	.globl	add
	.p2align	2
	.type	add,@function
add:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	sub	sp, sp, #16
	str	w0, [sp, #4]
	str	w1, [sp, #8]
	ldr	w13, [sp, #4]
	ldr	w14, [sp, #8]
	mov	w10, w13
	mov	w11, w14
	add	w15, w10, w11
	mov	w0, w15
	add	sp, sp, #16
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc
.Lfunc_end0:
	.size	add, .Lfunc_end0-add

	.globl	sub
	.p2align	2
	.type	sub,@function
sub:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	sub	sp, sp, #16
	str	w0, [sp, #4]
	str	w1, [sp, #8]
	ldr	w13, [sp, #4]
	ldr	w14, [sp, #8]
	mov	w10, w13
	mov	w11, w14
	sub	w15, w10, w11
	mov	w0, w15
	add	sp, sp, #16
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc
.Lfunc_end1:
	.size	sub, .Lfunc_end1-sub

	.globl	calc
	.p2align	2
	.type	calc,@function
calc:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	sub	sp, sp, #16
	str	w0, [sp, #4]
	str	w1, [sp, #8]
	ldr	w13, [sp, #4]
	ldr	w14, [sp, #8]
	mov	w0, w13
	mov	w1, w14
	bl	add
	mov	w15, w0
	str	w15, [sp, #12]
	ldr	w16, [sp, #4]
	ldr	w17, [sp, #8]
	mov	w0, w16
	mov	w1, w17
	bl	sub
	mov	w13, w0
	str	w13, [sp, #16]
	ldr	w14, [sp, #12]
	ldr	w15, [sp, #16]
	mov	w10, w14
	mov	w11, w15
	add	w16, w10, w11
	mov	w0, w16
	add	sp, sp, #16
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc
.Lfunc_end2:
	.size	calc, .Lfunc_end2-calc

	.globl	main
	.p2align	2
	.type	main,@function
main:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	sub	sp, sp, #16
	mov	w0, #10
	mov	w1, #3
	bl	calc
	mov	w13, w0
	str	w13, [sp, #4]
	ldr	w14, [sp, #4]
	mov	w0, w14
	add	sp, sp, #16
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc
.Lfunc_end3:
	.size	main, .Lfunc_end3-main

