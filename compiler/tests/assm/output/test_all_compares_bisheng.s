	.text
	.file	"test_all_compares.c"
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	wzr, [sp, #44]
	mov	w8, #5                          // =0x5
	str	w8, [sp, #40]
	mov	w8, #3                          // =0x3
	str	w8, [sp, #36]
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #32]
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	cset	w8, ne
	and	w8, w8, #0x1
	str	w8, [sp, #28]
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	cset	w8, gt
	and	w8, w8, #0x1
	str	w8, [sp, #24]
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	cset	w8, ge
	and	w8, w8, #0x1
	str	w8, [sp, #20]
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	cset	w8, lt
	and	w8, w8, #0x1
	str	w8, [sp, #16]
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	cset	w8, le
	and	w8, w8, #0x1
	str	w8, [sp, #12]
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.ident	"BiSheng Enterprise 4.2.0.2.B002 clang version 17.0.6 (2261d9fde4e0)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
