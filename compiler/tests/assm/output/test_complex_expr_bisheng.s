	.text
	.file	"test_complex_expr.c"
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	wzr, [sp, #28]
	mov	w8, #3                          // =0x3
	str	w8, [sp, #24]
	mov	w8, #4                          // =0x4
	str	w8, [sp, #20]
	mov	w8, #2                          // =0x2
	str	w8, [sp, #16]
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	mul	w8, w8, w9
	ldr	w9, [sp, #20]
	ldr	w10, [sp, #16]
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w0, [sp, #12]
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
