	.text
	.file	"test_comprehensive.c"
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	wzr, [sp, #76]
	mov	w8, #10                         // =0xa
	str	w8, [sp, #72]
	mov	w8, #5                          // =0x5
	str	w8, [sp, #68]
	mov	w8, #3                          // =0x3
	str	w8, [sp, #64]
	ldr	w8, [sp, #72]
	ldr	w9, [sp, #68]
	add	w8, w8, w9
	str	w8, [sp, #60]
	ldr	w8, [sp, #72]
	ldr	w9, [sp, #68]
	subs	w8, w8, w9
	str	w8, [sp, #56]
	ldr	w8, [sp, #68]
	ldr	w9, [sp, #64]
	mul	w8, w8, w9
	str	w8, [sp, #52]
	ldr	w8, [sp, #60]
	ldr	w9, [sp, #68]
	sdiv	w8, w8, w9
	str	w8, [sp, #48]
	ldr	w8, [sp, #72]
	ldr	w9, [sp, #68]
	subs	w8, w8, w9
	cset	w8, gt
	and	w8, w8, #0x1
	str	w8, [sp, #44]
	ldr	w8, [sp, #68]
	ldr	w9, [sp, #72]
	subs	w8, w8, w9
	cset	w8, lt
	and	w8, w8, #0x1
	str	w8, [sp, #40]
	ldr	w8, [sp, #64]
	subs	w8, w8, #3
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #36]
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	cset	w8, eq
	mov	w9, #0                          // =0x0
	str	w9, [sp, #16]                   // 4-byte Folded Spill
	tbnz	w8, #0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #32]
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	cset	w8, ne
	mov	w9, #1                          // =0x1
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	tbnz	w8, #0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #36]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	w9, [sp, #12]                   // 4-byte Folded Reload
	mov	w8, #1                          // =0x1
	and	w9, w9, #0x1
	str	w9, [sp, #28]
	str	w8, [sp, #24]
	ldr	w8, [sp, #32]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, .LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #60]
	ldr	w9, [sp, #52]
	add	w8, w8, w9
	str	w8, [sp, #20]
	b	.LBB0_8
.LBB0_7:
	ldr	w8, [sp, #56]
	ldr	w9, [sp, #48]
	subs	w8, w8, w9
	str	w8, [sp, #20]
	b	.LBB0_8
.LBB0_8:
	ldr	w0, [sp, #20]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.ident	"BiSheng Enterprise 4.2.0.2.B002 clang version 17.0.6 (2261d9fde4e0)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
