	.text
	.file	"test_logical_ops.c"
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	wzr, [sp, #44]
	mov	w8, #1                          // =0x1
	str	w8, [sp, #40]
	str	w8, [sp, #36]
	str	wzr, [sp, #32]
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, eq
	mov	w9, #0                          // =0x0
	str	w9, [sp, #16]                   // 4-byte Folded Spill
	tbnz	w8, #0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #36]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #28]
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, ne
	mov	w9, #1                          // =0x1
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	tbnz	w8, #0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #32]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #24]
	ldr	w8, [sp, #32]
	subs	w8, w8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #20]
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
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
