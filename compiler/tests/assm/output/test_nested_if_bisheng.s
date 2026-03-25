	.text
	.file	"test_nested_if.c"
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	wzr, [sp, #12]
	mov	w8, #10                         // =0xa
	str	w8, [sp, #8]
	mov	w8, #5                          // =0x5
	str	w8, [sp, #4]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	subs	w8, w8, #8
	cset	w8, le
	tbnz	w8, #0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	mov	w8, #1                          // =0x1
	str	w8, [sp]
	b	.LBB0_4
.LBB0_3:
	mov	w8, #2                          // =0x2
	str	w8, [sp]
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_6
.LBB0_5:
	mov	w8, #3                          // =0x3
	str	w8, [sp]
	b	.LBB0_6
.LBB0_6:
	ldr	w0, [sp]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.ident	"BiSheng Enterprise 4.2.0.2.B002 clang version 17.0.6 (2261d9fde4e0)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
