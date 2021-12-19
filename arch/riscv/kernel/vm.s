	.file	"vm.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.create_mapping2,"ax",@progbits
	.align	2
	.globl	create_mapping2
	.type	create_mapping2, @function
create_mapping2:
.LFB2:
	.file 1 "vm.c"
	.loc 1 20 1
	.cfi_startproc
.LVL0:
	.loc 1 22 9
	.loc 1 23 9
	.loc 1 23 25 is_stmt 0
	srli	t1,a1,21
	.loc 1 23 13
	andi	t1,t1,511
.LVL1:
	.loc 1 24 9 is_stmt 1
	.loc 1 24 25 is_stmt 0
	srli	a7,a1,12
	.loc 1 24 13
	andi	a7,a7,511
.LVL2:
	.loc 1 26 9 is_stmt 1
	.loc 1 27 9
	.loc 1 22 25 is_stmt 0
	srli	a3,a1,30
.LVL3:
	.loc 1 27 19
	andi	a3,a3,511
	slli	a3,a3,3
	add	a0,a0,a3
.LVL4:
	.loc 1 27 27
	ld	a3,0(a0)
	andi	a3,a3,1
	.loc 1 27 12
	bne	a3,zero,.L2
	.loc 1 29 13 is_stmt 1
	.loc 1 29 16 is_stmt 0
	lla	a3,.LANCHOR0
	ld	a6,0(a3)
	addi	a6,a6,1
	sd	a6,0(a3)
	.loc 1 30 13 is_stmt 1
	.loc 1 30 63 is_stmt 0
	slli	a6,a6,12
	.loc 1 30 54
	add	a6,a6,a5
.LVL5:
	.loc 1 31 13 is_stmt 1
.LBB10:
	.loc 1 31 18
	.loc 1 31 29
	li	a1,4096
.LVL6:
	add	a1,a6,a1
.LBE10:
	.loc 1 30 54 is_stmt 0
	mv	a3,a6
.LVL7:
.L3:
.LBB11:
	.loc 1 32 17 is_stmt 1 discriminator 3
	.loc 1 32 33 is_stmt 0 discriminator 3
	sd	zero,0(a3)
	.loc 1 31 38 is_stmt 1 discriminator 3
.LVL8:
	.loc 1 31 29 discriminator 3
	.loc 1 31 13 is_stmt 0 discriminator 3
	addi	a3,a3,8
.LVL9:
	bne	a3,a1,.L3
.LBE11:
	.loc 1 33 13 is_stmt 1
	.loc 1 34 13
	.loc 1 33 64 is_stmt 0
	srli	a6,a6,12
.LVL10:
	.loc 1 33 71
	slli	a6,a6,10
	.loc 1 33 26
	ld	a3,0(a0)
.LVL11:
	or	a6,a6,a3
	.loc 1 34 26
	ori	a6,a6,1
	sd	a6,0(a0)
.LVL12:
.L2:
	.loc 1 36 9 is_stmt 1
	.loc 1 38 9
	.loc 1 39 9
	.loc 1 36 47 is_stmt 0
	ld	a1,0(a0)
	srli	a1,a1,10
	.loc 1 36 54
	slli	a1,a1,12
.LVL13:
	.loc 1 39 26
	slli	t1,t1,3
.LVL14:
	add	a1,a1,t1
.LVL15:
	.loc 1 39 34
	ld	a3,0(a1)
	andi	a3,a3,1
	.loc 1 39 12
	bne	a3,zero,.L4
	.loc 1 41 13 is_stmt 1
	.loc 1 41 16 is_stmt 0
	lla	a0,.LANCHOR0
.LVL16:
	ld	a3,0(a0)
	addi	a3,a3,1
	sd	a3,0(a0)
.LVL17:
	.loc 1 42 13 is_stmt 1
	.loc 1 42 62 is_stmt 0
	slli	a3,a3,12
	.loc 1 42 53
	add	a0,a3,a5
.LVL18:
	.loc 1 43 13 is_stmt 1
.LBB12:
	.loc 1 43 18
	.loc 1 43 29
	li	a3,4096
	add	a3,a0,a3
.LBE12:
	.loc 1 42 53 is_stmt 0
	mv	a5,a0
.LVL19:
.L5:
.LBB13:
	.loc 1 44 17 is_stmt 1 discriminator 3
	.loc 1 44 32 is_stmt 0 discriminator 3
	sd	zero,0(a5)
	.loc 1 43 38 is_stmt 1 discriminator 3
.LVL20:
	.loc 1 43 29 discriminator 3
	.loc 1 43 13 is_stmt 0 discriminator 3
	addi	a5,a5,8
.LVL21:
	bne	a5,a3,.L5
.LBE13:
	.loc 1 45 13 is_stmt 1
	.loc 1 46 13
	.loc 1 45 70 is_stmt 0
	srli	a5,a0,12
.LVL22:
	.loc 1 45 77
	slli	a5,a5,10
	.loc 1 45 33
	ld	a3,0(a1)
	or	a5,a5,a3
	.loc 1 46 33
	ori	a5,a5,1
	sd	a5,0(a1)
.LVL23:
.L4:
	.loc 1 48 9 is_stmt 1
	.loc 1 50 9
	.loc 1 48 53 is_stmt 0
	ld	a5,0(a1)
	srli	a5,a5,10
	.loc 1 48 60
	slli	a5,a5,12
.LVL24:
	.loc 1 50 25
	slli	a7,a7,3
.LVL25:
	add	a7,a5,a7
	ld	a3,0(a7)
	.loc 1 50 33
	andi	a5,a3,1
.LVL26:
	.loc 1 50 12
	bne	a5,zero,.L1
	.loc 1 52 13 is_stmt 1
	.loc 1 53 13
	.loc 1 54 13
	.loc 1 52 39 is_stmt 0
	srli	a5,a2,12
	.loc 1 52 46
	slli	a5,a5,10
	.loc 1 54 40
	slliw	a4,a4,1
.LVL27:
	.loc 1 54 32
	or	a4,a4,a3
	or	a5,a5,a4
	ori	a5,a5,1
	sd	a5,0(a7)
.LVL28:
.L1:
	.loc 1 56 1
	ret
	.cfi_endproc
.LFE2:
	.size	create_mapping2, .-create_mapping2
	.section	.text.create_mapping,"ax",@progbits
	.align	2
	.globl	create_mapping
	.type	create_mapping, @function
create_mapping:
.LFB0:
	.loc 1 9 126 is_stmt 1
	.cfi_startproc
.LVL29:
	.loc 1 10 5
	lla	a5,_end
	tail	create_mapping2
.LVL30:
	.cfi_endproc
.LFE0:
	.size	create_mapping, .-create_mapping
	.section	.text.create_mapping_vm,"ax",@progbits
	.align	2
	.globl	create_mapping_vm
	.type	create_mapping_vm, @function
create_mapping_vm:
.LFB1:
	.loc 1 13 129
	.cfi_startproc
.LVL31:
	.loc 1 14 5
	li	a5,65
	lla	a6,_end
	slli	a5,a5,31
	add	a5,a6,a5
	tail	create_mapping2
.LVL32:
	.cfi_endproc
.LFE1:
	.size	create_mapping_vm, .-create_mapping_vm
	.section	.text.paging_init,"ax",@progbits
	.align	2
	.globl	paging_init
	.type	paging_init, @function
paging_init:
.LFB3:
	.loc 1 62 1
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
	.loc 1 63 5
.LVL33:
	.loc 1 65 5
.LBB14:
	.loc 1 65 10
	.loc 1 65 21
	lla	a5,_end
	lla	a4,_end+4096
.LVL34:
.L13:
	.loc 1 67 9 discriminator 3
	.loc 1 67 18 is_stmt 0 discriminator 3
	sd	zero,0(a5)
	.loc 1 65 30 is_stmt 1 discriminator 3
.LVL35:
	.loc 1 65 21 discriminator 3
	.loc 1 65 5 is_stmt 0 discriminator 3
	addi	a5,a5,8
.LVL36:
	bne	a4,a5,.L13
.LVL37:
.LBE14:
.LBB15:
	.loc 1 77 46 is_stmt 1
	.loc 1 77 100 is_stmt 0
	lla	s4,text_start
	li	a5,1
.LVL38:
	slli	a5,a5,31
	lla	s1,rodata_start
	add	s1,s1,a5
	sub	s1,s1,s4
	.loc 1 77 5
	bleu	s1,a5,.L14
	.loc 1 77 29
	mv	s0,a5
	.loc 1 79 9
	li	s3,-65
	slli	s3,s3,31
	lla	s2,_end
.LVL39:
.L15:
	.loc 1 79 9 is_stmt 1 discriminator 3
	li	a4,5
	li	a3,4096
	mv	a2,s0
	add	a1,s0,s3
	mv	a0,s2
	call	create_mapping
.LVL40:
	.loc 1 80 9 discriminator 3
	li	a4,5
	li	a3,4096
	mv	a2,s0
	mv	a1,s0
	mv	a0,s2
	call	create_mapping
.LVL41:
	.loc 1 77 137 discriminator 3
	.loc 1 77 140 is_stmt 0 discriminator 3
	li	a5,4096
	add	s0,s0,a5
.LVL42:
	.loc 1 77 46 is_stmt 1 discriminator 3
	.loc 1 77 5 is_stmt 0 discriminator 3
	bltu	s0,s1,.L15
.LVL43:
.L14:
.LBE15:
.LBB16:
	.loc 1 84 120 is_stmt 1
	.loc 1 84 172 is_stmt 0
	lla	s0,data_start
	li	a5,1
	slli	a5,a5,31
	add	s0,s0,a5
	sub	s0,s0,s4
	.loc 1 84 5
	bleu	s0,s1,.L16
	.loc 1 86 9
	li	s3,-65
	slli	s3,s3,31
	lla	s2,_end
.L17:
	.loc 1 86 9 is_stmt 1 discriminator 3
	li	a4,1
	li	a3,4096
	mv	a2,s1
	add	a1,s1,s3
	mv	a0,s2
	call	create_mapping
.LVL44:
	.loc 1 87 9 discriminator 3
	li	a4,1
	li	a3,4096
	mv	a2,s1
	mv	a1,s1
	mv	a0,s2
	call	create_mapping
.LVL45:
	.loc 1 84 209 discriminator 3
	.loc 1 84 212 is_stmt 0 discriminator 3
	li	a5,4096
	add	s1,s1,a5
.LVL46:
	.loc 1 84 120 is_stmt 1 discriminator 3
	.loc 1 84 5 is_stmt 0 discriminator 3
	bltu	s1,s0,.L17
.L16:
.LVL47:
.LBE16:
.LBB17:
	.loc 1 91 117 is_stmt 1
	.loc 1 91 5 is_stmt 0
	li	a5,65
	slli	a5,a5,25
	bgeu	s0,a5,.L18
	.loc 1 93 9
	li	s3,-65
	slli	s3,s3,31
	lla	s1,_end
.LVL48:
	.loc 1 91 5
	mv	s2,a5
.L19:
	.loc 1 93 9 is_stmt 1 discriminator 3
	li	a4,3
	li	a3,4096
	mv	a2,s0
	add	a1,s0,s3
	mv	a0,s1
	call	create_mapping
.LVL49:
	.loc 1 94 9 discriminator 3
	li	a4,3
	li	a3,4096
	mv	a2,s0
	mv	a1,s0
	mv	a0,s1
	call	create_mapping
.LVL50:
	.loc 1 91 134 discriminator 3
	.loc 1 91 137 is_stmt 0 discriminator 3
	li	a5,4096
	add	s0,s0,a5
.LVL51:
	.loc 1 91 117 is_stmt 1 discriminator 3
	.loc 1 91 5 is_stmt 0 discriminator 3
	bltu	s0,s2,.L19
.L18:
.LVL52:
.LBE17:
.LBB18:
	.loc 1 98 46 is_stmt 1
	.loc 1 100 9
	li	a4,3
	li	a3,4096
	li	a2,268435456
	li	a1,-519
	slli	a1,a1,28
	lla	a0,_end
	call	create_mapping
.LVL53:
	.loc 1 98 63
	.loc 1 98 46
.LBE18:
	.loc 1 102 1 is_stmt 0
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
.LVL54:
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
.LFE3:
	.size	paging_init, .-paging_init
	.section	.text.clear64BitArrays,"ax",@progbits
	.align	2
	.globl	clear64BitArrays
	.type	clear64BitArrays, @function
clear64BitArrays:
.LFB4:
	.loc 1 108 57 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 109 5
.LBB19:
	.loc 1 109 9
	.loc 1 109 17
	.loc 1 109 5 is_stmt 0
	ble	a1,zero,.L25
	mv	a5,a0
	addiw	a4,a1,-1
	slli	a3,a4,32
	srli	a4,a3,29
	addi	a0,a0,8
.LVL56:
	add	a4,a4,a0
.LVL57:
.L27:
	.loc 1 110 9 is_stmt 1 discriminator 3
	.loc 1 110 17 is_stmt 0 discriminator 3
	sd	zero,0(a5)
	.loc 1 109 23 is_stmt 1 discriminator 3
.LVL58:
	.loc 1 109 17 discriminator 3
	.loc 1 109 5 is_stmt 0 discriminator 3
	addi	a5,a5,8
.LVL59:
	bne	a5,a4,.L27
.LVL60:
.L25:
.LBE19:
	.loc 1 112 1
	ret
	.cfi_endproc
.LFE4:
	.size	clear64BitArrays, .-clear64BitArrays
	.section	.text.copy64BitArrays,"ax",@progbits
	.align	2
	.globl	copy64BitArrays
	.type	copy64BitArrays, @function
copy64BitArrays:
.LFB5:
	.loc 1 114 77 is_stmt 1
	.cfi_startproc
.LVL61:
	.loc 1 115 5
.LBB20:
	.loc 1 115 9
	.loc 1 115 17
	.loc 1 115 5 is_stmt 0
	ble	a2,zero,.L29
	mv	a5,a0
	addiw	a4,a2,-1
	slli	a3,a4,32
	srli	a4,a3,29
	addi	a0,a0,8
.LVL62:
	add	a4,a4,a0
.LVL63:
.L31:
	.loc 1 116 9 is_stmt 1 discriminator 3
	.loc 1 116 19 is_stmt 0 discriminator 3
	ld	a3,0(a5)
	.loc 1 116 15 discriminator 3
	sd	a3,0(a1)
	.loc 1 115 23 is_stmt 1 discriminator 3
.LVL64:
	.loc 1 115 17 discriminator 3
	.loc 1 115 5 is_stmt 0 discriminator 3
	addi	a5,a5,8
.LVL65:
	addi	a1,a1,8
	bne	a5,a4,.L31
.LVL66:
.L29:
.LBE20:
	.loc 1 118 1
	ret
	.cfi_endproc
.LFE5:
	.size	copy64BitArrays, .-copy64BitArrays
	.section	.text.initUserPage_vm,"ax",@progbits
	.align	2
	.globl	initUserPage_vm
	.type	initUserPage_vm, @function
initUserPage_vm:
.LFB6:
	.loc 1 122 120 is_stmt 1
	.cfi_startproc
.LVL67:
	.loc 1 123 5
	.loc 1 122 120 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s1,40(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	.cfi_offset 9, -24
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	mv	s1,a0
.LVL68:
.LBB21:
.LBB22:
	.loc 1 173 5 is_stmt 1
.LBE22:
.LBE21:
	.loc 1 122 120 is_stmt 0
	mv	s5,a1
	mv	s6,a2
.LBB25:
.LBB23:
	.loc 1 173 5
	mv	a1,a0
.LVL69:
	li	a2,512
.LVL70:
	lla	a0,_end
.LVL71:
.LBE23:
.LBE25:
	.loc 1 122 120
	sd	s0,48(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	ra,56(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 1, -8
.LBB26:
.LBB24:
	.loc 1 173 5
	call	copy64BitArrays
.LVL72:
.LBE24:
.LBE26:
	.loc 1 126 5 is_stmt 1
.LBB27:
	.loc 1 126 10
	.loc 1 126 37
.LBB28:
.LBB29:
	.loc 1 14 5 is_stmt 0
	li	a5,65
	lla	s2,_end
	slli	a5,a5,31
.LBE29:
.LBE28:
	.loc 1 128 9
	li	s4,33
	.loc 1 126 5
	li	s3,1
.LBB32:
.LBB30:
	.loc 1 14 5
	add	s2,s2,a5
.LBE30:
.LBE32:
	.loc 1 126 29
	li	s0,0
	.loc 1 128 9
	slli	s4,s4,26
	.loc 1 126 5
	slli	s3,s3,31
.LVL73:
.L34:
	.loc 1 128 9 is_stmt 1 discriminator 3
.LBB33:
.LBB31:
	.loc 1 14 5 discriminator 3
	add	a2,s0,s4
	mv	a1,s0
	li	a4,15
	mv	a5,s2
	li	a3,4096
	mv	a0,s1
	call	create_mapping2
.LVL74:
.LBE31:
.LBE33:
	.loc 1 126 54 discriminator 3
	.loc 1 126 57 is_stmt 0 discriminator 3
	li	a4,4096
	add	s0,s0,a4
.LVL75:
	.loc 1 126 37 is_stmt 1 discriminator 3
	.loc 1 126 5 is_stmt 0 discriminator 3
	bne	s0,s3,.L34
.LVL76:
.LBE27:
.LBB34:
	.loc 1 131 64 is_stmt 1
	.loc 1 131 5 is_stmt 0
	beq	s5,zero,.L33
	li	s3,34078720
	.loc 1 131 34
	li	s0,-34078720
.LVL77:
	addi	s3,s3,-1
	slli	s3,s3,12
	addi	s0,s0,-1
	add	s3,s6,s3
	slli	s0,s0,12
	.loc 1 131 29
	li	s4,0
	.loc 1 131 88
	li	s6,-4096
.LVL78:
.L36:
	.loc 1 133 9 is_stmt 1 discriminator 3
.LBB35:
.LBB36:
	.loc 1 14 5 discriminator 3
	mv	a2,s3
	mv	a1,s0
	mv	a5,s2
	li	a4,11
	li	a3,4096
	mv	a0,s1
.LBE36:
.LBE35:
	.loc 1 131 98 is_stmt 0 discriminator 3
	addi	s4,s4,1
.LVL79:
.LBB38:
.LBB37:
	.loc 1 14 5 discriminator 3
	call	create_mapping2
.LVL80:
.LBE37:
.LBE38:
	.loc 1 131 86 is_stmt 1 discriminator 3
	.loc 1 131 88 is_stmt 0 discriminator 3
	add	s0,s0,s6
.LVL81:
	.loc 1 131 64 is_stmt 1 discriminator 3
	.loc 1 131 5 is_stmt 0 discriminator 3
	addi	s3,s3,-1000
	bne	s5,s4,.L36
.LVL82:
.L33:
.LBE34:
	.loc 1 140 1
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	ld	s1,40(sp)
	.cfi_restore 9
.LVL83:
	ld	s2,32(sp)
	.cfi_restore 18
	ld	s3,24(sp)
	.cfi_restore 19
	ld	s4,16(sp)
	.cfi_restore 20
	ld	s5,8(sp)
	.cfi_restore 21
.LVL84:
	ld	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	initUserPage_vm, .-initUserPage_vm
	.section	.text.copyRootPage_vm,"ax",@progbits
	.align	2
	.globl	copyRootPage_vm
	.type	copyRootPage_vm, @function
copyRootPage_vm:
.LFB7:
	.loc 1 142 70 is_stmt 1
	.cfi_startproc
.LVL85:
	.loc 1 173 5
	li	a2,512
	tail	copy64BitArrays
.LVL86:
	.cfi_endproc
.LFE7:
	.size	copyRootPage_vm, .-copyRootPage_vm
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
	.file 2 "/home/oslab/lab5/arch/riscv/include/vm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7fa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
	.4byte	.Ldebug_ranges0+0x110
	.8byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.string	"cur"
	.byte	0x2
	.byte	0x8
	.byte	0x14
	.4byte	0x3f
	.byte	0x9
	.byte	0x3
	.8byte	cur
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
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
	.4byte	.LASF20
	.byte	0x1
	.byte	0x8e
	.byte	0x6
	.byte	0x1
	.4byte	0x9c
	.byte	0x6
	.string	"src"
	.byte	0x1
	.byte	0x8e
	.byte	0x2a
	.4byte	0x9c
	.byte	0x6
	.string	"dst"
	.byte	0x1
	.byte	0x8e
	.byte	0x42
	.4byte	0x9c
	.byte	0
	.byte	0x7
	.byte	0x8
	.4byte	0x3f
	.byte	0x8
	.4byte	.LASF7
	.byte	0x1
	.byte	0x7a
	.byte	0x6
	.8byte	.LFB6
	.8byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x272
	.byte	0x9
	.4byte	.LASF4
	.byte	0x1
	.byte	0x7a
	.byte	0x2a
	.4byte	0x9c
	.4byte	.LLST32
	.byte	0x9
	.4byte	.LASF5
	.byte	0x1
	.byte	0x7a
	.byte	0x43
	.4byte	0x3f
	.4byte	.LLST33
	.byte	0x9
	.4byte	.LASF6
	.byte	0x1
	.byte	0x7a
	.byte	0x68
	.4byte	0x3f
	.4byte	.LLST34
	.byte	0xa
	.8byte	.LBB27
	.8byte	.LBE27-.LBB27
	.4byte	0x18c
	.byte	0xb
	.string	"va"
	.byte	0x1
	.byte	0x7e
	.byte	0x1d
	.4byte	0x3f
	.4byte	.LLST36
	.byte	0xc
	.4byte	0x660
	.8byte	.LBB28
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0x80
	.byte	0x9
	.byte	0xd
	.4byte	0x69a
	.4byte	.LLST37
	.byte	0xd
	.4byte	0x68f
	.4byte	.LLST38
	.byte	0xd
	.4byte	0x684
	.4byte	.LLST39
	.byte	0xd
	.4byte	0x679
	.4byte	.LLST40
	.byte	0xd
	.4byte	0x66d
	.4byte	.LLST41
	.byte	0xe
	.8byte	.LVL74
	.4byte	0x56a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x78
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0xf
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.8byte	.LBB34
	.8byte	.LBE34-.LBB34
	.4byte	0x233
	.byte	0xb
	.string	"i"
	.byte	0x1
	.byte	0x83
	.byte	0x1d
	.4byte	0x3f
	.4byte	.LLST42
	.byte	0xb
	.string	"va"
	.byte	0x1
	.byte	0x83
	.byte	0x22
	.4byte	0x3f
	.4byte	.LLST43
	.byte	0xc
	.4byte	0x660
	.8byte	.LBB35
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0x85
	.byte	0x9
	.byte	0xd
	.4byte	0x69a
	.4byte	.LLST44
	.byte	0xd
	.4byte	0x68f
	.4byte	.LLST45
	.byte	0xd
	.4byte	0x684
	.4byte	.LLST46
	.byte	0xd
	.4byte	0x679
	.4byte	.LLST47
	.byte	0xd
	.4byte	0x66d
	.4byte	.LLST48
	.byte	0xe
	.8byte	.LVL80
	.4byte	0x56a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3b
	.byte	0xf
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x76
	.8byte	.LBB21
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x7b
	.byte	0x5
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST35
	.byte	0x10
	.4byte	0x83
	.byte	0xe
	.8byte	.LVL72
	.4byte	0x272
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF8
	.byte	0x1
	.byte	0x72
	.byte	0x6
	.8byte	.LFB5
	.8byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x2df
	.byte	0x11
	.string	"src"
	.byte	0x1
	.byte	0x72
	.byte	0x2a
	.4byte	0x9c
	.4byte	.LLST29
	.byte	0x11
	.string	"dst"
	.byte	0x1
	.byte	0x72
	.byte	0x41
	.4byte	0x9c
	.4byte	.LLST30
	.byte	0x12
	.string	"len"
	.byte	0x1
	.byte	0x72
	.byte	0x49
	.4byte	0x2df
	.byte	0x1
	.byte	0x5c
	.byte	0x13
	.8byte	.LBB20
	.8byte	.LBE20-.LBB20
	.byte	0xb
	.string	"i"
	.byte	0x1
	.byte	0x73
	.byte	0xd
	.4byte	0x2df
	.4byte	.LLST31
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x8
	.4byte	.LASF10
	.byte	0x1
	.byte	0x6c
	.byte	0x6
	.8byte	.LFB4
	.8byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x343
	.byte	0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0x6c
	.byte	0x2b
	.4byte	0x9c
	.4byte	.LLST27
	.byte	0x12
	.string	"len"
	.byte	0x1
	.byte	0x6c
	.byte	0x35
	.4byte	0x2df
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.8byte	.LBB19
	.8byte	.LBE19-.LBB19
	.byte	0xb
	.string	"i"
	.byte	0x1
	.byte	0x6d
	.byte	0xd
	.4byte	0x2df
	.4byte	.LLST28
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3d
	.byte	0x6
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x56a
	.byte	0x16
	.4byte	.LASF4
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.4byte	0x9c
	.byte	0xa
	.8byte	.LBB14
	.8byte	.LBE14-.LBB14
	.4byte	0x391
	.byte	0xb
	.string	"i"
	.byte	0x1
	.byte	0x41
	.byte	0xe
	.4byte	0x2df
	.4byte	.LLST22
	.byte	0
	.byte	0xa
	.8byte	.LBB15
	.8byte	.LBE15-.LBB15
	.4byte	0x415
	.byte	0xb
	.string	"pa"
	.byte	0x1
	.byte	0x4d
	.byte	0x1d
	.4byte	0x3f
	.4byte	.LLST23
	.byte	0x17
	.8byte	.LVL40
	.4byte	0x6a7
	.4byte	0x3e8
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x78
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0xe
	.8byte	.LVL41
	.4byte	0x6a7
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0xa
	.8byte	.LBB16
	.8byte	.LBE16-.LBB16
	.4byte	0x499
	.byte	0xb
	.string	"pa"
	.byte	0x1
	.byte	0x54
	.byte	0x1d
	.4byte	0x3f
	.4byte	.LLST24
	.byte	0x17
	.8byte	.LVL44
	.4byte	0x6a7
	.4byte	0x46c
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xe
	.8byte	.LVL45
	.4byte	0x6a7
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0xa
	.8byte	.LBB17
	.8byte	.LBE17-.LBB17
	.4byte	0x51d
	.byte	0xb
	.string	"pa"
	.byte	0x1
	.byte	0x5b
	.byte	0x1d
	.4byte	0x3f
	.4byte	.LLST25
	.byte	0x17
	.8byte	.LVL49
	.4byte	0x6a7
	.4byte	0x4f0
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x78
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0xe
	.8byte	.LVL50
	.4byte	0x6a7
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x13
	.8byte	.LBB18
	.8byte	.LBE18-.LBB18
	.byte	0xb
	.string	"pa"
	.byte	0x1
	.byte	0x62
	.byte	0x1d
	.4byte	0x3f
	.4byte	.LLST26
	.byte	0xe
	.8byte	.LVL53
	.4byte	0x6a7
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x6
	.byte	0xa
	.2byte	0x81c0
	.byte	0x46
	.byte	0x24
	.byte	0x1f
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x40
	.byte	0x48
	.byte	0x24
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x660
	.byte	0x9
	.4byte	.LASF4
	.byte	0x1
	.byte	0x13
	.byte	0x2a
	.4byte	0x9c
	.4byte	.LLST0
	.byte	0x11
	.string	"va"
	.byte	0x1
	.byte	0x13
	.byte	0x44
	.4byte	0x3f
	.4byte	.LLST1
	.byte	0x12
	.string	"pa"
	.byte	0x1
	.byte	0x13
	.byte	0x5b
	.4byte	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.string	"sz"
	.byte	0x1
	.byte	0x13
	.byte	0x72
	.4byte	0x3f
	.4byte	.LLST2
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x13
	.byte	0x7a
	.4byte	0x2df
	.4byte	.LLST3
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x13
	.byte	0x92
	.4byte	0x3f
	.4byte	.LLST4
	.byte	0x18
	.4byte	.LASF15
	.byte	0x1
	.byte	0x16
	.byte	0xd
	.4byte	0x2df
	.4byte	.LLST5
	.byte	0x18
	.4byte	.LASF16
	.byte	0x1
	.byte	0x17
	.byte	0xd
	.4byte	0x2df
	.4byte	.LLST6
	.byte	0x18
	.4byte	.LASF17
	.byte	0x1
	.byte	0x18
	.byte	0xd
	.4byte	0x2df
	.4byte	.LLST7
	.byte	0x18
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1a
	.byte	0x1d
	.4byte	0x9c
	.4byte	.LLST8
	.byte	0x18
	.4byte	.LASF19
	.byte	0x1
	.byte	0x26
	.byte	0x1d
	.4byte	0x9c
	.4byte	.LLST9
	.byte	0x19
	.4byte	.Ldebug_ranges0+0
	.4byte	0x64b
	.byte	0xb
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.byte	0x16
	.4byte	0x2df
	.4byte	.LLST10
	.byte	0
	.byte	0x1a
	.4byte	.Ldebug_ranges0+0x30
	.byte	0xb
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.byte	0x16
	.4byte	0x2df
	.4byte	.LLST11
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF21
	.byte	0x1
	.byte	0xd
	.byte	0x6
	.byte	0x1
	.4byte	0x6a7
	.byte	0x1b
	.4byte	.LASF4
	.byte	0x1
	.byte	0xd
	.byte	0x2c
	.4byte	0x9c
	.byte	0x6
	.string	"va"
	.byte	0x1
	.byte	0xd
	.byte	0x46
	.4byte	0x3f
	.byte	0x6
	.string	"pa"
	.byte	0x1
	.byte	0xd
	.byte	0x5d
	.4byte	0x3f
	.byte	0x6
	.string	"sz"
	.byte	0x1
	.byte	0xd
	.byte	0x74
	.4byte	0x3f
	.byte	0x1b
	.4byte	.LASF13
	.byte	0x1
	.byte	0xd
	.byte	0x7c
	.4byte	0x2df
	.byte	0
	.byte	0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x73d
	.byte	0x9
	.4byte	.LASF4
	.byte	0x1
	.byte	0x9
	.byte	0x29
	.4byte	0x9c
	.4byte	.LLST12
	.byte	0x11
	.string	"va"
	.byte	0x1
	.byte	0x9
	.byte	0x43
	.4byte	0x3f
	.4byte	.LLST13
	.byte	0x11
	.string	"pa"
	.byte	0x1
	.byte	0x9
	.byte	0x5a
	.4byte	0x3f
	.4byte	.LLST14
	.byte	0x11
	.string	"sz"
	.byte	0x1
	.byte	0x9
	.byte	0x71
	.4byte	0x3f
	.4byte	.LLST15
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x9
	.byte	0x79
	.4byte	0x2df
	.4byte	.LLST16
	.byte	0x1c
	.8byte	.LVL30
	.4byte	0x56a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	0x660
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x7b0
	.byte	0xd
	.4byte	0x66d
	.4byte	.LLST17
	.byte	0xd
	.4byte	0x679
	.4byte	.LLST18
	.byte	0xd
	.4byte	0x684
	.4byte	.LLST19
	.byte	0xd
	.4byte	0x68f
	.4byte	.LLST20
	.byte	0xd
	.4byte	0x69a
	.4byte	.LLST21
	.byte	0x1c
	.8byte	.LVL32
	.4byte	0x56a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	0x76
	.8byte	.LFB7
	.8byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.byte	0xd
	.4byte	0x83
	.4byte	.LLST49
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST50
	.byte	0x1c
	.8byte	.LVL86
	.4byte	0x272
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x200
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
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
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
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x2e
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x1e
	.byte	0x2e
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST32:
	.8byte	.LVL67
	.8byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.8byte	.LVL71
	.8byte	.LVL83
	.2byte	0x1
	.byte	0x59
	.8byte	.LVL83
	.8byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST33:
	.8byte	.LVL67
	.8byte	.LVL69
	.2byte	0x1
	.byte	0x5b
	.8byte	.LVL69
	.8byte	.LVL84
	.2byte	0x1
	.byte	0x65
	.8byte	.LVL84
	.8byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST34:
	.8byte	.LVL67
	.8byte	.LVL70
	.2byte	0x1
	.byte	0x5c
	.8byte	.LVL70
	.8byte	.LVL78
	.2byte	0x1
	.byte	0x66
	.8byte	.LVL78
	.8byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST36:
	.8byte	.LVL72
	.8byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL73
	.8byte	.LVL77
	.2byte	0x1
	.byte	0x58
	.8byte	0
	.8byte	0
.LLST37:
	.8byte	.LVL73
	.8byte	.LVL74
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST38:
	.8byte	.LVL73
	.8byte	.LVL74
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST39:
	.8byte	.LVL73
	.8byte	.LVL74
	.2byte	0x7
	.byte	0x78
	.byte	0x80,0x80,0x80,0xa0,0x8
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST40:
	.8byte	.LVL73
	.8byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.8byte	0
	.8byte	0
.LLST41:
	.8byte	.LVL73
	.8byte	.LVL74
	.2byte	0x1
	.byte	0x59
	.8byte	0
	.8byte	0
.LLST42:
	.8byte	.LVL76
	.8byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL78
	.8byte	.LVL79
	.2byte	0x1
	.byte	0x64
	.8byte	.LVL79
	.8byte	.LVL81
	.2byte	0x3
	.byte	0x84
	.byte	0x7f
	.byte	0x9f
	.8byte	.LVL81
	.8byte	.LVL82
	.2byte	0x1
	.byte	0x64
	.8byte	0
	.8byte	0
.LLST43:
	.8byte	.LVL76
	.8byte	.LVL78
	.2byte	0x8
	.byte	0x11
	.byte	0x80,0xe0,0xff,0xff,0xf7,0x7b
	.byte	0x9f
	.8byte	.LVL78
	.8byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.8byte	0
	.8byte	0
.LLST44:
	.8byte	.LVL78
	.8byte	.LVL80
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST45:
	.8byte	.LVL78
	.8byte	.LVL80
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST46:
	.8byte	.LVL78
	.8byte	.LVL80
	.2byte	0x1
	.byte	0x63
	.8byte	0
	.8byte	0
.LLST47:
	.8byte	.LVL78
	.8byte	.LVL80
	.2byte	0x1
	.byte	0x58
	.8byte	0
	.8byte	0
.LLST48:
	.8byte	.LVL78
	.8byte	.LVL80
	.2byte	0x1
	.byte	0x59
	.8byte	0
	.8byte	0
.LLST35:
	.8byte	.LVL68
	.8byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.8byte	.LVL71
	.8byte	.LVL72
	.2byte	0x1
	.byte	0x59
	.8byte	0
	.8byte	0
.LLST29:
	.8byte	.LVL61
	.8byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.8byte	.LVL62
	.8byte	.LVL63
	.2byte	0x1
	.byte	0x5f
	.8byte	.LVL63
	.8byte	.LVL66
	.2byte	0x3
	.byte	0x7a
	.byte	0x78
	.byte	0x9f
	.8byte	.LVL66
	.8byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST30:
	.8byte	.LVL61
	.8byte	.LVL63
	.2byte	0x1
	.byte	0x5b
	.8byte	.LVL63
	.8byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST31:
	.8byte	.LVL61
	.8byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL63
	.8byte	.LVL64
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x8
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.8byte	.LVL64
	.8byte	.LVL65
	.2byte	0xc
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x8
	.byte	0x33
	.byte	0x25
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.8byte	.LVL65
	.8byte	.LVL66
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
	.8byte	0
	.8byte	0
.LLST27:
	.8byte	.LVL55
	.8byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.8byte	.LVL56
	.8byte	.LVL57
	.2byte	0x1
	.byte	0x5f
	.8byte	.LVL57
	.8byte	.LVL60
	.2byte	0x3
	.byte	0x7a
	.byte	0x78
	.byte	0x9f
	.8byte	.LVL60
	.8byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST28:
	.8byte	.LVL55
	.8byte	.LVL57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL57
	.8byte	.LVL58
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x8
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.8byte	.LVL58
	.8byte	.LVL59
	.2byte	0xc
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x8
	.byte	0x33
	.byte	0x25
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.8byte	.LVL59
	.8byte	.LVL60
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
	.8byte	0
	.8byte	0
.LLST22:
	.8byte	.LVL33
	.8byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST23:
	.8byte	.LVL37
	.8byte	.LVL39
	.2byte	0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x9f
	.8byte	.LVL39
	.8byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.8byte	0
	.8byte	0
.LLST24:
	.8byte	.LVL43
	.8byte	.LVL48
	.2byte	0x1
	.byte	0x59
	.8byte	0
	.8byte	0
.LLST25:
	.8byte	.LVL47
	.8byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.8byte	0
	.8byte	0
.LLST26:
	.8byte	.LVL52
	.8byte	.LVL53
	.2byte	0x4
	.byte	0x40
	.byte	0x48
	.byte	0x24
	.byte	0x9f
	.8byte	.LVL53
	.8byte	.LFE3
	.2byte	0x6
	.byte	0xc
	.4byte	0x10001000
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST0:
	.8byte	.LVL0
	.8byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.8byte	.LVL4
	.8byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST1:
	.8byte	.LVL0
	.8byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.8byte	.LVL6
	.8byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST2:
	.8byte	.LVL0
	.8byte	.LVL3
	.2byte	0x1
	.byte	0x5d
	.8byte	.LVL3
	.8byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST3:
	.8byte	.LVL0
	.8byte	.LVL27
	.2byte	0x1
	.byte	0x5e
	.8byte	.LVL27
	.8byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST4:
	.8byte	.LVL0
	.8byte	.LVL19
	.2byte	0x1
	.byte	0x5f
	.8byte	.LVL19
	.8byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST5:
	.8byte	.LVL0
	.8byte	.LVL6
	.2byte	0x9
	.byte	0x7b
	.byte	0
	.byte	0x4e
	.byte	0x25
	.byte	0xa
	.2byte	0x1ff
	.byte	0x1a
	.byte	0x9f
	.8byte	.LVL6
	.8byte	.LFE2
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
.LLST6:
	.8byte	.LVL1
	.8byte	.LVL14
	.2byte	0x1
	.byte	0x56
	.8byte	.LVL14
	.8byte	.LFE2
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
.LLST7:
	.8byte	.LVL2
	.8byte	.LVL25
	.2byte	0x1
	.byte	0x61
	.8byte	.LVL25
	.8byte	.LFE2
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
.LLST8:
	.8byte	.LVL5
	.8byte	.LVL10
	.2byte	0x1
	.byte	0x60
	.8byte	.LVL10
	.8byte	.LVL12
	.2byte	0x4
	.byte	0x7b
	.byte	0x80,0x60
	.byte	0x9f
	.8byte	.LVL12
	.8byte	.LVL13
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x3a
	.byte	0x25
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.8byte	.LVL13
	.8byte	.LVL15
	.2byte	0x1
	.byte	0x5b
	.8byte	.LVL15
	.8byte	.LVL16
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x3a
	.byte	0x25
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.8byte	.LVL16
	.8byte	.LVL17
	.2byte	0x15
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x4e
	.byte	0x25
	.byte	0xa
	.2byte	0x1ff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.byte	0x6
	.byte	0x3a
	.byte	0x25
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST9:
	.8byte	.LVL18
	.8byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.8byte	.LVL23
	.8byte	.LVL24
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x6
	.byte	0x3a
	.byte	0x25
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.8byte	.LVL24
	.8byte	.LVL26
	.2byte	0x1
	.byte	0x5f
	.8byte	.LVL26
	.8byte	.LVL28
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
.LLST10:
	.8byte	.LVL5
	.8byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL7
	.8byte	.LVL8
	.2byte	0x8
	.byte	0x7d
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x1c
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.8byte	.LVL8
	.8byte	.LVL9
	.2byte	0xa
	.byte	0x7d
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x1c
	.byte	0x33
	.byte	0x25
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.8byte	.LVL9
	.8byte	.LVL10
	.2byte	0xc
	.byte	0x7d
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
	.8byte	.LVL10
	.8byte	.LVL11
	.2byte	0xd
	.byte	0x7d
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0xf8,0x1f
	.byte	0x33
	.byte	0x25
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST11:
	.8byte	.LVL18
	.8byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL19
	.8byte	.LVL20
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.8byte	.LVL20
	.8byte	.LVL21
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
	.8byte	.LVL21
	.8byte	.LVL22
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
.LLST12:
	.8byte	.LVL29
	.8byte	.LVL30-1
	.2byte	0x1
	.byte	0x5a
	.8byte	.LVL30-1
	.8byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST13:
	.8byte	.LVL29
	.8byte	.LVL30-1
	.2byte	0x1
	.byte	0x5b
	.8byte	.LVL30-1
	.8byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST14:
	.8byte	.LVL29
	.8byte	.LVL30-1
	.2byte	0x1
	.byte	0x5c
	.8byte	.LVL30-1
	.8byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST15:
	.8byte	.LVL29
	.8byte	.LVL30-1
	.2byte	0x1
	.byte	0x5d
	.8byte	.LVL30-1
	.8byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST16:
	.8byte	.LVL29
	.8byte	.LVL30-1
	.2byte	0x1
	.byte	0x5e
	.8byte	.LVL30-1
	.8byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST17:
	.8byte	.LVL31
	.8byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.8byte	.LVL32-1
	.8byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST18:
	.8byte	.LVL31
	.8byte	.LVL32-1
	.2byte	0x1
	.byte	0x5b
	.8byte	.LVL32-1
	.8byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST19:
	.8byte	.LVL31
	.8byte	.LVL32-1
	.2byte	0x1
	.byte	0x5c
	.8byte	.LVL32-1
	.8byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST20:
	.8byte	.LVL31
	.8byte	.LVL32-1
	.2byte	0x1
	.byte	0x5d
	.8byte	.LVL32-1
	.8byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST21:
	.8byte	.LVL31
	.8byte	.LVL32-1
	.2byte	0x1
	.byte	0x5e
	.8byte	.LVL32-1
	.8byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST49:
	.8byte	.LVL85
	.8byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.8byte	.LVL86-1
	.8byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST50:
	.8byte	.LVL85
	.8byte	.LVL86-1
	.2byte	0x1
	.byte	0x5b
	.8byte	.LVL86-1
	.8byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.8byte	0
	.8byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x9c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.8byte	.LFB4
	.8byte	.LFE4-.LFB4
	.8byte	.LFB5
	.8byte	.LFE5-.LFB5
	.8byte	.LFB6
	.8byte	.LFE6-.LFB6
	.8byte	.LFB7
	.8byte	.LFE7-.LFB7
	.8byte	0
	.8byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.8byte	.LBB10
	.8byte	.LBE10
	.8byte	.LBB11
	.8byte	.LBE11
	.8byte	0
	.8byte	0
	.8byte	.LBB12
	.8byte	.LBE12
	.8byte	.LBB13
	.8byte	.LBE13
	.8byte	0
	.8byte	0
	.8byte	.LBB21
	.8byte	.LBE21
	.8byte	.LBB25
	.8byte	.LBE25
	.8byte	.LBB26
	.8byte	.LBE26
	.8byte	0
	.8byte	0
	.8byte	.LBB28
	.8byte	.LBE28
	.8byte	.LBB32
	.8byte	.LBE32
	.8byte	.LBB33
	.8byte	.LBE33
	.8byte	0
	.8byte	0
	.8byte	.LBB35
	.8byte	.LBE35
	.8byte	.LBB38
	.8byte	.LBE38
	.8byte	0
	.8byte	0
	.8byte	.LFB2
	.8byte	.LFE2
	.8byte	.LFB0
	.8byte	.LFE0
	.8byte	.LFB1
	.8byte	.LFE1
	.8byte	.LFB3
	.8byte	.LFE3
	.8byte	.LFB4
	.8byte	.LFE4
	.8byte	.LFB5
	.8byte	.LFE5
	.8byte	.LFB6
	.8byte	.LFE6
	.8byte	.LFB7
	.8byte	.LFE7
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"VPN_0"
.LASF26:
	.string	"paging_init"
.LASF22:
	.string	"create_mapping"
.LASF18:
	.string	"second_pgtbl"
.LASF10:
	.string	"clear64BitArrays"
.LASF2:
	.string	"data_start"
.LASF14:
	.string	"allocation_start"
.LASF0:
	.string	"text_start"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"create_mapping2"
.LASF20:
	.string	"copyRootPage_vm"
.LASF21:
	.string	"create_mapping_vm"
.LASF5:
	.string	"stack_page_number"
.LASF4:
	.string	"pgtbl"
.LASF25:
	.string	"/home/oslab/lab5/arch/riscv/kernel"
.LASF24:
	.string	"vm.c"
.LASF13:
	.string	"perm"
.LASF3:
	.string	"_end"
.LASF6:
	.string	"stack_high_addr"
.LASF16:
	.string	"VPN_1"
.LASF11:
	.string	"array"
.LASF19:
	.string	"third_pgtbl"
.LASF23:
	.string	"GNU C17 10.1.0 -march=rv64imafd -mabi=lp64 -mcmodel=medany -mtune=rocket -g -O3 -ffunction-sections -fdata-sections"
.LASF7:
	.string	"initUserPage_vm"
.LASF1:
	.string	"rodata_start"
.LASF8:
	.string	"copy64BitArrays"
.LASF15:
	.string	"VPN_2"
	.ident	"GCC: (GNU) 10.1.0"
