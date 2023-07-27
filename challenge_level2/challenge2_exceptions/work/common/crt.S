#include "encoding.h"

#if __riscv_xlen == 64
  # define LREG ld
  # define LREGU lwu
  # define SREG sd
  # define REGBYTES 8
  # define FMV fmv.d.x
#else
  # define LREG lw
  # define SREG sw
  # define LREGU lw
  # define REGBYTES 4
  # define FMV fmv.w.x
#endif

  .section ".text.init"
  .globl _start
_start:
  la sp, begin_signature
  LREG  x1, 0*REGBYTES(sp)
  LREG  x3, 1*REGBYTES(sp)
  LREG  x4, 2*REGBYTES(sp)
  LREG  x5, 3*REGBYTES(sp)
  LREG  x6, 4*REGBYTES(sp)
  LREG  x7, 5*REGBYTES(sp)
  LREG  x8, 6*REGBYTES(sp)
  LREG  x9, 7*REGBYTES(sp)
  LREG  x10,8*REGBYTES(sp)
  LREG  x11,9*REGBYTES(sp)
  LREG  x12,10*REGBYTES(sp)
  LREG  x13,11*REGBYTES(sp)
  LREG  x14,12*REGBYTES(sp)
  LREG  x15,13*REGBYTES(sp)
  LREG  x16,14*REGBYTES(sp)
  LREG  x17,15*REGBYTES(sp)
  LREG  x18,16*REGBYTES(sp)
  LREG  x19,17*REGBYTES(sp)
  LREG  x20,18*REGBYTES(sp)
  LREG  x21,19*REGBYTES(sp)
  LREG  x22,20*REGBYTES(sp)
  LREG  x23,21*REGBYTES(sp)
  LREG  x24,22*REGBYTES(sp)
  LREG  x25,23*REGBYTES(sp)
  LREG  x26,24*REGBYTES(sp)
  LREG  x27,25*REGBYTES(sp)
  LREG  x28,26*REGBYTES(sp)
  LREG  x29,27*REGBYTES(sp)
  LREG  x30,28*REGBYTES(sp)
  LREG  x31,29*REGBYTES(sp)

  # enable FPU and accelerator if present
  li t0, MSTATUS_FS | MSTATUS_XS
  csrs mstatus, t0

  # make sure XLEN agrees with compilation choice
  li t0, 1
  slli t0, t0, 31
#if __riscv_xlen == 64
  bgez t0, 1f
#else
  bltz t0, 1f
#endif
2:
  li a0, 1
  sw a0, tohost, t0
  j 2b
1:

#ifdef __riscv_flen
  # initialize FPU if we have one
  la t0, 1f
  csrw mtvec, t0

  fssr    x0
  FMV  f0, x1
  FMV  f1, x1
  FMV  f2, x2
  FMV  f3, x3
  FMV  f4, x4
  FMV  f5, x5
  FMV  f6, x6
  FMV  f7, x7
  FMV  f8, x8
  FMV  f9, x9
  FMV  f10, x10
  FMV  f11, x11
  FMV  f12, x12
  FMV  f13, x13
  FMV  f14, x14
  FMV  f15, x15
  FMV  f16, x16
  FMV  f17, x17
  FMV  f18, x18
  FMV  f19, x19
  FMV  f20, x20
  FMV  f21, x21
  FMV  f22, x22
  FMV  f23, x23
  FMV  f24, x24
  FMV  f25, x25
  FMV  f26, x26
  FMV  f27, x27
  FMV  f28, x28
  FMV  f29, x29
  FMV  f30, x30
  FMV  f31, x31
  .align 4
1:
#endif

  # initialize trap vector
  la t0, trap_entry
  csrw mtvec, t0

  la  tp, _end + 63
  and tp, tp, -64

  # get core id
  csrr a0, mhartid
  # for now, assume only 1 core
  li a1, 1
1:bgeu a0, a1, 1b

  # give each core 128KB of stack + TLS
#define STKSHIFT 17
  sll a2, a0, STKSHIFT
  add tp, tp, a2
  add sp, a0, 1
  sll sp, sp, STKSHIFT
  add sp, sp, tp

  j main

  .align 2
trap_entry:
  addi sp, sp, -272

  SREG x1, 1*REGBYTES(sp)
  SREG x2, 2*REGBYTES(sp)
  SREG x3, 3*REGBYTES(sp)
  SREG x4, 4*REGBYTES(sp)
  SREG x5, 5*REGBYTES(sp)
  SREG x6, 6*REGBYTES(sp)
  SREG x7, 7*REGBYTES(sp)
  SREG x8, 8*REGBYTES(sp)
  SREG x9, 9*REGBYTES(sp)
  SREG x10, 10*REGBYTES(sp)
  SREG x11, 11*REGBYTES(sp)
  SREG x12, 12*REGBYTES(sp)
  SREG x13, 13*REGBYTES(sp)
  SREG x14, 14*REGBYTES(sp)
  SREG x15, 15*REGBYTES(sp)
  SREG x16, 16*REGBYTES(sp)
  SREG x17, 17*REGBYTES(sp)
  SREG x18, 18*REGBYTES(sp)
  SREG x19, 19*REGBYTES(sp)
  SREG x20, 20*REGBYTES(sp)
  SREG x21, 21*REGBYTES(sp)
  SREG x22, 22*REGBYTES(sp)
  SREG x23, 23*REGBYTES(sp)
  SREG x24, 24*REGBYTES(sp)
  SREG x25, 25*REGBYTES(sp)
  SREG x26, 26*REGBYTES(sp)
  SREG x27, 27*REGBYTES(sp)
  SREG x28, 28*REGBYTES(sp)
  SREG x29, 29*REGBYTES(sp)
  SREG x30, 30*REGBYTES(sp)
  SREG x31, 31*REGBYTES(sp)

  csrr a0, mcause                 # copy the mcause to register a0.
  csrr a1, mepc                   # copy the mepc to register a1.
  lhu  a2, 0(a1)                  # load instruction into reg a1.

  # check the lower 2 bits to see if the instruction is 32-bit or 16-bit.
  andi a2, a2, 0x3;
  li t0, 0x3
  bne a2,t0,inst16

  inst32:                           # is 32-bit instruction then increment by 4
  addi a1,a1,0x4
  beqz x0,1f

inst16:
  addi a1,a1,0x2                  # is 16-bit instruction then increment by 2

1: 
  csrw mepc, a1                   # point mepc to the next instruction.

  # use mcause to update the number of exceptions encountered in the program.

  # Remain in M-mode after eret
  li t0, MSTATUS_MPP
  csrs mstatus, t0

  LREG x1, 1*REGBYTES(sp)
  LREG x2, 2*REGBYTES(sp)
  LREG x3, 3*REGBYTES(sp)
  LREG x4, 4*REGBYTES(sp)
  LREG x5, 5*REGBYTES(sp)
  LREG x6, 6*REGBYTES(sp)
  LREG x7, 7*REGBYTES(sp)
  LREG x8, 8*REGBYTES(sp)
  LREG x9, 9*REGBYTES(sp)
  LREG x10, 10*REGBYTES(sp)
  LREG x11, 11*REGBYTES(sp)
  LREG x12, 12*REGBYTES(sp)
  LREG x13, 13*REGBYTES(sp)
  LREG x14, 14*REGBYTES(sp)
  LREG x15, 15*REGBYTES(sp)
  LREG x16, 16*REGBYTES(sp)
  LREG x17, 17*REGBYTES(sp)
  LREG x18, 18*REGBYTES(sp)
  LREG x19, 19*REGBYTES(sp)
  LREG x20, 20*REGBYTES(sp)
  LREG x21, 21*REGBYTES(sp)
  LREG x22, 22*REGBYTES(sp)
  LREG x23, 23*REGBYTES(sp)
  LREG x24, 24*REGBYTES(sp)
  LREG x25, 25*REGBYTES(sp)
  LREG x26, 26*REGBYTES(sp)
  LREG x27, 27*REGBYTES(sp)
  LREG x28, 28*REGBYTES(sp)
  LREG x29, 29*REGBYTES(sp)
  LREG x30, 30*REGBYTES(sp)
  LREG x31, 31*REGBYTES(sp)

  addi sp, sp, 272
  mret

.section ".tdata.begin"
.globl _tdata_begin
_tdata_begin:

.section ".tdata.end"
.globl _tdata_end
_tdata_end:

.section ".tbss.end"
.globl _tbss_end
_tbss_end:

.section ".tohost","aw",@progbits
.align 6
.globl tohost
tohost: .dword 0
.align 6
.globl fromhost
fromhost: .dword 0

# Exception generation numbers
.align 4
.globl ecause_num
ecause_num:
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0

# Read only data
.section ".rodata"
.globl rodata
rodata:
    	.dword 0x5b707269762d6d6f
	.dword 0x64655d0a6d6f6465
	.dword 0x203d206d0a5b6765
	.dword 0x6e6572616c5d0a74
	.dword 0x6f74616c5f696e73
	.dword 0x7472756374696f6e
	.dword 0x73203d203130300a
	.dword 0x726567735f6e6f74
	.dword 0x5f757365203d2078
	.dword 0x312c78320a637573
	.dword 0x746f6d5f74726170
	.dword 0x5f68616e646c6572
	.dword 0x203d20547275650a
	.dword 0x636f64655f737461
	.dword 0x72745f6164647265
	.dword 0x7373203d20323134
	.dword 0x373438333634380a
	.dword 0x64656661756c745f
	.dword 0x70726f6772616d5f
	.dword 0x65786974203d2054
	.dword 0x7275650a64656c65
	.dword 0x676174696f6e203d
	.dword 0x20300a5b6973612d
	.dword 0x696e737472756374
	.dword 0x696f6e2d64697374
	.dword 0x7269627574696f6e
	.dword 0x5d0a72656c5f7379
	.dword 0x73203d20300a7265
	.dword 0x6c5f7379732e6373
	.dword 0x72203d20300a7265
	.dword 0x6c5f72763332692e
	.dword 0x6374726c203d2035
	.dword 0x0a72656c5f727633
	.dword 0x32692e636f6d7075
	.dword 0x7465203d2031300a
	.dword 0x72656c5f72763332
	.dword 0x692e64617461203d
	.dword 0x203130300a72656c
	.dword 0x5f72763332692e66
	.dword 0x656e6365203d2031
	.dword 0x300a72656c5f7276
	.dword 0x3634692e636f6d70
	.dword 0x757465203d20300a
	.dword 0x72656c5f72763634
	.dword 0x692e64617461203d
	.dword 0x20300a72656c5f72
	.dword 0x763332692e7a6261
	.dword 0x203d20300a72656c
	.dword 0x5f72763634692e7a
	.dword 0x6261203d20300a72
	.dword 0x656c5f7276333269
	.dword 0x2e7a6262203d2030
	.dword 0x0a72656c5f727636
	.dword 0x34692e7a6262203d
	.dword 0x20300a72656c5f72
	.dword 0x763332692e7a6263
	.dword 0x203d20300a72656c
	.dword 0x5f72763332692e7a
	.dword 0x6273203d20300a72
	.dword 0x656c5f7276333269
	.dword 0x2e7a6265203d2030
	.dword 0x0a72656c5f727636
	.dword 0x34692e7a6265203d
	.dword 0x20300a72656c5f72
	.dword 0x763332692e7a6266
	.dword 0x203d20300a72656c
	.dword 0x5f72763634692e7a
	.dword 0x6266203d20300a72
	.dword 0x656c5f7276363469
	.dword 0x2e7a626d203d2030
	.dword 0x0a72656c5f727633
	.dword 0x32692e7a6270203d
	.dword 0x20300a72656c5f72
	.dword 0x763634692e7a6270
	.dword 0x203d20300a72656c
	.dword 0x5f72763332692e7a
	.dword 0x6272203d20300a72
	.dword 0x656c5f7276363469
	.dword 0x2e7a6272203d2030
	.dword 0x0a72656c5f727633
	.dword 0x32692e7a6274203d
	.dword 0x20300a72656c5f72
	.dword 0x763634692e7a6274
	.dword 0x203d20300a72656c
	.dword 0x5f727633326d203d
	.dword 0x20300a72656c5f72
	.dword 0x7636346d203d2030
	.dword 0x0a72656c5f727633
	.dword 0x3261203d20300a72
	.dword 0x656c5f7276363461
	.dword 0x203d20300a72656c
	.dword 0x5f7276333266203d
	.dword 0x20300a72656c5f72
	.dword 0x76363466203d2030
	.dword 0x0a72656c5f727633
	.dword 0x3264203d20300a72
	.dword 0x656c5f7276363464
	.dword 0x203d20300a72656c
	.dword 0x5f7276632e637472
	.dword 0x6c203d20300a7265
	.dword 0x6c5f7276632e636f
	.dword 0x6d70757465203d20
	.dword 0x300a72656c5f7276
	.dword 0x632e7370203d2030
	.dword 0x0a72656c5f727663
	.dword 0x2e64617461203d20
	.dword 0x300a72656c5f7276
	.dword 0x632e666461746120
	.dword 0x3d20300a72656c5f
	.dword 0x72763332632e636f
	.dword 0x6d70757465203d20
	.dword 0x300a72656c5f7276
	.dword 0x3332632e6374726c
	.dword 0x203d20300a72656c
	.dword 0x5f72763332632e66
	.dword 0x64617461203d2030
	.dword 0x0a72656c5f727636
	.dword 0x34632e636f6d7075
	.dword 0x7465203d20300a72
	.dword 0x656c5f7276363463
	.dword 0x2e64617461203d20
	.dword 0x300a5b666c6f6174
	.dword 0x2d726f756e64696e
	.dword 0x675d0a726e65203d
	.dword 0x2031300a72747a20
	.dword 0x3d2031300a72646e
	.dword 0x203d2031300a7275
	.dword 0x70203d2031300a72
	.dword 0x6d6d203d2031300a
	.dword 0x5b6272616e63682d
	.dword 0x636f6e74726f6c5d
	.dword 0x0a6261636b776172
	.dword 0x642d70726f626162
	.dword 0x696c697479203d20
	.dword 0x302e350a626c6f63
	.dword 0x6b2d73697a65203d
	.dword 0x20370a5b72656375
	.dword 0x7273696f6e2d6f70
	.dword 0x74696f6e735d0a72
	.dword 0x6563757273696f6e
	.dword 0x2d656e61626c6520
	.dword 0x3d2046616c73650a
	.dword 0x726563757273696f
	.dword 0x6e2d646570746820
	.dword 0x3d2031300a726563
	.dword 0x757273696f6e2d63
	.dword 0x616c6c73203d2035
	.dword 0x0a5b616363657373
	.dword 0x2d73656374696f6e
	.dword 0x735d0a626567696e
	.dword 0x5f7369676e617475
	.dword 0x7265203d20307838
	.dword 0x303039303030302c
	.dword 0x3078383030613030
	.dword 0x30302c72770a5b63
	.dword 0x73722d7365637469
	.dword 0x6f6e735d0a736563
	.dword 0x74696f6e73203d20
	.dword 0x343039350a5b7573
	.dword 0x65722d66756e6374
	.dword 0x696f6e735d0a6675
	.dword 0x6e6331203d207b30
	.dword 0x3a22616464207830
	.dword 0x2c78302c7830227d
	.dword 0x0a5b737769746368
	.dword 0x2d707269762d6d6f
	.dword 0x6465735d0a737769
	.dword 0x7463685f6d6f6465
	.dword 0x73203d2046616c73
	.dword 0x650a6e756d5f7377
	.dword 0x697463686573203d
	.dword 0x20300a5b692d6361
	.dword 0x6368655d0a6e756d
	.dword 0x5f63616c6c73203d
	.dword 0x20300a6e756d5f62
	.dword 0x797465735f706572
	.dword 0x5f626c6f636b203d
	.dword 0x2031360a6e756d5f
	.dword 0x626c6f636b73203d
	.dword 0x20380a6e756d5f63
	.dword 0x79636c6573203d20
	.dword 0x31300a5b642d6361
	.dword 0x6368655d0a6e756d
	.dword 0x5f63616c6c73203d
	.dword 0x20300a6e756d5f62
	.dword 0x797465735f706572
	.dword 0x5f626c6f636b203d
	.dword 0x2031360a6e756d5f
	.dword 0x626c6f636b73203d
	.dword 0x20380a6e756d5f63
	.dword 0x79636c6573203d20
	.dword 0x31300a5b65786365
	.dword 0x7074696f6e2d6765
	.dword 0x6e65726174696f6e
	.dword 0x5d0a656361757365
	.dword 0x3030203d20300a65
	.dword 0x6361757365303120
	.dword 0x3d20300a65636175
	.dword 0x73653032203d2031
	.dword 0x300a656361757365
	.dword 0x3033203d20300a65
	.dword 0x6361757365303420
	.dword 0x3d20300a65636175
	.dword 0x73653035203d2030
	.dword 0x0a65636175736530
	.dword 0x36203d20300a6563
	.dword 0x617573653037203d
	.dword 0x20300a6563617573
	.dword 0x653038203d20300a
	.dword 0x6563617573653039
	.dword 0x203d20300a656361
	.dword 0x7573653130203d20
	.dword 0x300a656361757365
	.dword 0x3131203d20300a65
	.dword 0x6361757365313220
	.dword 0x3d20300a65636175
	.dword 0x73653133203d2030
	.dword 0x0a65636175736531
	.dword 0x34203d20300a5b64
	.dword 0x6174612d68617a61
	.dword 0x7264735d0a726177
	.dword 0x5f70726f62203d20
	.dword 0x302e350a7761725f
	.dword 0x70726f62203d2030
	.dword 0x2e350a7761775f70
	.dword 0x726f62203d20302e
	.dword 0x350a6e756d5f7265
	.dword 0x67735f6c6f6f6b62
	.dword 0x6568696e64203d20
	.dword 0x330a5b70726f6772
	.dword 0x616d2d6d6163726f
	.dword 0x5d0a7072655f7072
	.dword 0x6f6772616d5f6d61
	.dword 0x63726f203d206164
	.dword 0x642078302c78302c
	.dword 0x78300a706f73745f
	.dword 0x70726f6772616d5f
	.dword 0x6d6163726f203d20
	.dword 0x6c692067702c313b
	.dword 0x200a207377206770
	.dword 0x2c20746f686f7374
	.dword 0x2c2074353b0a2066
	.dword 0x656e63652e693b0a
	.dword 0x206c692074362c20
	.dword 0x2030783230303030
	.dword 0x3b200a206c612074
	.dword 0x352c20626567696e
	.dword 0x5f7369676e617475
	.dword 0x72653b200a207377
	.dword 0x2074352c20302874
	.dword 0x36293b200a206c61
	.dword 0x2074352c20656e64
	.dword 0x5f7369676e617475
	.dword 0x7265200a20737720
	.dword 0x74352c2038287436
	.dword 0x293b200a20737720
	.dword 0x74352c2020313228
	.dword 0x7436293b0a707265
	.dword 0x5f6272616e63685f
	.dword 0x6d6163726f203d20
	.dword 0x6164642078302c78
	.dword 0x302c78300a706f73
	.dword 0x745f6272616e6368
	.dword 0x5f6d6163726f203d
	.dword 0x206164642078302c
	.dword 0x78302c78300a6563
	.dword 0x617573653030203d
	.dword 0x2072616e646f6d0a
	.dword 0x6563617573653031
	.dword 0x203d2072616e646f
	.dword 0x6d0a656361757365
	.dword 0x3032203d2072616e
	.dword 0x646f6d0a65636175
	.dword 0x73653033203d2072
	.dword 0x616e646f6d0a6563
	.dword 0x617573653034203d
	.dword 0x2072616e646f6d0a
	.dword 0x6563617573653035
	.dword 0x203d2072616e646f
	.dword 0x6d0a656361757365
	.dword 0x3036203d2072616e
	.dword 0x646f6d0a65636175
	.dword 0x73653037203d2072
	.dword 0x616e646f6d0a6563
	.dword 0x617573653038203d
	.dword 0x2072616e646f6d0a
	.dword 0x6563617573653039
	.dword 0x203d2072616e646f
	.dword 0x6d0a656361757365
	.dword 0x3130203d2072616e
	.dword 0x646f6d0a65636175
	.dword 0x73653131203d2072
	.dword 0x616e646f6d0a6563
	.dword 0x617573653132203d
	.dword 0x2072616e646f6d0a
	.dword 0x6563617573653133
	.dword 0x203d2072616e646f
	.dword 0x6d0a656361757365
	.dword 0x3134203d2072616e
	.dword 0x646f6d0a5b73656c
	.dword 0x662d636865636b69
	.dword 0x6e675d0a72617465
	.dword 0x203d203130300a74
	.dword 0x6573745f70617373
	.dword 0x5f6d6163726f203d
	.dword 0x206c612020202020
	.dword 0x2073702c20626567
	.dword 0x696e5f7369676e61
	.dword 0x747572653b206164
	.dword 0x6469202020207370
	.dword 0x2c2073702c20322a
	.dword 0x5245474259544553
	.dword 0x3b206c6920202020
	.dword 0x202074312c203078
	.dword 0x66666666663b2053
	.dword 0x5245472020202074
	.dword 0x312c20302a524547
	.dword 0x4259544553287370
	.dword 0x290a746573745f66
	.dword 0x61696c5f6d616372
	.dword 0x6f203d2061646420
	.dword 0x78302c78302c7830
	.byte 0xa
