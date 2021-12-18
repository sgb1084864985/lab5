	.file	"vm.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.create_mapping,"ax",@progbits
	.align	2
	.globl	create_mapping
	.type	create_mapping, @function
create_mapping:
.LFB0:
	.file 1 "vm.c"
	.loc 1 12 1
	.cfi_startproc
.LVL0:
	.loc 1 14 9
	.loc 1 15 9
	.loc 1 15 25 is_stmt 0
	srli	t1,a1,21
	.loc 1 15 13
	andi	t1,t1,511
.LVL1:
	.loc 1 16 9 is_stmt 1
	.loc 1 16 25 is_stmt 0
	srli	a7,a1,12
	.loc 1 16 13
	andi	a7,a7,511
.LVL2:
	.loc 1 18 9 is_stmt 1
	.loc 1 19 9
	.loc 1 14 25 is_stmt 0
	srli	a5,a1,30
	.loc 1 19 19
	andi	a5,a5,511
	slli	a5,a5,3
	add	a0,a0,a5
.LVL3:
	.loc 1 19 27
	ld	a5,0(a0)
	andi	a5,a5,1
	.loc 1 19 12
	bne	a5,zero,.L2
	.loc 1 21 13 is_stmt 1
	.loc 1 21 16 is_stmt 0
	lla	a5,.LANCHOR0
	ld	a3,0(a5)
.LVL4:
	addi	a3,a3,1
	sd	a3,0(a5)
	.loc 1 22 13 is_stmt 1
	.loc 1 22 74 is_stmt 0
	slli	a3,a3,12
	.loc 1 22 65
	lla	a6,_end
	add	a6,a3,a6
.LVL5:
	.loc 1 23 13 is_stmt 1
.LBB2:
	.loc 1 23 18
	.loc 1 23 29
	li	a3,4096
	add	a3,a6,a3
.LBE2:
	.loc 1 22 65 is_stmt 0
	mv	a5,a6
.LVL6:
.L3:
.LBB3:
	.loc 1 24 17 is_stmt 1 discriminator 3
	.loc 1 24 33 is_stmt 0 discriminator 3
	sd	zero,0(a5)
	.loc 1 23 38 is_stmt 1 discriminator 3
.LVL7:
	.loc 1 23 29 discriminator 3
	.loc 1 23 13 is_stmt 0 discriminator 3
	addi	a5,a5,8
.LVL8:
	bne	a5,a3,.L3
.LBE3:
	.loc 1 25 13 is_stmt 1
	.loc 1 26 13
	.loc 1 25 64 is_stmt 0
	srli	a3,a6,12
	.loc 1 25 71
	slli	a3,a3,10
	.loc 1 25 26
	ld	a5,0(a0)
.LVL9:
	or	a3,a3,a5
	.loc 1 26 26
	ori	a3,a3,1
	sd	a3,0(a0)
.LVL10:
.L2:
	.loc 1 28 9 is_stmt 1
	.loc 1 30 9
	.loc 1 31 9
	.loc 1 28 47 is_stmt 0
	ld	a1,0(a0)
.LVL11:
	srli	a1,a1,10
	.loc 1 28 54
	slli	a1,a1,12
.LVL12:
	.loc 1 31 26
	slli	t1,t1,3
.LVL13:
	add	a1,a1,t1
.LVL14:
	.loc 1 31 34
	ld	a5,0(a1)
	andi	a5,a5,1
	.loc 1 31 12
	bne	a5,zero,.L4
	.loc 1 33 13 is_stmt 1
	.loc 1 33 16 is_stmt 0
	lla	a3,.LANCHOR0
	ld	a5,0(a3)
	addi	a5,a5,1
	sd	a5,0(a3)
.LVL15:
	.loc 1 34 13 is_stmt 1
	.loc 1 34 73 is_stmt 0
	slli	a5,a5,12
	.loc 1 34 64
	lla	a0,_end
	add	a0,a5,a0
.LVL16:
	.loc 1 35 13 is_stmt 1
.LBB4:
	.loc 1 35 18
	.loc 1 35 29
	li	a3,4096
	add	a3,a0,a3
.LBE4:
	.loc 1 34 64 is_stmt 0
	mv	a5,a0
.LVL17:
.L5:
.LBB5:
	.loc 1 36 17 is_stmt 1 discriminator 3
	.loc 1 36 32 is_stmt 0 discriminator 3
	sd	zero,0(a5)
	.loc 1 35 38 is_stmt 1 discriminator 3
.LVL18:
	.loc 1 35 29 discriminator 3
	.loc 1 35 13 is_stmt 0 discriminator 3
	addi	a5,a5,8
.LVL19:
	bne	a5,a3,.L5
.LBE5:
	.loc 1 37 13 is_stmt 1
	.loc 1 38 13
	.loc 1 37 70 is_stmt 0
	srli	a5,a0,12
.LVL20:
	.loc 1 37 77
	slli	a5,a5,10
	.loc 1 37 33
	ld	a3,0(a1)
	or	a5,a5,a3
	.loc 1 38 33
	ori	a5,a5,1
	sd	a5,0(a1)
.LVL21:
.L4:
	.loc 1 40 9 is_stmt 1
	.loc 1 42 9
	.loc 1 40 53 is_stmt 0
	ld	a5,0(a1)
	srli	a5,a5,10
	.loc 1 40 60
	slli	a5,a5,12
.LVL22:
	.loc 1 42 25
	slli	a7,a7,3
.LVL23:
	add	a7,a5,a7
	ld	a3,0(a7)
	.loc 1 42 33
	andi	a5,a3,1
.LVL24:
	.loc 1 42 12
	bne	a5,zero,.L1
	.loc 1 44 13 is_stmt 1
	.loc 1 45 13
	.loc 1 46 13
	.loc 1 44 39 is_stmt 0
	srli	a5,a2,12
	.loc 1 44 46
	slli	a5,a5,10
	.loc 1 46 40
	slliw	a4,a4,1
.LVL25:
	.loc 1 46 32
	or	a4,a4,a3
	or	a5,a5,a4
	ori	a5,a5,1
	sd	a5,0(a7)
.LVL26:
.L1:
	.loc 1 48 1
	ret
	.cfi_endproc
.LFE0:
	.size	create_mapping, .-create_mapping
	.section	.text.paging_init,"ax",@progbits
	.align	2
	.globl	paging_init
	.type	paging_init, @function
paging_init:
.LFB1:
	.loc 1 54 1 is_stmt 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.loc 1 55 5
.LVL27:
	.loc 1 57 5
.LBB6:
	.loc 1 57 10
	.loc 1 57 21
	lla	a5,_end
	lla	a4,_end+4096
.LVL28:
.L11:
	.loc 1 59 9 discriminator 3
	.loc 1 59 18 is_stmt 0 discriminator 3
	sd	zero,0(a5)
	.loc 1 57 30 is_stmt 1 discriminator 3
.LVL29:
	.loc 1 57 21 discriminator 3
	.loc 1 57 5 is_stmt 0 discriminator 3
	addi	a5,a5,8
.LVL30:
	bne	a4,a5,.L11
.LVL31:
.LBE6:
.LBB7:
	.loc 1 69 46 is_stmt 1
	.loc 1 69 100 is_stmt 0
	lla	s4,text_start
	li	a5,1
.LVL32:
	slli	a5,a5,31
	lla	s1,rodata_start
	add	s1,s1,a5
	sub	s1,s1,s4
	.loc 1 69 5
	bleu	s1,a5,.L12
	.loc 1 69 29
	mv	s0,a5
	.loc 1 71 9
	li	s3,-65
	slli	s3,s3,31
	lla	s2,_end
.LVL33:
.L13:
	.loc 1 71 9 is_stmt 1 discriminator 3
	li	a4,5
	li	a3,4096
	mv	a2,s0
	add	a1,s0,s3
	mv	a0,s2
	call	create_mapping
.LVL34:
	.loc 1 72 9 discriminator 3
	li	a4,5
	li	a3,4096
	mv	a2,s0
	mv	a1,s0
	mv	a0,s2
	call	create_mapping
.LVL35:
	.loc 1 69 137 discriminator 3
	.loc 1 69 140 is_stmt 0 discriminator 3
	li	a5,4096
	add	s0,s0,a5
.LVL36:
	.loc 1 69 46 is_stmt 1 discriminator 3
	.loc 1 69 5 is_stmt 0 discriminator 3
	bltu	s0,s1,.L13
.LVL37:
.L12:
.LBE7:
.LBB8:
	.loc 1 76 120 is_stmt 1
	.loc 1 76 172 is_stmt 0
	lla	s0,data_start
	li	a5,1
	slli	a5,a5,31
	add	s0,s0,a5
	sub	s0,s0,s4
	.loc 1 76 5
	bleu	s0,s1,.L14
	.loc 1 78 9
	li	s3,-65
	slli	s3,s3,31
	lla	s2,_end
.L15:
	.loc 1 78 9 is_stmt 1 discriminator 3
	li	a4,1
	li	a3,4096
	mv	a2,s1
	add	a1,s1,s3
	mv	a0,s2
	call	create_mapping
.LVL38:
	.loc 1 79 9 discriminator 3
	li	a4,1
	li	a3,4096
	mv	a2,s1
	mv	a1,s1
	mv	a0,s2
	call	create_mapping
.LVL39:
	.loc 1 76 209 discriminator 3
	.loc 1 76 212 is_stmt 0 discriminator 3
	li	a5,4096
	add	s1,s1,a5
.LVL40:
	.loc 1 76 120 is_stmt 1 discriminator 3
	.loc 1 76 5 is_stmt 0 discriminator 3
	bltu	s1,s0,.L15
.L14:
.LVL41:
.LBE8:
.LBB9:
	.loc 1 83 117 is_stmt 1
	.loc 1 83 5 is_stmt 0
	li	a5,129
	slli	a5,a5,24
	bgeu	s0,a5,.L16
	.loc 1 85 9
	li	s3,-65
	slli	s3,s3,31
	lla	s1,_end
.LVL42:
	.loc 1 83 5
	mv	s2,a5
.L17:
	.loc 1 85 9 is_stmt 1 discriminator 3
	li	a4,3
	li	a3,4096
	mv	a2,s0
	add	a1,s0,s3
	mv	a0,s1
	call	create_mapping
.LVL43:
	.loc 1 86 9 discriminator 3
	li	a4,3
	li	a3,4096
	mv	a2,s0
	mv	a1,s0
	mv	a0,s1
	call	create_mapping
.LVL44:
	.loc 1 83 134 discriminator 3
	.loc 1 83 137 is_stmt 0 discriminator 3
	li	a5,4096
	add	s0,s0,a5
.LVL45:
	.loc 1 83 117 is_stmt 1 discriminator 3
	.loc 1 83 5 is_stmt 0 discriminator 3
	bltu	s0,s2,.L17
.L16:
.LVL46:
.LBE9:
.LBB10:
	.loc 1 90 46 is_stmt 1
	.loc 1 92 9
	li	a4,3
	li	a3,4096
	li	a2,268435456
	li	a1,268435456
	lla	a0,_end
	call	create_mapping
.LVL47:
	.loc 1 90 63
	.loc 1 90 46
.LBE10:
	.loc 1 94 1 is_stmt 0
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
.LVL48:
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	ld	s4,0(sp)
	.cfi_restore 20
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	paging_init, .-paging_init
	.globl	cur
	.section	.sbss.cur,"aw",@nobits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	cur, @object
	.size	cur, 8
cur:
	.zero	8
	.text
.Letext0:
	.file 2 "/home/oslab/lab4/arch/riscv/include/vm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x386
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.4byte	.LASF14
	.byte	0xc
	.4byte	.LASF15
	.4byte	.LASF16
	.4byte	.Ldebug_ranges0+0x60
	.8byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.string	"cur"
	.byte	0x2
	.byte	0x7
	.byte	0x14
	.4byte	0x3f
	.byte	0x9
	.byte	0x3
	.8byte	cur
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF0
	.byte	0x1
	.byte	0x4
	.byte	0x1b
	.4byte	0x3f
	.byte	0x4
	.4byte	.LASF1
	.byte	0x1
	.byte	0x5
	.byte	0x1b
	.4byte	0x3f
	.byte	0x4
	.4byte	.LASF2
	.byte	0x1
	.byte	0x6
	.byte	0x1b
	.4byte	0x3f
	.byte	0x4
	.4byte	.LASF3
	.byte	0x1
	.byte	0x7
	.byte	0x1b
	.4byte	0x3f
	.byte	0x5
	.4byte	.LASF5
	.byte	0x1
	.byte	0x35
	.byte	0x6
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x29a
	.byte	0x6
	.4byte	.LASF7
	.byte	0x1
	.byte	0x37
	.byte	0x19
	.4byte	0x29a
	.byte	0x7
	.8byte	.LBB6
	.8byte	.LBE6-.LBB6
	.4byte	0xc4
	.byte	0x8
	.string	"i"
	.byte	0x1
	.byte	0x39
	.byte	0xe
	.4byte	0x2a0
	.4byte	.LLST11
	.byte	0
	.byte	0x7
	.8byte	.LBB7
	.8byte	.LBE7-.LBB7
	.4byte	0x148
	.byte	0x8
	.string	"pa"
	.byte	0x1
	.byte	0x45
	.byte	0x1d
	.4byte	0x3f
	.4byte	.LLST12
	.byte	0x9
	.8byte	.LVL34
	.4byte	0x2a7
	.4byte	0x11b
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x78
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xa
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0xb
	.8byte	.LVL35
	.4byte	0x2a7
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xa
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0x7
	.8byte	.LBB8
	.8byte	.LBE8-.LBB8
	.4byte	0x1cc
	.byte	0x8
	.string	"pa"
	.byte	0x1
	.byte	0x4c
	.byte	0x1d
	.4byte	0x3f
	.4byte	.LLST13
	.byte	0x9
	.8byte	.LVL38
	.4byte	0x2a7
	.4byte	0x19f
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xa
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xb
	.8byte	.LVL39
	.4byte	0x2a7
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xa
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x7
	.8byte	.LBB9
	.8byte	.LBE9-.LBB9
	.4byte	0x250
	.byte	0x8
	.string	"pa"
	.byte	0x1
	.byte	0x53
	.byte	0x1d
	.4byte	0x3f
	.4byte	.LLST14
	.byte	0x9
	.8byte	.LVL43
	.4byte	0x2a7
	.4byte	0x223
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x78
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xa
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0xb
	.8byte	.LVL44
	.4byte	0x2a7
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xa
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0xc
	.8byte	.LBB10
	.8byte	.LBE10-.LBB10
	.byte	0x8
	.string	"pa"
	.byte	0x1
	.byte	0x5a
	.byte	0x1d
	.4byte	0x3f
	.4byte	.LLST15
	.byte	0xb
	.8byte	.LVL47
	.4byte	0x2a7
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x40
	.byte	0x48
	.byte	0x24
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x40
	.byte	0x48
	.byte	0x24
	.byte	0xa
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xa
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x8
	.4byte	0x3f
	.byte	0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0xf
	.4byte	.LASF6
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x10
	.4byte	.LASF7
	.byte	0x1
	.byte	0xb
	.byte	0x29
	.4byte	0x29a
	.4byte	.LLST0
	.byte	0x11
	.string	"va"
	.byte	0x1
	.byte	0xb
	.byte	0x43
	.4byte	0x3f
	.4byte	.LLST1
	.byte	0x12
	.string	"pa"
	.byte	0x1
	.byte	0xb
	.byte	0x5a
	.4byte	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.string	"sz"
	.byte	0x1
	.byte	0xb
	.byte	0x71
	.4byte	0x3f
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LASF8
	.byte	0x1
	.byte	0xb
	.byte	0x79
	.4byte	0x2a0
	.4byte	.LLST3
	.byte	0x13
	.4byte	.LASF9
	.byte	0x1
	.byte	0xe
	.byte	0xd
	.4byte	0x2a0
	.4byte	.LLST4
	.byte	0x13
	.4byte	.LASF10
	.byte	0x1
	.byte	0xf
	.byte	0xd
	.4byte	0x2a0
	.4byte	.LLST5
	.byte	0x13
	.4byte	.LASF11
	.byte	0x1
	.byte	0x10
	.byte	0xd
	.4byte	0x2a0
	.4byte	.LLST6
	.byte	0x13
	.4byte	.LASF12
	.byte	0x1
	.byte	0x12
	.byte	0x1d
	.4byte	0x29a
	.4byte	.LLST7
	.byte	0x13
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1e
	.byte	0x1d
	.4byte	0x29a
	.4byte	.LLST8
	.byte	0x14
	.4byte	.Ldebug_ranges0+0
	.4byte	0x374
	.byte	0x8
	.string	"i"
	.byte	0x1
	.byte	0x17
	.byte	0x16
	.4byte	0x2a0
	.4byte	.LLST9
	.byte	0
	.byte	0x15
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x8
	.string	"i"
	.byte	0x1
	.byte	0x23
	.byte	0x16
	.4byte	0x2a0
	.4byte	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST11:
	.8byte	.LVL27
	.8byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST12:
	.8byte	.LVL31
	.8byte	.LVL33
	.2byte	0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x9f
	.8byte	.LVL33
	.8byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.8byte	0
	.8byte	0
.LLST13:
	.8byte	.LVL37
	.8byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.8byte	0
	.8byte	0
.LLST14:
	.8byte	.LVL41
	.8byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.8byte	0
	.8byte	0
.LLST15:
	.8byte	.LVL46
	.8byte	.LVL47
	.2byte	0x4
	.byte	0x40
	.byte	0x48
	.byte	0x24
	.byte	0x9f
	.8byte	.LVL47
	.8byte	.LFE1
	.2byte	0x6
	.byte	0xc
	.4byte	0x10001000
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST0:
	.8byte	.LVL0
	.8byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.8byte	.LVL3
	.8byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST1:
	.8byte	.LVL0
	.8byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.8byte	.LVL11
	.8byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST2:
	.8byte	.LVL0
	.8byte	.LVL4
	.2byte	0x1
	.byte	0x5d
	.8byte	.LVL4
	.8byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST3:
	.8byte	.LVL0
	.8byte	.LVL25
	.2byte	0x1
	.byte	0x5e
	.8byte	.LVL25
	.8byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST4:
	.8byte	.LVL0
	.8byte	.LVL11
	.2byte	0x9
	.byte	0x7b
	.byte	0
	.byte	0x4e
	.byte	0x25
	.byte	0xa
	.2byte	0x1ff
	.byte	0x1a
	.byte	0x9f
	.8byte	.LVL11
	.8byte	.LFE0
	.2byte	0xa
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x4e
	.byte	0x25
	.byte	0xa
	.2byte	0x1ff
	.byte	0x1a
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST5:
	.8byte	.LVL1
	.8byte	.LVL13
	.2byte	0x1
	.byte	0x56
	.8byte	.LVL13
	.8byte	.LFE0
	.2byte	0xa
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x45
	.byte	0x25
	.byte	0xa
	.2byte	0x1ff
	.byte	0x1a
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST6:
	.8byte	.LVL2
	.8byte	.LVL23
	.2byte	0x1
	.byte	0x61
	.8byte	.LVL23
	.8byte	.LFE0
	.2byte	0xa
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x3c
	.byte	0x25
	.byte	0xa
	.2byte	0x1ff
	.byte	0x1a
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST7:
	.8byte	.LVL5
	.8byte	.LVL10
	.2byte	0x1
	.byte	0x60
	.8byte	.LVL10
	.8byte	.LVL12
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x3a
	.byte	0x25
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.8byte	.LVL12
	.8byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.8byte	.LVL14
	.8byte	.LVL15
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x3a
	.byte	0x25
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST8:
	.8byte	.LVL16
	.8byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.8byte	.LVL21
	.8byte	.LVL22
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x6
	.byte	0x3a
	.byte	0x25
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.8byte	.LVL22
	.8byte	.LVL24
	.2byte	0x1
	.byte	0x5f
	.8byte	.LVL24
	.8byte	.LVL26
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x6
	.byte	0x3a
	.byte	0x25
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST9:
	.8byte	.LVL5
	.8byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL6
	.8byte	.LVL7
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x1c
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.8byte	.LVL7
	.8byte	.LVL8
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x1c
	.byte	0x33
	.byte	0x25
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.8byte	.LVL8
	.8byte	.LVL9
	.2byte	0xc
	.byte	0x7f
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x1c
	.byte	0x38
	.byte	0x1c
	.byte	0x33
	.byte	0x25
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST10:
	.8byte	.LVL16
	.8byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL17
	.8byte	.LVL18
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.8byte	.LVL18
	.8byte	.LVL19
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x33
	.byte	0x25
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.8byte	.LVL19
	.8byte	.LVL20
	.2byte	0xc
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x38
	.byte	0x1c
	.byte	0x33
	.byte	0x25
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.8byte	0
	.8byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.8byte	0
	.8byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.8byte	.LBB2
	.8byte	.LBE2
	.8byte	.LBB3
	.8byte	.LBE3
	.8byte	0
	.8byte	0
	.8byte	.LBB4
	.8byte	.LBE4
	.8byte	.LBB5
	.8byte	.LBE5
	.8byte	0
	.8byte	0
	.8byte	.LFB0
	.8byte	.LFE0
	.8byte	.LFB1
	.8byte	.LFE1
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"VPN_1"
.LASF1:
	.string	"rodata_start"
.LASF14:
	.string	"GNU C17 10.1.0 -march=rv64imafd -mabi=lp64 -mcmodel=medany -mtune=rocket -g -O3 -ffunction-sections -fdata-sections"
.LASF13:
	.string	"third_pgtbl"
.LASF11:
	.string	"VPN_0"
.LASF9:
	.string	"VPN_2"
.LASF7:
	.string	"pgtbl"
.LASF4:
	.string	"long long unsigned int"
.LASF16:
	.string	"/home/oslab/lab4/arch/riscv/kernel"
.LASF8:
	.string	"perm"
.LASF2:
	.string	"data_start"
.LASF5:
	.string	"paging_init"
.LASF15:
	.string	"vm.c"
.LASF6:
	.string	"create_mapping"
.LASF0:
	.string	"text_start"
.LASF12:
	.string	"second_pgtbl"
.LASF3:
	.string	"_end"
	.ident	"GCC: (GNU) 10.1.0"
