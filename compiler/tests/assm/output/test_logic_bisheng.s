	.text
	.file	"test_logic.c"
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	wzr, [sp, #28]
	mov	w8, #1                          // =0x1
	str	w8, [sp, #24]
	str	wzr, [sp, #20]
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, eq
	mov	w9, #0                          // =0x0
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	tbnz	w8, #0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #16]
	ldr	w0, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.ident	"BiSheng Enterprise 4.2.0.2.B002 clang version 17.0.6 (2261d9fde4e0)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
