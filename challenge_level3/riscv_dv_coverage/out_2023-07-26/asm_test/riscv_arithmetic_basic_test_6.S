.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 1
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

init_machine_mode:
                  li x29, 0x1a00
                  csrw 0x300, x29 # MSTATUS
                  li x29, 0x0
                  csrw 0x304, x29 # MIE
                  mret
init:             
                  li x0, 0xfdd23a09
                  li x1, 0x0
                  li x2, 0x78a554ce
                  li x3, 0xa223037e
                  li x4, 0xf1df1a61
                  li x5, 0x7
                  li x6, 0x80000000
                  li x7, 0xf5f583d4
                  li x8, 0x2
                  li x9, 0x51f8ea40
                  li x10, 0x80000000
                  li x11, 0xb
                  li x12, 0x80000000
                  li x13, 0xfe074262
                  li x14, 0xfb1c31e9
                  li x15, 0x80000000
                  li x16, 0x9
                  li x17, 0x9
                  li x18, 0x0
                  li x19, 0x8
                  li x20, 0x0
                  li x21, 0xa
                  li x22, 0xd
                  li x23, 0xa
                  li x24, 0x80000000
                  li x25, 0x6b1548c3
                  li x26, 0x3
                  li x27, 0xfb6d15fb
                  li x28, 0x0
                  li x29, 0x7
                  la x30, user_stack_end
main:             li         gp, 0x1 #start riscv_int_numeric_corner_stream_10
                  li         t4, 0x0
                  li         t3, 0x1
                  li         a2, 0x1
                  li         s8, 0x1
                  li         s11, 0x0
                  li         s10, 0x0
                  li         a4, 0x0
                  li         t1, 0x1
                  li         s9, 0x1
                  sub         t3, t4, t3
                  add         sp, a7, s6
                  sub         ra, t6, s7
                  sub         s8, s4, a3
                  addi        s2, s2, -208
                  sub         zero, t5, t0
                  nop
                  sub         zero, t3, t0
                  sub         a0, gp, a7
                  add         gp, gp, a2
                  lui         zero, 911306
                  add         zero, sp, a5
                  sub         a5, t6, gp
                  lui         ra, 971862
                  lui         s4, 772919
                  addi        s1, a3, 1889
                  lui         s5, 803214
                  sub         s3, t6, s5
                  addi        t4, a6, -1743
                  lui         zero, 305285
                  sub         zero, a0, t3
                  addi        s9, s6, -1460 #end riscv_int_numeric_corner_stream_10
                  li         a4, 0x1 #start riscv_int_numeric_corner_stream_5
                  li         t4, 0x0
                  li         s8, 0x0
                  li         t3, 0x0
                  li         s11, 0x0
                  li         a1, 0x70cd0bb5
                  li         s1, 0x1
                  li         gp, 0x0
                  li         s3, 0x263543ae
                  li         a2, 0x0
                  addi        s7, s10, -1205
                  add         zero, s2, t0
                  add         t4, a5, s11
                  sub         s5, a1, a5
                  addi        zero, s2, -1325
                  sub         s7, a1, t1
                  addi        zero, t0, -98
                  addi        gp, a7, 1538
                  add         s7, s3, t1
                  sub         s0, s10, s6
                  add         s6, s2, a4
                  add         a6, s1, s8
                  lui         zero, 757402
                  add         s7, sp, a2
                  nop
                  add         s8, a1, t5
                  nop
                  nop
                  sub         s10, a5, s9
                  sub         s0, s4, s3
                  lui         s6, 212442
                  sub         s5, s7, s9 #end riscv_int_numeric_corner_stream_5
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_1
                  li         t3, 0x1
                  li         s11, 0x0
                  li         sp, 0x0
                  li         a1, 0x0
                  li         gp, 0x0
                  li         a0, 0x0
                  li         s0, 0x0
                  li         s10, 0x0
                  li         s9, 0x499835b
                  sub         a0, t5, s7
                  addi        s10, t5, -775
                  add         zero, ra, s4
                  sub         a1, t4, s11
                  add         a0, s0, t1
                  nop
                  lui         s2, 127687
                  addi        gp, s4, -1014
                  addi        s3, s0, -820
                  nop
                  lui         zero, 37651
                  lui         s10, 989639
                  add         tp, sp, a3
                  lui         a3, 498875
                  sub         s8, s8, t1
                  lui         a6, 562832
                  addi        a2, a7, 636
                  nop
                  nop
                  lui         a2, 367796 #end riscv_int_numeric_corner_stream_1
                  li         a3, 0x0 #start riscv_int_numeric_corner_stream_7
                  li         sp, 0x0
                  li         s11, 0x0
                  li         s0, 0x0
                  li         s1, 0x38aee551
                  li         a6, 0x0
                  li         s9, 0x1
                  li         s6, 0x84de70f
                  li         s4, 0x1
                  li         a2, 0x0
                  addi        a5, s7, -87
                  add         t2, a7, t6
                  add         s6, a4, sp
                  addi        a7, ra, 508
                  sub         a1, t0, s2
                  sub         s6, s8, zero
                  lui         s3, 354755
                  nop
                  add         s2, s7, a6
                  sub         zero, s0, a5
                  sub         a1, a4, a3
                  nop
                  addi        a4, s9, 1815
                  addi        s6, tp, 816
                  addi        s6, zero, 857
                  add         s7, s8, t5
                  nop
                  sub         a5, a6, s10
                  add         a0, t2, s2
                  addi        a2, s6, -1344
                  addi        s11, sp, 1546
                  lui         s10, 225356
                  lui         a6, 283565
                  lui         t2, 29581
                  lui         t2, 985226
                  lui         gp, 839029
                  nop
                  add         zero, s0, a2
                  lui         t2, 79357 #end riscv_int_numeric_corner_stream_7
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_3
                  li         t3, 0x1
                  li         s4, 0x24f17634
                  li         s3, 0x29ee0bb7
                  li         a3, 0x437222ec
                  li         a2, 0x3a46c075
                  li         s10, 0x3ee37fe8
                  li         s8, 0x0
                  li         s5, 0x2bbb10bb
                  li         a4, 0x1
                  nop
                  sub         s1, a6, s6
                  add         a6, a3, t6
                  lui         tp, 418698
                  add         s6, t4, a5
                  nop
                  sub         gp, ra, t1
                  nop
                  add         t4, s11, a6
                  lui         gp, 592564
                  lui         a0, 858917
                  nop
                  sub         t4, zero, a7
                  add         s10, t0, a0
                  nop
                  sub         sp, s2, s5
                  addi        a1, t3, 1265
                  addi        t2, t0, 663
                  sub         tp, a7, s5
                  lui         a4, 469970
                  add         t1, sp, a7 #end riscv_int_numeric_corner_stream_3
                  sltu        a7, t2, s10
                  ori         s4, t5, 804
                  xor         t4, gp, s5
                  andi        zero, t5, 551
                  addi        t4, a0, 589
                  lui         s4, 221238
                  sll         sp, sp, a4
                  sra         a0, t3, s6
                  sll         t4, s3, ra
                  and         t4, t6, t4
                  beq         s1, a3, 21f
                  sltiu       tp, t6, -754
                  sltiu       zero, a2, 221
                  sltu        s10, s8, s3
                  sltiu       t4, sp, 1398
                  sub         s10, ra, tp
                  xori        a5, a1, 1983
                  sll         s2, s6, s1
                  ori         zero, s7, -1062
                  add         s6, t5, a1
                  add         t3, a6, a3
21:               slt         a7, ra, t1
                  sltiu       zero, gp, 1545
                  xor         a1, gp, ra
                  xor         a7, a3, t5
                  beq         t3, t5, 38f
                  xori        s3, tp, 1573
                  addi        a5, a1, -1170
                  srai        t4, a1, 7
                  bne         a7, s5, 44f
                  bge         t6, t6, 37f
                  auipc       s0, 441298
                  and         a7, a2, s11
                  slti        t1, a3, 1548
                  sltu        s6, t6, s2
                  andi        t4, s2, -792
                  xor         a3, t3, s8
37:               andi        t4, s3, 1181
38:               xori        sp, s8, 510
                  bltu        s10, t6, 56f
                  nop
                  andi        a1, a4, 1100
                  sub         s5, s10, s8
                  sll         t3, a5, a2
44:               slt         a3, s8, t6
                  srai        s1, s4, 9
                  srli        zero, ra, 22
                  andi        a4, s3, 1453
                  bltu        s0, a2, 63f
                  srli        s8, s7, 12
                  sltiu       a0, a5, 1819
                  and         zero, t0, a6
                  srai        a6, s11, 30
                  srli        s1, t2, 30
                  sltiu       zero, s4, 1503
                  sltu        a4, s8, a6
56:               or          zero, s5, a1
                  beq         gp, tp, 74f
                  bltu        s9, s2, 73f
                  nop
                  sltiu       a6, s0, 253
                  bgeu        t1, s6, 81f
                  add         zero, a6, sp
63:               sll         a7, s9, tp
                  srl         s2, t5, t4
                  bne         s8, s11, 70f
                  beq         s2, t5, 76f
                  add         ra, t1, sp
                  blt         s1, a0, 71f
                  srai        t3, tp, 20
70:               xori        s1, zero, -864
71:               sltiu       gp, t3, -1842
                  andi        t4, s6, -1597
73:               srl         s5, t3, zero
74:               add         s7, s8, s11
                  add         s1, t0, t0
76:               ori         a0, ra, 1919
                  or          zero, tp, a6
                  srai        s5, s5, 21
                  add         s8, s4, a5
                  bge         a7, tp, 84f
81:               bgeu        a6, a6, 91f
                  slti        s5, tp, -1760
                  add         s10, t4, s6
84:               lui         a4, 312800
                  sra         zero, t6, a6
                  slli        t4, t5, 11
                  slt         t1, ra, t6
                  sll         s5, a4, s4
                  add         t3, s3, s3
                  sltiu       a0, s4, -1038
91:               bne         s6, t6, 101f
                  add         ra, t3, sp
                  ori         a1, t6, -860
                  sltu        tp, s2, a1
                  auipc       s3, 771344
                  blt         s7, s8, 112f
                  bltu        a0, t6, 99f
                  bltu        s5, t1, 110f
99:               andi        s5, s5, 2042
                  srli        a4, s10, 9
101:              slli        s11, s11, 5
                  andi        t4, t4, -1213
                  xor         a6, s9, a2
                  beq         a5, a5, 115f
                  bgeu        t3, t5, 107f
                  bge         s7, sp, 114f
107:              ori         s8, a5, -1654
                  sltiu       a6, s8, -654
                  bne         s7, a7, 128f
110:              sra         a4, s7, gp
                  xori        t1, t3, 708
112:              or          s1, t4, a0
                  beq         s2, s3, 126f
114:              slli        a1, s8, 13
115:              sll         s0, s2, ra
                  andi        s4, t2, -1539
                  slli        a6, t1, 10
                  nop
                  blt         t0, t0, 136f
                  bgeu        tp, ra, 129f
                  and         s6, s3, s9
                  xor         s11, a0, t1
                  sll         ra, s9, s5
                  sra         t1, s10, t6
                  bne         s9, s8, 145f
126:              ori         t3, zero, -1319
                  addi        a5, t4, -21
128:              sltiu       s2, zero, -700
129:              ori         s1, a6, -1860
                  blt         s4, sp, 147f
                  xori        s9, t5, -286
                  sll         s10, a1, gp
                  sub         a0, a5, s6
                  ori         tp, a6, -114
                  srai        s10, s5, 28
136:              srai        a6, t2, 12
                  ori         zero, tp, 1171
                  xor         zero, s9, a7
                  nop
                  bgeu        a7, s1, 157f
                  bne         s0, s0, 143f
                  bgeu        s5, s4, 154f
143:              srai        a0, a2, 8
                  lui         a4, 862552
145:              ori         sp, t0, -836
                  auipc       s1, 52705
147:              ori         t2, s3, 1053
                  sub         s3, t3, s1
                  sltiu       s8, sp, -1545
                  blt         s9, a5, 152f
                  blt         t0, s7, 163f
152:              addi        a3, t4, 1822
                  sub         a0, s0, a1
154:              beq         s6, t4, 159f
                  xori        a1, s8, 776
                  sll         s6, t5, a4
157:              slli        s3, a6, 2
                  bgeu        s0, s2, 171f
159:              add         zero, a0, a1
                  bgeu        t6, s9, 170f
                  slt         s1, s5, a4
                  bgeu        t2, gp, 173f
163:              xor         a5, t2, s9
                  srl         zero, t5, a4
                  xori        s5, t1, 1726
                  bne         t6, s7, 185f
                  srl         s8, t6, t3
                  sltiu       zero, s0, 269
                  andi        a5, a5, -554
170:              lui         a4, 1013075
171:              or          a3, tp, s6
                  and         gp, s9, s7
173:              andi        zero, t6, -1680
                  sub         a7, zero, a0
                  auipc       tp, 994352
                  sra         sp, a2, t0
                  add         s3, s6, s5
                  bltu        t5, s3, 193f
                  sltu        s7, t2, tp
                  slli        t2, a1, 4
                  srli        s5, gp, 24
                  slt         a6, sp, a6
                  bgeu        t6, t1, 200f
                  slt         s6, s9, tp
185:              andi        t3, t5, -284
                  xori        s6, s11, -523
                  andi        a0, s1, -1707
                  slt         s10, a3, a2
                  andi        s10, t1, -1794
                  slt         s4, a4, a3
                  xor         t1, t0, t6
                  blt         s5, a3, 205f
193:              slti        a6, t4, -113
                  and         s1, s10, t3
                  beq         t3, s5, 212f
                  addi        s3, ra, 736
                  slt         a3, a0, tp
                  bltu        a7, s6, 207f
                  auipc       s11, 81070
200:              sll         t4, gp, s1
                  xor         s0, s4, t3
                  sub         sp, a5, a6
                  sub         t4, t6, s1
                  bgeu        s1, t3, 221f
205:              bge         s3, s1, 220f
                  blt         t0, s4, 216f
207:              addi        t1, s11, -1765
                  slti        s9, a7, -1665
                  ori         zero, gp, -287
                  add         a5, t2, t3
                  srai        a2, a5, 3
212:              blt         t6, ra, 220f
                  addi        t1, t6, 1213
                  addi        s6, a7, 1583
                  sltiu       s10, s5, -1759
216:              slt         tp, a7, a4
                  xori        tp, t4, 1777
                  srai        s8, s9, 15
                  sltiu       a0, s3, 1003
220:              sub         zero, s5, a2
221:              and         ra, sp, t6
                  srl         zero, s0, a4
                  bge         a7, s1, 243f
                  xori        ra, a2, -1397
                  srai        s7, a5, 14
                  nop
                  addi        t2, a2, 1221
                  or          a5, a5, s11
                  sra         gp, s1, t0
                  ori         s5, t4, 352
                  slli        s5, s6, 21
                  ori         s9, gp, -1939
                  sll         sp, s1, tp
                  bgeu        s0, t6, 236f
                  sltu        s7, a4, a7
236:              xori        gp, a5, -161
                  or          a6, t4, a5
                  xori        t2, t2, -1890
                  add         s1, a4, a2
                  nop
                  and         s2, tp, s2
                  bltu        s5, zero, 262f
243:              and         sp, s7, tp
                  addi        zero, t5, 370
                  bge         a2, t1, 248f
                  srli        s9, s8, 7
                  and         a6, s10, zero
248:              auipc       zero, 935573
                  addi        s9, s11, 69
                  bgeu        s0, t0, 267f
                  sll         a0, sp, gp
                  srli        a0, sp, 14
                  lui         zero, 702004
                  blt         a6, s4, 270f
                  srl         zero, s10, s3
                  xor         s9, s4, s11
                  auipc       sp, 554912
                  bge         a5, ra, 268f
                  ori         tp, s1, -1910
                  sra         sp, a4, t6
                  xor         t4, s7, t3
262:              slli        zero, t4, 31
                  srl         a5, t0, s2
                  sll         s4, t0, sp
                  bne         a4, a1, 269f
                  slli        s7, a6, 16
267:              sub         t1, t6, s8
268:              auipc       s5, 583606
269:              bne         gp, a7, 280f
270:              bge         s2, s2, 272f
                  blt         s5, gp, 288f
272:              and         tp, t6, a2
                  ori         zero, tp, 1200
                  sra         a1, s5, s5
                  srli        s3, t3, 14
                  auipc       s6, 372932
                  or          s3, s1, zero
                  sll         s5, t3, t0
                  nop
280:              addi        gp, a2, 559
                  or          gp, a4, a0
                  sll         a7, s3, a4
                  and         zero, t1, t2
                  addi        s6, a6, 1561
                  sra         a1, s2, zero
                  beq         s7, a0, 298f
                  slt         zero, t4, t6
288:              ori         s3, t4, 393
                  sra         ra, ra, s10
                  sra         a3, a3, s7
                  slli        a7, ra, 23
                  bne         s3, a2, 307f
                  andi        s2, zero, 1834
                  or          a5, s11, zero
                  bne         s4, a1, 302f
                  sltiu       t4, t1, -1854
                  and         s5, s3, s10
298:              sra         s2, s2, a5
                  srl         t1, s3, s3
                  andi        s1, t0, -1636
                  nop
302:              addi        s10, tp, 1465
                  sra         t3, s2, s9
                  xori        tp, s8, 146
                  and         a3, s5, gp
                  sltiu       s9, s6, -796
307:              or          sp, s9, a0
                  srl         tp, a6, zero
                  and         s0, a5, ra
                  slli        s1, s0, 2
                  sub         s0, t5, a3
                  auipc       s11, 850517
                  slli        a1, t1, 23
                  bne         t3, s10, 331f
                  auipc       s1, 25102
                  slli        t2, a3, 12
                  or          s8, zero, zero
                  xor         a6, gp, ra
                  bge         s5, s0, 326f
                  sll         ra, t2, s2
                  bgeu        a7, t4, 336f
                  bge         s7, a3, 339f
                  andi        zero, s5, -1348
                  sra         s11, s1, s11
                  auipc       s2, 913133
326:              srli        t2, t6, 9
                  sub         a7, a4, a6
                  srli        zero, t4, 14
                  bgeu        t0, s4, 334f
                  bgeu        ra, s0, 333f
331:              bltu        s7, s3, 339f
                  andi        a1, a7, -1787
333:              xori        ra, s4, 1606
334:              xori        s5, s7, 717
                  srli        s3, s7, 20
336:              bltu        s3, t0, 351f
                  sra         s4, s10, s2
                  blt         t1, s6, 350f
339:              or          zero, gp, s6
                  addi        a3, s7, 857
                  sltiu       t4, s3, -1260
                  slti        a3, s8, 1573
                  slti        a4, a2, 788
                  srai        s0, s10, 10
                  nop
                  srli        a0, s8, 4
                  bge         s7, a2, 366f
                  srl         s5, a6, tp
                  auipc       a0, 315642
350:              bge         t4, s0, 370f
351:              andi        a4, a0, 1579
                  bgeu        a3, s2, 362f
                  ori         s2, t3, 432
                  slt         a5, s7, sp
                  sub         s9, s10, s0
                  add         s9, a0, s3
                  xori        a3, s5, -349
                  slti        a3, sp, 1131
                  slt         zero, t2, a2
                  and         t1, s11, s10
                  or          s0, s9, s6
362:              lui         s10, 127523
                  slli        s7, a1, 27
                  nop
                  sub         s2, tp, a5
366:              sub         t2, s1, t6
                  or          a2, s10, a6
                  sra         s5, a5, t3
                  bltu        s7, a6, 386f
370:              srl         s3, s10, zero
                  slli        zero, t6, 31
                  sub         s10, t4, t4
                  and         gp, a0, s1
                  bltu        s10, s11, 391f
                  beq         a0, a7, 379f
                  xor         s11, sp, t3
                  or          s10, s9, s10
                  ori         a5, s2, 240
379:              bltu        t5, zero, 389f
                  blt         s3, t5, 382f
                  xori        zero, t4, -580
382:              slt         t3, ra, a2
                  sra         a1, ra, t6
                  bgeu        t2, s9, 386f
                  sra         a5, a2, ra
386:              sll         zero, a2, tp
                  lui         s7, 113478
                  beq         a6, s2, 404f
389:              slt         a6, t5, s5
                  xor         t2, s0, s0
391:              bne         s9, a2, 393f
                  beq         a5, s8, 409f
393:              srai        a1, t0, 25
                  addi        zero, a2, -1872
                  sub         tp, t0, a3
                  bgeu        a2, s3, 407f
                  auipc       s9, 509486
                  bge         a3, a1, 409f
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_2
                  li         t3, 0x0
                  li         s7, 0x7f7d0fa8
                  li         a6, 0x1
                  li         s11, 0x0
                  li         a7, 0x1
                  li         s10, 0x1
                  li         s9, 0x1
                  li         s3, 0x0
                  li         a0, 0x0
                  addi        ra, a2, -1189
                  nop
                  add         a1, ra, ra
                  nop
                  addi        zero, a0, -209
                  lui         gp, 434669
                  nop
                  addi        s7, t0, -172
                  add         s0, a4, a4
                  nop
                  addi        t1, sp, -632
                  lui         s10, 636054
                  sub         s8, s10, t4
                  sub         a6, a4, s11
                  add         t3, ra, t6
                  lui         t4, 516918
                  nop
                  nop
                  add         a0, t0, a2 #end riscv_int_numeric_corner_stream_2
                  slli        a7, t3, 1
                  nop
                  lui         gp, 1017461
                  nop
                  bltu        t2, t1, 418f
404:              ori         s1, zero, 1255
                  bgeu        s7, s4, 417f
                  slti        a4, t2, -211
407:              ori         s1, t1, -345
                  addi        zero, a3, -584
409:              sub         zero, t5, s4
                  bne         s4, s3, 419f
                  srl         t4, a1, s10
                  sll         zero, a2, t3
                  lui         ra, 149033
                  auipc       a1, 384679
                  blt         s1, a4, 425f
                  sra         s8, zero, a1
417:              nop
418:              srli        a2, tp, 7
419:              slli        a1, sp, 22
                  srli        a3, gp, 14
                  slli        a0, s3, 23
                  bgeu        s3, a3, 435f
                  add         gp, s0, s2
                  bne         sp, s7, 437f
425:              sltiu       tp, a1, 1318
                  sub         s1, t6, sp
                  sltu        s11, a4, ra
                  srai        sp, s2, 1
                  slli        t4, a2, 18
                  bltu        a2, s0, 450f
                  bne         t4, a4, 440f
                  xor         s9, t4, t3
                  xori        s4, a4, -1574
                  srai        s0, t4, 0
435:              addi        tp, s10, 2030
                  bgeu        t5, a5, 447f
437:              sra         gp, s5, zero
                  auipc       a0, 455360
                  add         s2, s3, s4
440:              bltu        s2, a6, 457f
                  srai        a3, s11, 18
                  sll         s9, t3, a5
                  bgeu        s9, s0, 455f
                  sub         s0, a5, sp
                  beq         s8, a7, 464f
                  andi        ra, s7, 929
447:              ori         t1, t6, 498
                  srai        s0, a0, 30
                  bne         t6, s0, 459f
450:              slti        a1, a0, -1958
                  addi        zero, t5, -2026
                  blt         sp, s3, 465f
                  add         zero, s0, t1
                  bgeu        t3, s7, 474f
455:              slli        a1, t2, 4
                  srl         s3, s2, s0
457:              srl         a4, a0, tp
                  ori         t2, a6, 1231
459:              sub         zero, a2, a3
                  beq         a0, s1, 477f
                  xori        s5, t2, 121
                  sll         ra, a7, t1
                  slli        s7, t4, 10
464:              srli        s8, a4, 10
465:              bgeu        a4, s1, 468f
                  add         a2, a6, s11
                  sltu        a0, s11, sp
468:              nop
                  blt         s5, t4, 471f
                  bne         s1, s7, 485f
471:              bgeu        s1, s7, 486f
                  ori         sp, s1, -1606
                  slli        a5, s10, 29
474:              andi        t3, tp, 1258
                  auipc       s4, 763954
                  ori         s10, s5, -1099
477:              or          ra, s10, zero
                  slli        s11, s4, 12
                  and         t3, t5, t3
                  bne         s10, gp, 482f
                  srai        s11, a4, 12
482:              sub         s6, s8, t1
                  slt         s1, zero, s5
                  srl         s2, t6, s0
485:              nop
486:              srai        s2, a2, 5
                  xori        t2, ra, -1852
                  auipc       zero, 805727
                  sll         s1, gp, a6
                  bne         t6, a1, 507f
                  slt         a0, a3, s11
                  srl         s9, s8, s0
                  addi        t4, a2, 640
                  slt         tp, s8, s9
                  lui         ra, 1003523
                  bltu        t6, a3, 509f
                  srl         s7, a7, zero
                  bltu        s0, s9, 500f
                  sra         t3, a3, s10
500:              xor         a7, a5, s0
                  sra         sp, s11, s10
                  slti        s9, zero, 332
                  lui         zero, 201214
                  sltu        zero, a6, a3
                  srai        s7, s11, 11
                  xor         t2, t4, s7
507:              sra         a3, s6, a2
                  auipc       sp, 181255
509:              slti        zero, s2, 268
                  slli        a7, s9, 17
                  xor         zero, s1, s6
                  lui         a4, 928179
                  blt         t5, s11, 528f
                  sra         s4, a6, a6
                  and         a1, a1, t4
                  sltu        s5, s9, a1
                  bne         t3, a2, 537f
                  lui         zero, 104880
                  slli        s7, gp, 17
                  bgeu        a0, s10, 528f
                  lui         a5, 405068
                  nop
                  nop
                  slt         zero, s4, s8
                  andi        gp, s9, -320
                  slt         s0, t0, s7
                  and         gp, a1, a0
528:              bltu        t3, gp, 532f
                  sra         a5, t2, s8
                  andi        t2, a2, 1465
                  sub         t3, s10, s11
532:              xori        s9, t1, 201
                  auipc       ra, 1006549
                  slli        s6, a4, 19
                  srl         a4, a7, t2
                  srl         s10, gp, a2
537:              ori         a2, t3, -1019
                  slti        tp, zero, 825
                  sll         a2, s2, s1
                  and         a6, a6, a3
                  nop
                  and         sp, s1, s0
                  sll         a3, s7, s8
                  bge         a0, t1, 561f
                  andi        a1, gp, -456
                  sltu        t3, s7, s6
                  sltiu       s3, t4, 424
                  sltu        s6, t0, s3
                  bge         a5, t5, 556f
                  addi        s5, s6, -1381
                  nop
                  beq         s9, a5, 564f
                  or          a7, t2, s7
                  beq         s11, a1, 559f
                  or          t1, a4, s10
556:              slt         s5, a3, s1
                  slt         a6, s5, sp
                  blt         ra, tp, 575f
559:              srli        zero, t3, 2
                  sra         a0, t0, t3
561:              nop
                  nop
                  lui         a1, 165794
564:              andi        s3, t1, 1281
                  sltiu       s10, sp, -1730
                  bge         s5, tp, 576f
                  srl         s5, s3, s7
                  andi        a2, t4, 373
                  bge         t6, tp, 580f
                  slt         tp, s0, gp
                  bge         t4, t0, 581f
                  slti        t2, a3, -1923
                  and         s2, zero, s5
                  slt         s9, s3, s9
575:              xori        s2, a5, -1134
576:              ori         t3, a5, 220
                  ori         a2, s0, 285
                  auipc       s4, 699674
                  bge         s6, s11, 595f
580:              nop
581:              srl         sp, a6, a4
                  xor         zero, s2, t3
                  srl         t1, a2, t4
                  nop
                  beq         t3, s7, 605f
                  addi        s11, a5, -1956
                  andi        a0, s6, -37
                  blt         a2, s2, 605f
                  nop
                  bne         s10, s0, 594f
                  beq         s3, s4, 608f
                  srl         s9, s9, t0
                  ori         s3, t6, 1374
594:              or          sp, s7, s7
595:              andi        a5, tp, -115
                  sll         a7, t5, t0
                  sltu        a4, t3, sp
                  sll         s9, a7, zero
                  bgeu        t5, s0, 614f
                  blt         s4, s3, 617f
                  slti        s7, s7, 1182
                  sll         a7, s8, s2
                  bne         t4, ra, 613f
                  bge         s3, t5, 620f
605:              or          ra, a5, t4
                  bltu        tp, t1, 619f
                  srl         s2, t4, t5
608:              bne         a5, a4, 613f
                  sltu        tp, t5, s10
                  xori        t3, a1, -209
                  bgeu        s0, s6, 618f
                  or          a6, s0, a0
613:              srl         s0, t5, s9
614:              addi        zero, zero, 1438
                  sltu        a4, s5, t0
                  bge         t3, t5, 631f
617:              beq         t4, t0, 620f
618:              slti        a6, t2, 1908
619:              bgeu        s5, a3, 638f
620:              srai        s11, a0, 14
                  lui         zero, 622416
                  sll         a2, t5, sp
                  sltu        s9, s5, t1
                  xori        s10, t6, 880
                  bgeu        sp, s7, 627f
                  auipc       t4, 922452
627:              sltu        sp, s0, s10
                  bltu        gp, t1, 645f
                  add         s6, tp, a3
                  srli        s2, a0, 28
631:              srl         s4, a5, s4
                  slt         s3, s8, s8
                  srli        t4, t3, 1
                  bgeu        s11, t6, 645f
                  auipc       a7, 833994
                  sltu        s11, t4, ra
                  andi        a6, s4, -741
638:              srl         a2, a4, s5
                  bne         a0, gp, 641f
                  auipc       s0, 671266
641:              sra         s8, t1, s3
                  bge         a4, gp, 651f
                  bge         s4, s4, 660f
                  add         tp, t4, t6
645:              lui         ra, 917965
                  ori         t1, s11, -1992
                  sll         a2, a6, a2
                  bne         t1, t4, 663f
                  ori         t1, tp, -500
                  addi        s11, s9, 283
651:              addi        zero, zero, 23
                  bne         t1, s8, 663f
                  srl         a5, a1, t6
                  and         tp, a0, t0
                  xor         tp, a7, a6
                  bge         a6, a6, 668f
                  nop
                  slli        s9, s10, 0
                  andi        s10, zero, -1913
660:              srli        t1, t3, 17
                  bne         a4, a2, 671f
                  sll         s6, tp, gp
663:              bltu        s0, t4, 671f
                  bne         s10, tp, 684f
                  bgeu        s1, s0, 677f
                  slti        a4, s7, 332
                  slt         a0, s3, sp
668:              sll         zero, s7, t5
                  sll         a6, zero, a7
                  slli        s10, s4, 30
671:              andi        s8, a5, 347
                  sub         a4, s1, s0
                  srli        gp, s5, 1
                  bne         s4, ra, 684f
                  slt         a3, ra, t6
                  srai        s11, s6, 14
677:              ori         s1, t4, -516
                  or          s1, a1, t2
                  xor         s2, a5, a5
                  sll         a4, s7, s10
                  bgeu        a4, s2, 694f
                  add         ra, s9, t0
                  bge         s11, t0, 685f
684:              srai        s10, zero, 31
685:              auipc       s8, 796676
                  sra         a0, zero, t3
                  bne         t5, t4, 702f
                  xor         s7, tp, a0
                  add         s0, t6, a7
                  nop
                  ori         s5, t1, 33
                  bgeu        a7, a7, 695f
                  sra         s3, s8, s10
694:              bltu        tp, a2, 706f
695:              sub         a3, s5, t1
                  lui         s11, 498912
                  sll         a4, s11, s7
                  nop
                  bltu        t1, s0, 709f
                  nop
                  sra         a1, s4, tp
702:              bge         t3, a2, 706f
                  sltu        t1, s5, a5
                  addi        a7, a7, -1750
                  sra         s7, s8, t2
706:              srl         a1, a1, s9
                  lui         a1, 160179
                  bgeu        a4, ra, 723f
709:              blt         a0, a7, 711f
                  slt         a1, t3, s1
711:              lui         a5, 939830
                  bge         s9, gp, 729f
                  bge         t4, s1, 725f
                  nop
                  xor         a3, s5, gp
                  auipc       a4, 459967
                  srli        a3, a0, 22
                  srai        tp, s4, 12
                  andi        t4, s0, 1437
                  srai        zero, t5, 19
                  srai        zero, a1, 14
                  nop
723:              or          a3, t0, a2
                  bgeu        a1, t0, 735f
725:              sll         s4, t4, s9
                  slli        s8, s7, 14
                  sltu        gp, s9, a5
                  bgeu        sp, tp, 735f
729:              bge         a3, s9, 740f
                  bge         a7, s1, 732f
                  or          s5, t5, t6
732:              sra         a0, a5, s7
                  add         s6, gp, s2
                  ori         t4, t6, -912
735:              andi        s9, s0, -1391
                  sra         t1, a6, a7
                  srli        s11, s11, 25
                  bge         a7, s5, 755f
                  sltu        a5, s9, t0
740:              andi        s6, t1, 1558
                  lui         t3, 701810
                  srli        t2, sp, 4
                  or          s7, t4, zero
                  sltiu       ra, s3, -756
                  sltiu       sp, s7, -1659
                  bgeu        a0, t5, 751f
                  bge         a0, s4, 756f
                  bne         a5, s3, 750f
                  add         zero, a1, a3
750:              addi        s5, a5, 1369
751:              nop
                  xor         t2, zero, ra
                  xor         a0, t2, a1
                  beq         s5, ra, 762f
755:              bgeu        s1, t0, 768f
756:              sltu        s9, t6, s8
                  sll         zero, s2, s3
                  srai        gp, a6, 21
                  andi        s9, a3, -907
                  and         zero, s3, s5
                  bne         gp, s2, 771f
762:              srai        a1, t2, 7
                  ori         s1, t3, 217
                  slti        a3, s2, -369
                  srai        s5, s7, 26
                  lui         a0, 132463
                  srli        s4, s8, 2
768:              slti        a2, s3, -121
                  bgeu        a7, a3, 789f
                  add         s9, s6, s4
771:              or          sp, s3, a5
                  or          s11, s6, a4
                  blt         s2, a1, 790f
                  blt         s7, ra, 790f
                  srli        s1, sp, 15
                  auipc       t4, 46513
                  beq         a1, t0, 796f
                  xori        t1, a5, 1533
                  auipc       a0, 304068
                  blt         t5, s11, 790f
                  nop
                  srli        zero, s2, 5
                  or          a6, s8, a5
                  beq         s7, t0, 799f
                  or          a5, a2, a5
                  sll         a7, s1, s6
                  xori        s7, zero, 433
                  add         sp, a2, gp
789:              and         zero, s3, s1
790:              bltu        t2, s3, 807f
                  slt         a6, a7, s3
                  add         t3, s0, t2
                  slti        s10, s2, -1852
                  bgeu        a1, s1, 814f
                  lui         t2, 273342
796:              slli        s5, t3, 29
                  sra         s4, t2, a4
                  lui         zero, 584798
799:              ori         a0, s1, -334
                  sltu        s3, tp, a0
                  sub         s4, tp, t6
                  xor         zero, a3, ra
                  andi        t1, s8, -505
                  srli        zero, a7, 20
                  sra         ra, s2, s4
                  xor         a3, t5, t4
807:              sltiu       a1, sp, 884
                  blt         s8, gp, 821f
                  andi        a3, s4, -1737
                  nop
                  addi        zero, sp, -1361
                  andi        zero, s1, -858
                  sltu        s3, s10, s10
814:              auipc       a0, 307791
                  sub         s9, s5, s4
                  bne         t5, a7, 833f
                  auipc       s5, 968387
                  sltu        a1, a2, t5
                  ori         s6, ra, -1769
                  sll         s5, a6, sp
821:              xor         a2, t2, s2
                  lui         s10, 370958
                  srli        s2, t5, 27
                  sra         a1, s6, a6
                  or          s4, a4, tp
                  andi        s9, gp, 1218
                  bge         a4, gp, 834f
                  auipc       zero, 733555
                  sltu        s7, a0, zero
                  slti        a1, tp, -1090
                  or          s1, s1, zero
                  bltu        t6, a3, 842f
833:              sltu        zero, s8, s11
834:              srli        t1, zero, 24
                  slli        a5, a7, 24
                  bne         s0, sp, 845f
                  nop
                  ori         s6, a7, -793
                  bge         t0, tp, 849f
                  bltu        ra, ra, 852f
                  xori        a2, t1, -1776
842:              andi        s9, a4, 1112
                  slli        a1, a6, 0
                  beq         s0, t5, 859f
845:              slti        sp, a3, 1141
                  andi        s10, s5, 288
                  srli        s7, s9, 16
                  bne         t6, s11, 868f
849:              lui         s10, 506652
                  slli        s0, s2, 22
                  bge         s11, t4, 853f
852:              sub         zero, s4, s4
853:              slt         s6, t3, a2
                  bgeu        s4, t6, 856f
                  ori         s4, t2, -985
856:              xor         zero, a1, a1
                  bgeu        t2, s9, 865f
                  blt         ra, sp, 869f
859:              sra         ra, a6, s4
                  beq         s1, zero, 875f
                  bltu        t2, a2, 877f
                  srai        s11, t0, 14
                  slti        s5, t6, -1557
                  nop
865:              sltiu       tp, zero, -1577
                  slti        s9, a0, 835
                  srli        s10, a6, 18
868:              blt         a6, s5, 878f
869:              and         zero, a7, a7
                  sub         s5, a4, a6
                  addi        s5, a7, -682
                  xori        zero, ra, -1070
                  beq         a0, a0, 890f
                  xor         a0, s11, a0
875:              xor         a0, s6, a0
                  lui         s0, 645010
877:              bgeu        a4, s1, 890f
878:              nop
                  srl         zero, a1, t4
                  slli        s0, zero, 21
                  beq         a3, t1, 894f
                  beq         a0, a4, 899f
                  xori        ra, s7, -1736
                  blt         s6, sp, 899f
                  srli        zero, t2, 20
                  xori        t1, t1, -9
                  sltu        s1, s9, a7
                  ori         s10, a7, 1373
                  bgeu        a4, a5, 894f
890:              auipc       a1, 618374
                  sra         tp, t3, s7
                  beq         zero, gp, 909f
                  xori        s4, zero, 1159
894:              ori         a2, a3, -1409
                  slt         gp, t4, t4
                  and         t1, s4, t2
                  srl         s1, t5, s3
                  beq         a7, t6, 909f
899:              auipc       s0, 211559
                  beq         s2, a0, 903f
                  lui         zero, 334329
                  nop
903:              or          zero, s9, s8
                  auipc       a3, 761764
                  add         s9, s4, a0
                  auipc       s10, 491653
                  srli        a3, s2, 28
                  bge         gp, a1, 927f
909:              beq         s4, s5, 929f
                  blt         s1, a2, 927f
                  bgeu        s11, s9, 923f
                  srai        s5, sp, 7
                  xor         zero, t5, a4
                  xori        zero, s6, -749
                  lui         a4, 43564
                  srl         gp, t5, s10
                  or          s3, s9, a7
                  auipc       a1, 404310
                  and         s6, s9, s6
                  beq         a7, s10, 922f
                  addi        t4, t4, -1566
922:              sll         sp, sp, t0
923:              bltu        s9, a1, 927f
                  addi        t2, tp, -1145
                  bgeu        s1, s8, 942f
                  addi        s9, s7, -974
927:              sltu        ra, s7, s8
                  sra         s5, a2, s5
929:              bltu        a4, t2, 941f
                  add         s11, a4, s7
                  srai        a0, gp, 0
                  slti        s9, a0, 621
                  andi        s3, a5, 197
                  slti        zero, a1, 975
                  bge         ra, s10, 952f
                  blt         a4, s11, 947f
                  add         s2, a5, s3
                  sra         tp, a4, s8
                  srai        a0, a0, 13
                  srli        s4, a2, 17
941:              blt         ra, s4, 951f
942:              add         a7, gp, t1
                  sub         s0, s3, s8
                  or          s4, s7, s10
                  sll         t3, a2, s7
                  srai        s0, a7, 24
947:              slti        t4, gp, 673
                  slti        s4, s7, -746
                  sub         ra, t4, s2
                  lui         s0, 1032336
951:              xor         tp, t2, s5
952:              sltiu       s6, zero, 1373
                  bltu        zero, sp, 961f
                  srl         t4, a1, ra
                  ori         ra, s11, -16
                  nop
                  xori        s3, a3, -1041
                  nop
                  auipc       a4, 946953
                  add         t4, a7, t2
961:              bltu        ra, s8, 964f
                  lui         ra, 972107
                  sra         s6, s4, a7
964:              sltiu       s11, gp, 91
                  ori         a2, s2, 1648
                  bltu        a0, s8, 976f
                  and         a6, tp, t0
                  bne         a5, t2, 983f
                  bgeu        a5, sp, 979f
                  ori         tp, zero, -1710
                  bltu        tp, a3, 980f
                  bgeu        a4, zero, 989f
                  lui         s0, 673264
                  slli        s5, a3, 30
                  srli        s7, sp, 14
976:              xor         s0, ra, a1
                  bge         s6, s7, 979f
                  sra         s0, s6, t6
979:              sra         t2, s7, s9
980:              sltiu       s1, s8, -506
                  sll         s4, a7, t2
                  and         s0, t2, a5
983:              beq         a6, s0, 999f
                  sltu        s0, t3, ra
                  sltu        zero, t5, zero
                  slt         sp, a2, tp
                  srl         a4, s11, s10
                  slli        s9, a7, 7
989:              sra         t3, t2, s0
                  add         s3, s2, s1
                  sub         t2, s3, s8
                  bne         s2, zero, 1007f
                  bne         s9, a0, 1010f
                  sltiu       t4, t5, -1326
                  slti        sp, sp, -334
                  srli        s9, sp, 26
                  sll         a6, s11, a7
                  bne         s2, s11, 1005f
999:              sltiu       zero, t4, 1619
                  srai        a5, a0, 23
                  add         s3, a4, s1
                  bge         a2, s3, 1006f
                  slli        t2, gp, 20
                  sub         s8, s5, gp
1005:             srli        a7, s9, 6
1006:             bltu        a4, s9, 1019f
1007:             auipc       s8, 800552
                  blt         s1, a0, 1021f
                  sll         a1, gp, t5
1010:             srli        a3, sp, 9
                  nop
                  srli        t3, a0, 2
                  addi        s11, t5, -1393
                  nop
                  bltu        a7, t5, 1020f
                  bgeu        s11, tp, 1018f
                  addi        zero, a2, 980
1018:             sub         s2, a0, tp
1019:             sll         s7, a4, a4
1020:             andi        a6, a2, 1277
1021:             auipc       s1, 528585
                  bltu        a6, gp, 1034f
                  slli        s1, t4, 26
                  slt         sp, t1, s7
                  bge         a3, a2, 1042f
                  lui         a6, 241759
                  or          gp, s3, t2
                  xor         zero, s6, s8
                  nop
                  slt         t3, t1, s10
                  srl         a7, zero, a0
                  ori         a7, t3, -415
                  srai        a2, s8, 6
1034:             lui         zero, 459836
                  slti        t4, s7, 1789
                  slt         s9, a1, zero
                  auipc       t3, 115937
                  bltu        t0, a4, 1049f
                  and         a2, sp, a5
                  lui         t3, 596664
                  srli        gp, t1, 3
1042:             lui         s7, 401305
                  xor         s9, s0, s3
                  addi        gp, t2, 1518
                  add         s1, s1, s9
                  slli        zero, t0, 20
                  srl         a7, gp, a3
                  sra         a6, s8, s11
1049:             sra         s9, t4, a2
                  nop
                  auipc       s0, 102094
                  add         t2, t1, s10
                  slli        s9, s11, 16
                  bne         sp, a3, 1073f
                  lui         s7, 10996
                  blt         t0, s2, 1076f
                  xori        s5, s0, 1653
                  andi        s9, s6, 1512
                  slti        a1, t6, 1768
                  sll         zero, t1, a1
                  or          zero, s10, s10
                  addi        zero, t5, 819
                  or          zero, t3, s7
                  slt         s5, a6, s10
                  blt         gp, s11, 1085f
                  nop
                  xor         s5, t3, ra
                  sll         ra, zero, gp
                  bne         a6, t1, 1071f
                  add         a1, s10, t2
1071:             sltiu       s2, a3, 997
                  and         a5, s7, a4
1073:             bne         a2, a2, 1088f
                  sub         s1, ra, t4
                  srl         tp, a7, s0
1076:             xori        t4, s11, -926
                  slli        s10, zero, 19
                  slti        a1, a6, 410
                  sra         s1, s9, a0
                  sltiu       a3, sp, 1912
                  sra         a3, s5, s1
                  srl         t4, a0, t2
                  sltu        zero, s2, a1
                  srli        a2, s1, 0
1085:             srl         s8, a2, s4
                  bne         s4, s8, 1103f
                  lui         s6, 190244
1088:             sltu        t2, s0, s5
                  lui         ra, 241928
                  sltiu       s5, s3, -1500
                  beq         tp, zero, 1106f
                  auipc       a3, 606074
                  bltu        s8, s0, 1113f
                  sll         s3, s4, t2
                  xor         a4, a2, tp
                  bgeu        a0, ra, 1107f
                  sra         a1, zero, s1
                  slli        s0, t2, 22
                  bgeu        s9, s1, 1114f
                  sltu        s5, s1, s3
                  beq         a0, a7, 1103f
                  srl         sp, a1, t4
1103:             srai        s11, s10, 19
                  srli        a7, t4, 22
                  auipc       s10, 44849
1106:             bltu        t0, s6, 1126f
1107:             sub         s5, s2, a3
                  or          tp, tp, t2
                  bge         a6, t0, 1111f
                  bltu        s5, s3, 1114f
1111:             srli        s4, a1, 24
                  sub         a0, s0, a0
1113:             slti        s0, sp, -682
1114:             sltu        t3, a5, s11
                  bge         t3, a5, 1128f
                  blt         s6, sp, 1132f
                  slt         t3, sp, a2
                  bge         s5, a1, 1125f
                  slt         s5, a5, s4
                  auipc       s3, 159615
                  or          s0, t0, s2
                  sra         s0, gp, t0
                  slt         t1, a3, sp
                  xor         a7, t3, a1
1125:             srl         s9, t1, t2
1126:             bgeu        a6, t4, 1143f
                  srai        zero, t5, 4
1128:             slt         s7, s5, tp
                  or          a5, t0, t4
                  addi        zero, s0, -62
                  and         s2, t0, s9
1132:             sltiu       s11, s10, 1258
                  srl         s10, sp, s2
                  sltu        zero, a0, t5
                  bge         a5, s7, 1144f
                  beq         a2, s8, 1146f
                  slti        s7, t5, 457
                  bge         a2, a6, 1149f
                  xor         s11, t5, s4
                  ori         a1, a2, 133
                  nop
                  bgeu        t6, a5, 1154f
1143:             ori         s11, s0, -1527
1144:             bne         s5, t5, 1152f
                  srai        s9, a0, 6
1146:             slli        s5, s2, 16
                  sltiu       s6, zero, 1519
                  beq         t1, ra, 1158f
1149:             ori         t2, s5, -148
                  bne         a0, s9, 1167f
                  blt         sp, s11, 1166f
1152:             sub         s7, s10, a2
                  srl         t4, s3, tp
1154:             sltu        zero, s1, ra
                  beq         s2, t1, 1172f
                  and         zero, zero, s11
                  beq         s3, t5, 1174f
1158:             auipc       a7, 53702
                  ori         zero, t2, -1838
                  lui         s2, 230938
                  add         s7, a4, s2
                  add         t2, s10, a4
                  srl         s3, s2, s0
                  nop
                  or          gp, s8, tp
1166:             sltiu       s2, t6, 1363
1167:             beq         s7, tp, 1184f
                  slti        gp, a5, 1751
                  srli        s6, t1, 8
                  lui         s5, 750975
                  ori         s10, t1, -1494
1172:             nop
                  sra         zero, a4, s4
1174:             add         tp, s10, s3
                  addi        zero, zero, 960
                  sub         s8, sp, sp
                  sltu        a3, ra, a2
                  auipc       s5, 718815
                  nop
                  bne         t5, a6, 1199f
                  nop
                  bge         s9, t3, 1194f
                  bltu        s3, s4, 1196f
1184:             sltiu       zero, a0, 1120
                  bltu        t0, ra, 1187f
                  xor         s9, s9, gp
1187:             blt         sp, s9, 1190f
                  sll         a5, gp, s11
                  add         gp, s7, s1
1190:             bltu        t1, t4, 1195f
                  sll         s10, t4, t4
                  andi        t2, s10, -771
                  blt         sp, t6, 1203f
1194:             sltiu       a4, a7, -1675
1195:             sub         a3, ra, a6
1196:             nop
                  nop
                  sltiu       t3, sp, -404
1199:             beq         a4, s3, 1214f
                  sltu        t1, a0, a3
                  add         s3, t0, t4
                  srl         t4, t0, s2
1203:             auipc       tp, 952071
                  beq         s7, tp, 1206f
                  beq         a4, t2, 1222f
1206:             blt         sp, t0, 1210f
                  sra         zero, zero, t4
                  auipc       zero, 848891
                  blt         ra, t3, 1224f
1210:             slti        t2, a6, 376
                  beq         tp, sp, 1230f
                  sltu        s2, a5, s4
                  sra         t1, a7, s5
1214:             srai        zero, t1, 22
                  bne         t0, s4, 1227f
                  ori         a0, a5, 1910
                  ori         t4, tp, -997
                  sra         s4, a7, a0
                  and         t1, a4, s5
                  lui         zero, 1008742
                  srli        s4, s9, 29
1222:             ori         zero, t0, 1562
                  nop
1224:             and         t3, a1, s6
                  srli        ra, s6, 6
                  slt         t2, s2, t6
1227:             sltiu       s10, t3, -1870
                  slti        t4, tp, 669
                  slt         zero, s6, sp
1230:             bne         a1, ra, 1247f
                  or          t1, a5, s2
                  auipc       s9, 123240
                  sll         t4, a5, a7
                  bne         t2, sp, 1254f
                  sra         s0, s4, a2
                  bgeu        s1, s5, 1246f
                  lui         s1, 930
                  and         s8, a3, s8
                  blt         t0, t3, 1259f
                  slti        ra, a5, 937
                  slti        s6, s2, 279
                  nop
                  slt         a4, s3, s10
                  andi        zero, t2, -1103
                  srl         ra, tp, a4
1246:             srl         s2, s0, s3
1247:             bgeu        s1, gp, 1264f
                  beq         s3, t1, 1259f
                  nop
                  srli        s11, zero, 9
                  sltiu       s5, zero, 1673
                  ori         a1, a0, 164
                  srl         a7, s11, t5
1254:             bge         t2, s6, 1271f
                  bgeu        s7, s1, 1265f
                  or          t2, a5, s2
                  srl         a7, a2, s10
                  add         s7, a3, t0
1259:             beq         t2, sp, 1272f
                  slti        tp, a1, -1490
                  slt         sp, ra, s4
                  srai        s6, t5, 23
                  bge         t3, s9, 1271f
1264:             sub         s3, s3, s0
1265:             slti        s3, a5, 1491
                  sltiu       a6, s11, -814
                  addi        s6, zero, 1498
                  li         a1, 0x696021b6 #start riscv_int_numeric_corner_stream_4
                  li         t4, 0x0
                  li         t3, 0x1
                  li         a0, 0x0
                  li         s8, 0x1
                  li         s9, 0x26b7b05e
                  li         s4, 0x0
                  li         a2, 0x0
                  li         s6, 0x0
                  li         a3, 0x6d0e4fc
                  lui         a1, 520591
                  nop
                  add         a3, s11, a6
                  addi        a0, ra, 817
                  addi        a1, t4, -1203
                  sub         zero, s4, s5
                  addi        t3, a0, -1070
                  nop
                  sub         s4, s11, a6
                  nop
                  addi        a5, t4, -1460
                  lui         s1, 724886
                  lui         t2, 89405
                  sub         a3, t6, a1
                  nop
                  nop
                  add         s6, s0, s1
                  add         s6, a0, t0
                  addi        s6, s1, -1171
                  lui         zero, 766271
                  lui         a3, 638117
                  lui         a1, 969962
                  add         s5, a2, a3
                  addi        a5, a6, -817 #end riscv_int_numeric_corner_stream_4
                  lui         gp, 692853
                  ori         a5, t1, 1154
                  bne         t6, a0, 1280f
1271:             srli        s8, a7, 5
1272:             slti        a4, a6, 1575
                  xori        zero, zero, -733
                  slli        s9, a3, 25
                  nop
                  srai        sp, s0, 3
                  addi        zero, s11, 1034
                  bgeu        ra, s6, 1294f
                  bne         tp, s9, 1284f
1280:             slti        gp, s4, 255
                  andi        s7, a1, 212
                  bgeu        sp, s6, 1295f
                  slt         s1, a3, s6
1284:             xori        t2, t0, 2011
                  slli        s9, s6, 5
                  sltu        t1, a2, zero
                  sltu        ra, a2, a6
                  blt         a2, s3, 1303f
                  blt         s2, a3, 1296f
                  xor         a4, a0, t6
                  addi        s10, t1, -1383
                  sub         s5, s5, a5
                  andi        s1, zero, -449
1294:             sll         a7, gp, a4
1295:             srai        a3, s3, 25
1296:             bgeu        a5, s9, 1308f
                  slt         a6, s3, sp
                  and         a2, t2, s7
                  srli        a0, a2, 3
                  or          s3, s3, a3
                  bltu        tp, t5, 1303f
                  ori         a4, ra, 1235
1303:             and         t3, a0, a5
                  srl         t2, s8, a0
                  slti        sp, ra, 897
                  andi        s1, a1, 885
                  sra         tp, t1, a6
1308:             srli        a4, s10, 21
                  andi        s0, a6, 751
                  srai        a5, s8, 6
                  srli        s10, a3, 30
                  nop
                  auipc       zero, 931043
                  nop
                  slti        s10, a7, 689
                  xor         a3, s6, t3
                  sub         zero, a1, s5
                  sra         s11, a7, sp
                  slti        zero, a5, -1745
                  addi        t4, t0, -1393
                  addi        s2, t5, -295
                  nop
                  xor         s6, a4, s7
                  add         sp, a6, gp
                  srai        t1, a0, 21
                  sll         gp, a0, a2
                  andi        s5, a1, 331
                  andi        t1, s4, 329
                  andi        s4, t6, -516
                  srli        s7, t4, 2
                  bltu        s9, gp, 1348f
                  and         s10, a5, t3
                  srl         a2, ra, t5
                  sltiu       sp, a4, 1382
                  addi        s5, a0, 1781
                  slti        ra, ra, 2006
                  srli        a4, a1, 2
                  and         gp, s9, t0
                  slli        gp, s0, 2
                  xori        t1, t4, 68
                  slti        a4, a6, 924
                  addi        sp, t2, 416
                  addi        zero, gp, 987
                  andi        zero, ra, 1529
                  andi        s10, t3, 745
                  slli        a0, s11, 25
                  or          s10, s11, a7
1348:             srl         s2, s9, s9
                  nop
                  xori        s1, t3, 1557
                  lui         a3, 523182
                  xor         s4, a7, s3
                  srai        a4, t3, 8
                  bne         s3, s10, 1363f
                  auipc       s3, 1041905
                  sra         s11, a0, gp
                  bge         a0, s5, 1368f
                  beq         a4, gp, 1360f
                  bgeu        s10, a7, 1362f
1360:             andi        sp, a2, -778
                  lui         t3, 682925
1362:             sltiu       s10, s10, 1647
1363:             slti        tp, zero, -1071
                  auipc       a7, 114129
                  and         zero, a7, a0
                  nop
                  sll         s3, gp, a7
1368:             slt         s7, tp, s7
                  ori         a6, ra, -349
                  xor         tp, s7, t0
                  bltu        t4, a1, 1375f
                  sra         s1, a4, t6
                  srli        s3, t6, 21
                  ori         a2, s9, 1729
1375:             xor         ra, s10, s6
                  bgeu        a1, a4, 1393f
                  or          a5, s0, s4
                  and         s5, tp, t4
                  sltu        s9, t5, s11
                  xor         tp, sp, a3
                  srai        s3, t4, 25
                  sub         a0, t6, s8
                  bgeu        a5, ra, 1402f
                  sll         a2, s11, t6
                  sltiu       s7, t5, -1881
                  srai        a0, s3, 22
                  beq         s10, a1, 1398f
                  sub         s2, a0, a1
                  andi        a0, t0, -1305
                  slli        s8, s6, 7
                  sub         s11, s9, t2
                  sra         s5, s7, sp
1393:             and         a3, s3, a7
                  sltiu       t1, s1, 1141
                  srl         a4, a3, s11
                  srai        tp, t3, 24
                  sra         a7, s0, a4
1398:             xori        s7, gp, -59
                  bne         t6, s5, 1416f
                  sub         s5, a4, a0
                  auipc       t3, 461638
1402:             ori         a7, s4, 989
                  sltu        a7, a7, sp
                  auipc       a5, 740369
                  sra         s9, t3, t3
                  sub         s11, t3, t4
                  addi        s9, s7, -1615
                  sub         ra, s3, s1
                  ori         tp, t6, -1498
                  srli        a0, ra, 25
                  or          a2, s1, a6
                  sll         gp, s9, tp
                  srai        a3, a1, 12
                  bgeu        s1, s5, 1426f
                  xori        t3, s7, 1746
1416:             blt         s6, s7, 1425f
                  sltu        tp, t3, s7
                  and         a5, a5, ra
                  or          s1, s11, s1
                  add         s0, t2, a3
                  andi        a0, s9, -1379
                  srl         sp, ra, a3
                  lui         s8, 873976
                  and         a0, tp, sp
1425:             srai        a5, t3, 20
1426:             blt         s0, ra, 1436f
                  srl         s2, s0, s2
                  sra         s6, a6, a1
                  srli        s4, t6, 3
                  nop
                  bge         s4, a7, 1448f
                  addi        sp, zero, 674
                  slti        zero, t2, 93
                  add         zero, s6, t2
                  andi        t3, s9, 1603
1436:             srai        s4, ra, 28
                  addi        zero, t5, -405
                  sub         s0, a0, a2
                  bge         t2, ra, 1454f
                  slt         gp, zero, t5
                  sll         a3, s10, s2
                  or          a4, s2, t2
                  sltu        zero, s3, a1
                  bge         gp, t5, 1446f
                  sll         s10, s10, t2
1446:             bltu        s8, s9, 1454f
                  sub         t4, t2, s3
1448:             ori         s10, a7, -333
                  bne         a1, s11, 1454f
                  srl         s6, s3, a3
                  xori        ra, t3, 1901
                  bge         a6, a1, 1455f
                  sub         a5, s6, tp
1454:             bge         t3, a4, 1464f
1455:             xori        t3, s10, -1443
                  bgeu        ra, t3, 1468f
                  slli        a2, s8, 2
                  srli        s0, t0, 4
                  sll         a0, t2, s5
                  sub         zero, s7, s5
                  sub         s10, zero, tp
                  slli        s1, a6, 24
                  sub         tp, t6, t2
1464:             and         s4, s5, a2
                  sra         s3, gp, s8
                  bne         s1, t4, 1468f
                  sra         sp, s1, a0
1468:             blt         t0, s6, 1475f
                  slli        s5, t1, 0
                  nop
                  bgeu        s11, s10, 1482f
                  bge         s6, t4, 1489f
                  xor         t2, s0, ra
                  ori         a6, s5, -413
1475:             beq         a1, t5, 1490f
                  sltu        ra, s9, a2
                  and         s4, s3, a0
                  addi        zero, s8, 878
                  slli        a1, gp, 4
                  nop
                  add         s9, s7, s2
1482:             sltu        gp, s11, t1
                  xor         a5, s1, s7
                  and         s5, a4, s6
                  xori        a1, ra, -1660
                  bge         s5, s5, 1501f
                  xor         s10, s10, t5
                  srli        a5, a1, 18
1489:             addi        a3, a3, -723
1490:             blt         s7, s10, 1500f
                  slt         s2, s8, s5
                  andi        a5, s7, 491
                  sub         a3, s6, a6
                  sltu        s4, a4, s10
                  xor         a0, s9, s5
                  andi        a7, a5, -132
                  bgeu        a7, gp, 1513f
                  bltu        zero, s2, 1518f
                  srl         s10, ra, s6
1500:             or          a1, s3, sp
1501:             sub         s7, sp, t6
                  lui         s2, 978515
                  bge         t6, t2, 1523f
                  srli        tp, s2, 10
                  bge         s7, tp, 1522f
                  auipc       t2, 45224
                  sll         a4, a3, a1
                  sll         t3, a7, a2
                  sltu        zero, a3, sp
                  addi        s6, t5, 400
                  xor         a6, tp, s5
                  blt         s4, s4, 1525f
1513:             addi        t2, s11, 2004
                  and         s1, sp, s11
                  addi        ra, t3, -1428
                  lui         a4, 133591
                  nop
1518:             sltu        gp, tp, s0
                  addi        a6, s2, 1191
                  slti        a3, a4, 169
                  and         ra, gp, s8
1522:             and         a2, s5, s4
1523:             slli        t3, s7, 24
                  slli        s5, sp, 28
1525:             sra         zero, t3, ra
                  sub         s0, tp, ra
                  and         ra, s11, t5
                  slt         zero, a4, a7
                  sub         a5, a1, s6
                  addi        s6, s5, 143
                  auipc       zero, 291588
                  slli        a3, sp, 12
                  beq         a2, t0, 1535f
                  nop
1535:             bltu        sp, a2, 1548f
                  slti        s0, a5, 809
                  xori        a4, a1, -1567
                  lui         s5, 336204
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_0
                  li         t3, 0x0
                  li         a7, 0x1
                  li         s11, 0x1
                  li         s10, 0x1
                  li         a0, 0x1
                  li         s1, 0x1
                  li         a4, 0x2d3a05cc
                  li         a1, 0x73857e0e
                  li         a3, 0x1
                  addi        a7, s9, -32
                  lui         t1, 547947
                  nop
                  nop
                  nop
                  add         t2, s7, s5
                  lui         t1, 585659
                  sub         s3, s3, s7
                  lui         a0, 255149
                  nop
                  nop
                  sub         a5, t5, a5
                  lui         zero, 485201
                  add         s4, ra, sp
                  sub         a1, sp, sp
                  nop
                  nop
                  sub         a6, s7, zero
                  sub         s0, s0, s3
                  addi        a2, s6, 717
                  addi        a6, t6, -1519
                  lui         a7, 263675
                  lui         a2, 325300
                  add         s11, s5, t2
                  nop #end riscv_int_numeric_corner_stream_0
                  srli        t2, s2, 26
                  srai        s1, a1, 30
                  slti        a1, t6, 178
                  bgeu        tp, zero, 1562f
                  xor         a3, a7, s5
                  bltu        t0, s10, 1561f
                  lui         a2, 642862
                  srli        a0, s5, 8
                  auipc       s10, 351468
1548:             beq         sp, a7, 1552f
                  slt         a5, sp, t2
                  bltu        s0, s8, 1567f
                  bne         t4, s10, 1556f
1552:             andi        zero, s7, -1943
                  bne         a7, s5, 1555f
                  xor         a3, t4, s8
1555:             and         ra, t1, t2
1556:             or          zero, a1, s7
                  andi        zero, a0, -2029
                  bge         s9, sp, 1573f
                  ori         zero, t2, 1351
                  andi        gp, s1, 368
1561:             xori        sp, a5, -1199
1562:             auipc       a1, 97455
                  ori         gp, s9, 595
                  srl         zero, t6, gp
                  beq         tp, s9, 1582f
                  beq         ra, s10, 1576f
1567:             srai        a1, s8, 19
                  sltiu       zero, s7, -769
                  bltu        a6, a5, 1581f
                  or          s11, sp, s4
                  srl         t2, s3, a0
                  bgeu        zero, a1, 1592f
1573:             sltu        t2, a3, s0
                  xori        gp, s8, -562
                  add         a4, t2, s4
1576:             nop
                  srl         s9, s3, zero
                  srl         t3, s8, s8
                  xori        s6, ra, 891
                  bltu        ra, a4, 1583f
1581:             srai        s8, s9, 16
                  li         a3, 0x0 #start riscv_int_numeric_corner_stream_6
                  li         t4, 0x0
                  li         a4, 0x7ecd7310
                  li         t3, 0x0
                  li         s11, 0x0
                  li         gp, 0x1
                  li         s9, 0x115feb4
                  li         a1, 0x0
                  li         s7, 0x1
                  li         s3, 0x1
                  lui         zero, 370651
                  nop
                  nop
                  sub         sp, s9, tp
                  add         s0, s6, t4
                  sub         t4, s3, s7
                  lui         a1, 241881
                  sub         s7, s3, s1
                  nop
                  sub         t3, s5, ra
                  nop
                  lui         ra, 452835
                  lui         s5, 5594
                  lui         s7, 124
                  sub         zero, t2, a7 #end riscv_int_numeric_corner_stream_6
1582:             bge         t3, sp, 1592f
1583:             xori        a0, t4, -1441
                  srl         t2, s8, a4
                  nop
                  bltu        sp, t0, 1597f
                  sltu        a7, t6, t3
                  bgeu        ra, s8, 1601f
                  xori        s5, s0, -1040
                  xori        a1, a2, 992
                  sra         t1, s11, a5
1592:             or          a7, a2, t4
                  slt         s1, a5, s11
                  srli        a0, s1, 17
                  auipc       s9, 515821
                  ori         gp, t5, -2018
1597:             sra         s10, a6, t2
                  sltiu       a0, gp, -966
                  sltiu       s7, s3, 185
                  ori         s2, s10, 192
1601:             srl         tp, a7, tp
                  nop
                  slli        gp, sp, 6
                  bne         s11, t2, 1623f
                  add         t3, s9, gp
                  bltu        a6, s4, 1621f
                  srai        s2, t4, 3
                  slti        gp, s0, 838
                  sll         s1, s4, t1
                  slti        t1, a6, -1996
                  slt         ra, s10, t1
                  slt         zero, sp, s6
                  or          s9, t3, t1
                  nop
                  nop
                  beq         s1, a6, 1623f
                  sub         a4, zero, gp
                  sub         a4, t2, a0
                  add         s4, t0, t2
                  sra         t1, a3, s10
1621:             add         a6, tp, s4
                  beq         t5, a3, 1624f
1623:             blt         s3, t4, 1638f
1624:             slli        s6, t2, 19
                  srai        zero, t4, 3
                  add         s5, s10, s9
                  bge         a1, s3, 1639f
                  srai        zero, a5, 6
                  bgeu        a1, a5, 1646f
                  srli        t3, t5, 6
                  add         s6, a1, t5
                  andi        s7, s8, 135
                  xor         a5, s2, zero
                  sll         a5, gp, s7
                  slti        s10, s1, -1967
                  bgeu        t0, gp, 1649f
                  auipc       s4, 513050
1638:             blt         gp, sp, 1654f
1639:             bge         a4, s4, 1641f
                  beq         s11, t6, 1657f
1641:             bge         t4, t0, 1650f
                  xor         a3, tp, t2
                  ori         ra, gp, 27
                  bge         a6, s6, 1654f
                  sub         a1, gp, ra
1646:             slt         s7, s10, t2
                  nop
                  and         t2, t6, s1
1649:             and         zero, sp, a6
1650:             xori        tp, t1, 706
                  andi        zero, gp, 1028
                  srai        s3, s10, 15
                  add         zero, s8, t0
1654:             addi        s1, s3, -302
                  sltu        a4, t5, a7
                  bltu        a7, s4, 1664f
1657:             bltu        t5, a6, 1668f
                  srli        t4, ra, 0
                  bne         s3, a1, 1670f
                  blt         t2, t0, 1669f
                  bge         a7, s8, 1676f
                  ori         a5, t1, -948
                  sltiu       s1, a5, 1340
                  li         t3, 0x0 #start riscv_int_numeric_corner_stream_9
                  li         s11, 0x6326cd59
                  li         a1, 0x2eed02
                  li         s3, 0x0
                  li         t2, 0x0
                  li         s10, 0x1
                  li         a5, 0x1
                  li         tp, 0x0
                  li         s2, 0x1
                  li         t4, 0x0
                  nop
                  nop
                  addi        s4, a6, -124
                  addi        zero, s0, -1214
                  sub         s4, t0, s8
                  lui         s7, 335450
                  add         s9, a0, a4
                  add         s9, s5, t6
                  lui         a2, 85392
                  sub         s0, a6, t3
                  nop
                  addi        t2, t6, 836
                  lui         s4, 858862
                  sub         s6, s10, t2
                  addi        a3, a0, -1958
                  sub         a6, a2, s7
                  nop
                  sub         a7, s2, s0
                  addi        s4, a3, -2025
                  lui         s0, 128320
                  nop
                  lui         a1, 564994
                  nop
                  nop
                  add         ra, tp, s2 #end riscv_int_numeric_corner_stream_9
1664:             auipc       gp, 760134
                  srl         t4, a2, tp
                  beq         t1, t0, 1669f
                  andi        s6, s11, 1367
1668:             and         t2, t2, a3
1669:             blt         s0, a1, 1671f
1670:             srli        a3, t4, 8
1671:             blt         a7, t4, 1683f
                  and         ra, a3, t6
                  bgeu        t1, gp, 1686f
                  sub         zero, t2, s4
                  srai        a5, ra, 6
1676:             slti        s1, ra, 487
                  sltiu       gp, t3, 780
                  slti        a2, t1, 1429
                  srli        ra, s10, 10
                  sra         s2, t3, a2
                  and         a6, a6, s11
                  bltu        tp, s2, 1699f
1683:             slt         s1, s6, t1
                  srai        zero, s1, 11
                  add         t4, a7, t1
1686:             add         ra, gp, t5
                  sub         t2, s6, a7
                  lui         zero, 941264
                  xori        zero, a4, -261
                  ori         t4, a3, -1640
                  bne         s10, s9, 1704f
                  bltu        s4, a2, 1707f
                  sll         s2, s2, s3
                  srai        a7, a4, 20
                  beq         t5, t6, 1707f
                  srai        s6, a7, 4
                  sltiu       a6, t1, 75
                  nop
1699:             sra         a0, gp, t4
                  xori        s6, a6, 494
                  bgeu        t0, s10, 1718f
                  beq         s10, t4, 1719f
                  ori         s1, sp, -1969
1704:             xori        a5, a0, 636
                  sll         s9, a6, t3
                  addi        a1, s10, -584
1707:             srai        s5, a6, 7
                  sra         a1, ra, t6
                  srl         a2, s8, s8
                  sltiu       s11, s11, 553
                  sll         a2, t6, t0
                  srli        t2, a0, 11
                  ori         a2, a3, -409
                  or          a7, t0, tp
                  slt         a7, s11, a4
                  add         a4, zero, s11
                  auipc       s0, 754292
1718:             beq         t1, a1, 1723f
1719:             bge         s7, t6, 1739f
                  sltu        zero, sp, s6
                  or          a3, a3, a4
                  lui         sp, 156813
1723:             slli        sp, t6, 4
                  srli        s5, s2, 26
                  addi        zero, gp, 1525
                  auipc       t2, 436290
                  bltu        s5, s2, 1737f
                  srl         t4, a6, s9
                  ori         a3, tp, 1717
                  sll         sp, t1, a4
                  slti        s6, a0, 545
                  bge         s7, a6, 1743f
                  sra         s7, s2, s1
                  nop
                  sltu        s1, s8, s1
                  sra         a6, ra, t6
1737:             srai        s7, s9, 26
                  sra         gp, t5, a4
1739:             srai        s1, a4, 19
                  nop
                  addi        a1, tp, 169
                  sltiu       a4, t4, -793
1743:             auipc       s7, 160770
                  blt         t5, t5, 1746f
                  nop
1746:             beq         s11, a5, 1765f
                  bne         t4, t6, 1764f
                  andi        a4, gp, -1886
                  beq         a6, s5, 1753f
                  xori        sp, t3, 1144
                  nop
                  bge         t1, a4, 1762f
1753:             bge         s11, s0, 1763f
                  xor         s6, a3, t6
                  slti        t4, t6, 1726
                  add         a7, a0, a2
                  auipc       ra, 207234
                  andi        tp, s0, 1268
                  srl         t3, s10, s0
                  slt         a4, s7, s11
                  srl         a3, s3, s5
1762:             sltu        s3, t5, a7
                  li         a5, 0x1 #start riscv_int_numeric_corner_stream_12
                  li         t4, 0x15e05f61
                  li         t3, 0x0
                  li         s11, 0x0
                  li         s9, 0x1
                  li         s2, 0x1
                  li         s8, 0x0
                  li         s1, 0x1f9a8dce
                  li         s3, 0x0
                  li         a1, 0x4dd990e3
                  addi        s6, t1, -833
                  sub         s1, t0, s4
                  lui         t2, 583673
                  addi        t3, t6, -1790
                  lui         t1, 430101
                  add         a5, t5, gp
                  addi        a2, s9, -1130
                  sub         t4, t1, t0
                  nop
                  sub         s2, a5, s1
                  nop
                  add         t1, ra, sp
                  add         ra, t1, s8
                  lui         zero, 281669
                  nop
                  sub         s10, s0, s5
                  sub         t1, t3, a7
                  sub         s6, a4, s0
                  nop
                  lui         s8, 306136
                  sub         s10, t0, t4 #end riscv_int_numeric_corner_stream_12
1763:             slli        a2, a1, 19
1764:             ori         s10, ra, -776
1765:             srl         a4, s2, sp
                  bne         ra, tp, 1773f
                  sltiu       a2, s11, 1392
                  ori         zero, a4, -12
                  beq         sp, t2, 1785f
                  nop
                  sub         s1, s1, t6
                  beq         a5, a7, 1789f
1773:             slti        a3, a4, 1140
                  srai        t1, s10, 16
                  lui         s6, 827966
                  bltu        s10, s11, 1796f
                  addi        t2, s7, -1531
                  sltiu       a6, a3, 25
                  slli        a6, t2, 8
                  ori         a2, t4, 1751
                  slli        t1, zero, 11
                  lui         t4, 776707
                  sub         s8, a2, gp
                  xor         s6, a2, s9
1785:             srl         s0, zero, s6
                  bne         s5, a0, 1794f
                  bge         a6, t2, 1802f
                  xor         s3, a6, t0
1789:             slti        t1, t1, -371
                  srai        a4, s0, 0
                  slli        t3, s1, 12
                  xor         a3, t5, zero
                  bne         s8, zero, 1795f
1794:             or          ra, s5, t5
1795:             blt         s0, a3, 1812f
1796:             sltu        s6, t0, s2
                  srli        t4, s7, 1
                  bltu        zero, tp, 1800f
                  srli        a1, a6, 12
1800:             bgeu        s9, s8, 1815f
                  bltu        zero, a2, 1809f
1802:             lui         t4, 295777
                  and         s6, a4, s1
                  addi        zero, t0, -1749
                  xori        zero, s10, -1592
                  ori         a4, s4, -753
                  auipc       zero, 89641
                  beq         a1, a6, 1819f
1809:             xori        a2, zero, 1645
                  and         s11, t6, sp
                  slt         s9, s2, t5
1812:             beq         s9, a2, 1819f
                  sltiu       zero, s7, 1028
                  blt         a7, s5, 1816f
1815:             xori        zero, a7, 816
1816:             or          s4, t5, t5
                  auipc       zero, 114451
                  auipc       a6, 22847
1819:             slli        s9, s9, 12
                  or          s10, s5, s3
                  slti        gp, gp, -502
                  bgeu        s2, s2, 1838f
                  slti        s9, s1, 360
                  addi        ra, s2, 198
                  addi        s0, gp, -1455
                  and         s8, gp, s1
                  addi        s0, tp, -1320
                  ori         a5, t1, -1406
                  sra         a3, a2, a5
                  auipc       s2, 803557
                  slt         s7, t5, s0
                  nop
                  addi        t3, t6, 25
                  andi        zero, s1, -1050
                  sltu        sp, s6, s1
                  sub         s4, s4, a2
                  sra         s2, t3, s10
1838:             beq         s10, t1, 1847f
                  lui         t3, 324274
                  srl         t1, t4, gp
                  ori         a6, a5, -36
                  xor         a3, t2, t3
                  sltiu       s11, s5, 630
                  beq         gp, t6, 1857f
                  sltu        a2, s4, t3
                  sub         a2, a4, s9
1847:             xor         t1, a4, a2
                  srl         a4, s0, t4
                  srai        s10, a1, 7
                  or          s1, a2, a2
                  xori        a1, s1, -1714
                  or          sp, s3, a6
                  sub         zero, a2, s5
                  add         s11, zero, a7
                  bgeu        t1, zero, 1868f
                  bgeu        s10, t6, 1868f
1857:             srai        zero, ra, 13
                  slli        s5, zero, 3
                  xor         ra, t1, gp
                  andi        s9, s2, 845
                  auipc       ra, 53865
                  slli        t3, t1, 15
                  bge         a1, t1, 1873f
                  lui         s6, 362610
                  andi        ra, a7, 442
                  nop
                  bgeu        t4, a4, 1884f
1868:             addi        sp, a7, -380
                  srai        s8, a7, 1
                  lui         s4, 43827
                  slti        t4, t2, 1995
                  addi        a2, a1, 1374
1873:             slli        gp, s7, 22
                  srl         t3, gp, t6
                  andi        s4, s1, 1205
                  slti        a1, s10, 1445
                  sra         zero, s1, s5
                  sll         s2, s10, t5
                  sll         gp, s5, s5
                  srl         zero, s7, s6
                  blt         s10, a2, 1883f
                  or          sp, a1, gp
1883:             srai        s0, t1, 20
1884:             or          s11, zero, zero
                  lui         tp, 851848
                  andi        s9, a5, 716
                  xor         s7, s6, s10
                  slti        gp, s2, -1878
                  xor         s6, a0, t1
                  addi        ra, t5, 5
                  beq         t6, s4, 1911f
                  bne         s9, a7, 1896f
                  ori         s1, a5, 1595
                  addi        s8, t2, -1128
                  andi        t4, s9, 1356
1896:             sll         a3, tp, s4
                  xori        a1, t0, -1082
                  or          zero, s4, a2
                  sra         a7, t3, s6
                  sll         s1, a6, a0
                  bne         t6, s0, 1916f
                  slt         a6, a5, a1
                  bne         t1, t1, 1923f
                  xor         s11, ra, a2
                  srli        s3, a4, 25
                  sub         s10, t3, t0
                  andi        s10, a0, -1532
                  bne         s1, s4, 1918f
                  bltu        tp, s7, 1926f
                  bge         sp, sp, 1925f
1911:             and         a3, s8, a2
                  sltu        t2, a5, sp
                  add         a0, s8, a7
                  bgeu        tp, a3, 1925f
                  addi        s11, s11, -1338
1916:             lui         zero, 529924
                  add         a7, t0, t3
1918:             addi        a0, a1, 1061
                  beq         s10, s3, 1936f
                  srai        a4, s9, 20
                  bltu        tp, t5, 1926f
                  sll         s11, t0, tp
1923:             or          s11, s10, a1
                  and         s7, a4, a6
1925:             add         a4, s7, t6
1926:             slli        zero, a0, 7
                  sltu        s10, a2, sp
                  or          t3, a0, s4
                  sltu        zero, s8, t3
                  ori         s2, s10, 1409
                  lui         t2, 1015676
                  slt         zero, tp, tp
                  sub         sp, s1, gp
                  srl         a3, s9, a5
                  bgeu        gp, s9, 1938f
1936:             and         s5, s1, t0
                  slli        ra, s4, 17
1938:             lui         s1, 600049
                  beq         ra, a1, 1951f
                  auipc       s6, 345862
                  srai        s9, a2, 8
                  xor         s10, a6, s0
                  srli        ra, zero, 28
                  slt         gp, ra, a0
                  bge         s3, s3, 1964f
                  nop
                  slt         a7, t1, s11
                  srli        s7, sp, 7
                  sra         ra, s2, s8
                  sltu        s2, tp, s10
1951:             xori        zero, t4, 876
                  sub         s11, zero, t1
                  slli        a1, sp, 1
                  srl         a5, t2, a5
                  add         s3, s8, t2
                  auipc       s2, 478182
                  sll         s2, t2, t6
                  bgeu        s5, t5, 1968f
                  xori        t2, s5, 251
                  bltu        s10, s3, 1977f
                  slt         a7, s7, a0
                  nop
                  sra         ra, a2, a6
1964:             ori         s3, a4, 1452
                  bltu        zero, zero, 1976f
                  sub         a5, s9, a7
                  bltu        t4, s10, 1969f
1968:             srai        a0, sp, 17
1969:             blt         t2, s7, 1985f
                  addi        s9, a0, -192
                  xor         a2, s5, t3
                  bge         tp, s8, 1974f
                  beq         s4, a5, 1982f
1974:             blt         t2, a4, 1984f
                  srl         zero, a1, a2
1976:             or          s3, s8, s3
1977:             srl         t1, t5, s8
                  sll         t4, s2, a6
                  and         zero, ra, t4
                  blt         s5, a6, 1982f
                  xor         s7, t5, s9
1982:             addi        s11, ra, 171
                  blt         a7, s10, 1998f
1984:             slli        s5, s4, 10
1985:             bne         t6, s4, 2002f
                  addi        ra, s11, -1940
                  slli        s5, s1, 7
                  sltu        a4, gp, s1
                  slt         s11, t4, s8
                  add         zero, s7, a6
                  sub         t3, t2, a1
                  auipc       tp, 47917
                  bge         s11, t1, 2006f
                  bltu        a4, s2, 2001f
                  srai        s5, t4, 14
                  ori         t1, t1, 1707
                  xor         a3, s10, ra
1998:             xori        t4, s0, -780
                  slli        s0, s1, 9
                  sra         s9, s5, s1
2001:             and         s7, a7, t4
2002:             bge         sp, a0, 2017f
                  or          sp, s10, s3
                  ori         s5, s1, -1198
                  bgeu        t4, s4, 2025f
2006:             srl         s7, a3, a6
                  andi        t3, a6, 12
                  slti        tp, ra, 1760
                  beq         sp, s8, 2020f
                  add         s9, s8, ra
                  xori        ra, a4, -1031
                  add         a0, s11, s1
                  xori        s5, s2, 598
                  xor         a7, gp, s9
                  sll         a5, s4, s8
                  bge         s1, t2, 2031f
2017:             bgeu        a2, tp, 2025f
                  andi        a7, a4, -479
                  beq         s1, a6, 2036f
2020:             auipc       zero, 815287
                  blt         gp, s0, 2034f
                  sltiu       ra, a0, -282
                  sll         s1, a3, a0
                  sll         t1, a2, s0
2025:             bge         s9, ra, 2030f
                  beq         s9, s1, 2043f
                  slti        t4, t3, 105
                  slli        s7, s7, 26
                  auipc       zero, 35366
2030:             bgeu        gp, t0, 2050f
2031:             nop
                  lui         zero, 583143
                  blt         s5, t2, 2045f
2034:             sra         a7, t4, a4
                  addi        s8, s2, -468
2036:             bgeu        s1, s10, 2053f
                  bne         ra, t3, 2047f
                  srli        s11, t5, 28
                  srl         a4, s11, tp
                  addi        gp, s3, 578
                  add         t1, sp, s5
                  and         s4, a2, a2
2043:             sll         s2, t4, s5
                  addi        s9, s3, -849
2045:             auipc       zero, 885547
                  bgeu        t2, s2, 2058f
2047:             slli        s2, a2, 11
                  sltiu       a5, s11, 251
                  sub         tp, s9, s0
2050:             sll         s7, s11, s1
                  sltu        s5, a1, a2
                  lui         t1, 915550
2053:             blt         ra, s7, 2072f
                  lui         t3, 623441
                  srl         s8, t6, s10
                  ori         a2, s6, 17
                  sltu        a4, a1, sp
2058:             slli        a7, s9, 29
                  beq         s8, tp, 2062f
                  srl         zero, ra, t5
                  bgeu        t3, t5, 2065f
2062:             andi        s9, t0, 1236
                  add         s5, a4, a4
                  blt         s9, gp, 2081f
2065:             bne         s6, a1, 2075f
                  lui         gp, 466565
                  slt         t3, t3, t2
                  xor         s3, s3, t3
                  srli        s1, tp, 19
                  xori        s7, t4, 1102
                  sub         zero, s2, s5
2072:             xor         s1, t3, s11
                  blt         tp, a3, 2093f
                  slt         a6, t0, s3
2075:             srai        s4, a2, 24
                  and         s11, s3, t4
                  and         a0, sp, s11
                  sltu        a6, t4, gp
                  slli        ra, s0, 7
                  srli        a7, t4, 13
2081:             sltu        gp, a2, s10
                  bgeu        t2, s7, 2084f
                  lui         s10, 42489
2084:             andi        t4, gp, 1489
                  sub         a6, a4, t3
                  sltu        zero, s3, t6
                  ori         sp, gp, 116
                  bltu        a0, ra, 2103f
                  sll         t3, sp, s2
                  and         t4, s7, s7
                  slt         s7, t0, s4
                  and         gp, a6, t5
2093:             or          a4, zero, a4
                  srl         zero, s7, ra
                  sra         t2, s10, a2
                  slti        s2, ra, 1677
                  auipc       zero, 412371
                  srli        s3, t5, 19
                  bne         t3, zero, 2119f
                  bltu        t0, s2, 2111f
                  auipc       s6, 600342
                  bge         sp, s0, 2109f
2103:             andi        gp, t2, 443
                  slt         s1, s1, t2
                  srli        ra, a1, 21
                  sll         s7, a1, t6
                  sltiu       zero, s1, -1144
                  xor         a4, s5, sp
2109:             slt         s5, zero, t1
                  sltiu       a3, ra, -1196
2111:             slli        t4, a2, 20
                  sra         t1, s10, a2
                  slli        a7, t2, 8
                  slli        a5, ra, 17
                  xor         a2, a2, t1
                  addi        s6, a3, 198
                  srl         t3, s11, a0
                  sltiu       s7, s5, -389
2119:             xori        a5, s10, -1938
                  beq         s2, s3, 2137f
                  bge         s0, t1, 2134f
                  auipc       a5, 830738
                  slt         zero, a7, a1
                  slli        a4, a3, 21
                  add         a7, s4, s11
                  sub         s9, s6, s0
                  and         s0, zero, gp
                  nop
                  srli        t4, t6, 0
                  srl         s11, s11, s10
                  srl         s3, s11, t0
                  sltiu       a3, t0, 417
                  sub         s5, s5, zero
2134:             srl         ra, t2, t6
                  xor         t3, gp, t5
                  slt         s9, a7, s4
2137:             srli        t4, s0, 29
                  srl         gp, a1, a4
                  and         s11, zero, s4
                  sltiu       tp, tp, -1586
                  blt         s11, a6, 2152f
                  xor         sp, a1, t1
                  bge         s1, t4, 2153f
                  auipc       s5, 59663
                  slt         a6, s6, t2
                  lui         s5, 1036640
                  xori        s8, s11, -1188
                  add         t2, a7, s6
                  addi        sp, s10, -4
                  srli        a6, sp, 15
                  xori        s5, a7, 634
2152:             slli        s11, t1, 12
2153:             bge         a3, t6, 2166f
                  sltu        t2, a4, a6
                  srli        gp, s3, 23
                  addi        s2, s2, -588
                  srli        zero, t4, 12
                  lui         a0, 769740
                  xor         zero, s8, t0
                  sltiu       tp, t2, 957
                  andi        zero, a7, -1310
                  lui         t1, 498251
                  beq         s2, s10, 2180f
                  xor         t4, s0, s2
                  sltu        zero, t0, s8
2166:             lui         ra, 494993
                  sltiu       a3, a6, 1912
                  addi        s7, zero, 645
                  slti        s3, s3, 211
                  bge         s5, zero, 2175f
                  lui         t3, 289927
                  bgeu        a4, a7, 2189f
                  nop
                  srli        s2, s2, 9
2175:             or          zero, a6, a4
                  srli        s6, a5, 17
                  bne         s11, t6, 2181f
                  and         zero, t3, a3
                  lui         s5, 293715
2180:             nop
2181:             beq         tp, sp, 2196f
                  srai        zero, a7, 28
                  sltiu       zero, s1, -1307
                  lui         zero, 716037
                  lui         s1, 838631
                  addi        s2, s7, -119
                  blt         sp, s3, 2196f
                  srai        gp, gp, 8
2189:             bgeu        t1, s3, 2199f
                  blt         tp, t4, 2209f
                  ori         tp, tp, 994
                  slti        s10, a7, 1144
                  sltu        t2, a4, a5
                  sub         a5, t2, s11
                  xori        s2, a1, -540
2196:             andi        a0, s3, 1866
                  slt         a7, a7, t2
                  sll         t4, s4, zero
2199:             bgeu        s6, t5, 2209f
                  slti        a1, tp, -1044
                  sra         s6, a2, s5
                  xor         s7, s9, s1
                  auipc       a7, 956942
                  sub         s3, t5, s3
                  sltiu       s6, a0, -828
                  addi        a3, s11, 250
                  slt         a5, tp, s7
                  add         s5, a6, a7
2209:             addi        s11, tp, -817
                  or          zero, t0, a1
                  beq         sp, gp, 2214f
                  srai        ra, a0, 5
                  and         s4, a5, a3
2214:             bgeu        s11, t1, 2216f
                  slti        s10, a4, -142
2216:             slt         zero, t6, s1
                  bgeu        s0, s7, 2219f
                  slti        t1, s1, -1760
2219:             lui         zero, 336145
                  bgeu        zero, a1, 2232f
                  nop
                  blt         t4, s1, 2230f
                  blt         a0, s7, 2240f
                  bne         s0, s4, 2240f
                  sltu        t2, sp, a1
                  xori        s7, a5, -1010
                  slti        t2, gp, 1555
                  xor         a6, s4, s3
                  bgeu        t1, s0, 2244f
2230:             srai        ra, t6, 10
                  xor         zero, a3, sp
2232:             addi        a6, t0, -359
                  sltiu       a2, a7, 1767
                  sltu        a4, ra, s3
                  and         a2, t5, t4
                  sll         s6, s4, t2
                  sltu        s4, s9, gp
                  sltu        tp, tp, zero
                  auipc       a6, 599688
2240:             blt         a3, s4, 2252f
                  auipc       s11, 409106
                  blt         a1, s0, 2259f
                  andi        s10, a2, 382
2244:             beq         gp, gp, 2255f
                  auipc       a2, 344507
                  bgeu        tp, a6, 2263f
                  ori         zero, a1, -74
                  bgeu        a0, s10, 2265f
                  srli        ra, s1, 0
                  xor         a4, s5, s9
                  addi        t1, gp, 1424
2252:             srai        zero, t5, 6
                  andi        t3, t4, -538
                  blt         s1, s7, 2256f
2255:             xori        s0, t3, -453
2256:             sra         s8, s1, a0
                  sltu        a4, a3, s0
                  and         t1, t4, s2
2259:             sra         s3, a6, sp
                  srl         t3, t2, tp
                  blt         zero, a5, 2263f
                  srli        tp, t6, 13
2263:             and         t4, sp, t1
                  andi        zero, t2, -1330
2265:             and         s3, t4, tp
                  bne         zero, gp, 2274f
                  srai        t4, s1, 26
                  and         gp, t0, t2
                  slt         s2, s5, t1
                  bgeu        t2, s1, 2280f
                  srai        s8, a5, 29
                  nop
                  bge         a4, gp, 2283f
2274:             ori         a5, s8, -1762
                  sltu        s3, s5, t3
                  bne         s7, s8, 2285f
                  addi        tp, s7, 1531
                  xor         s9, zero, s11
                  slli        a4, t6, 20
2280:             or          t1, zero, s11
                  sra         s11, ra, t2
                  blt         tp, sp, 2302f
2283:             and         s2, t5, a2
                  bge         s9, a6, 2287f
2285:             nop
                  sub         a1, tp, a2
2287:             srai        s1, zero, 28
                  addi        sp, a1, -1649
                  xor         t1, gp, s11
                  srai        a3, s7, 22
                  slt         t3, s7, s2
                  bne         s3, t1, 2299f
                  blt         s7, s3, 2310f
                  sltiu       a7, s7, 1760
                  sll         t1, s4, t6
                  bne         a2, t0, 2313f
                  xori        tp, s3, -1639
                  andi        tp, t1, 692
2299:             srl         t3, a6, s8
                  addi        zero, a1, 889
                  sra         s10, s10, zero
2302:             srli        s5, t0, 17
                  srli        t2, a3, 5
                  nop
                  bgeu        ra, t5, 2318f
                  slti        a6, a4, -1568
                  sltu        s7, s8, t5
                  ori         s4, s6, -88
                  bge         s4, s3, 2321f
2310:             auipc       zero, 1015319
                  bltu        s7, t3, 2326f
                  ori         t2, a0, -914
2313:             slt         a2, t3, a5
                  bgeu        s1, s5, 2329f
                  bne         s8, s10, 2330f
                  slt         gp, a2, t0
                  bltu        tp, a7, 2322f
2318:             srai        a6, t5, 17
                  slt         a5, s5, s7
                  blt         a4, a2, 2339f
2321:             sub         gp, s3, a5
2322:             sltu        t1, t5, t1
                  slt         tp, tp, t0
                  sub         s6, s10, s9
                  blt         t4, s3, 2327f
2326:             and         t3, a3, a4
2327:             xori        a1, t0, -1860
                  ori         a6, a7, 1144
2329:             bne         s1, a7, 2345f
2330:             xori        s2, s4, 1023
                  bgeu        t5, a5, 2348f
                  sltu        s3, a1, s7
                  ori         t3, t3, -1516
                  slli        tp, s11, 31
                  sltiu       s5, tp, 1708
                  sltu        s1, gp, a1
                  nop
                  sll         a2, s8, t2
2339:             slti        a1, tp, 2037
                  slli        a5, s11, 1
                  bge         a3, a2, 2345f
                  sll         s10, t2, a6
                  xor         zero, t4, a5
                  bge         s10, a0, 2357f
2345:             slti        a4, a4, 1325
                  slti        s9, t1, 233
                  sltu        a7, gp, a6
2348:             srl         t1, a6, s9
                  blt         s0, s5, 2359f
                  bltu        s6, t6, 2362f
                  sra         s7, a4, a6
                  srl         a7, t0, s7
                  xori        t3, s10, -2029
                  nop
                  addi        s3, t3, 566
                  and         zero, s6, a2
2357:             sltiu       s3, t0, -735
                  bltu        s7, t1, 2369f
2359:             slt         zero, a6, t4
                  bge         a0, a1, 2380f
                  srai        sp, s11, 13
2362:             auipc       a1, 380296
                  slt         zero, a6, t1
                  srl         t1, s2, s11
                  srai        s3, a6, 2
                  srli        t4, a2, 4
                  auipc       s2, 60190
                  auipc       a7, 777717
2369:             andi        s2, tp, -577
                  bltu        s3, t5, 2385f
                  bge         a0, s2, 2374f
                  sll         a4, zero, a5
                  or          t3, s3, s5
2374:             slt         s8, a0, ra
                  bne         a6, s7, 2392f
                  sra         zero, t6, s11
                  sra         t1, a4, a1
                  and         t1, a0, t4
                  bltu        s7, t2, 2387f
2380:             xori        a2, s4, -388
                  andi        a6, a0, 2003
                  sll         t1, a7, t1
                  sll         a4, s10, s1
                  addi        a1, a1, 1162
2385:             sub         zero, t3, s5
                  addi        zero, a6, 328
2387:             blt         a6, zero, 2402f
                  sltu        a4, t0, zero
                  beq         a4, s11, 2402f
                  or          a5, s9, t6
                  sltiu       s3, a1, -1216
2392:             sub         sp, s4, s9
                  xori        s9, a5, -118
                  or          s3, a4, tp
                  srli        s11, a6, 4
                  srai        tp, t0, 8
                  sltiu       a2, a0, 1464
                  bgeu        tp, a4, 2417f
                  addi        a2, t4, 923
                  sll         s7, s5, a1
                  ori         a1, a5, -1201
2402:             add         s1, s1, gp
                  beq         gp, s11, 2415f
                  sltu        s2, s2, t6
                  xor         s5, s5, s9
                  xor         gp, zero, a4
                  srai        s6, a7, 7
                  auipc       s7, 488745
                  or          zero, t4, t0
                  beq         t3, t0, 2427f
                  slli        a6, s0, 20
                  ori         a5, t4, 23
                  sub         zero, a3, t5
                  bge         a2, a0, 2418f
2415:             add         a6, a4, s3
                  sub         s0, s11, s8
2417:             sra         ra, a4, ra
2418:             add         s9, ra, a0
                  sltu        ra, tp, t0
                  slti        ra, s11, 261
                  and         t2, t4, s0
                  lui         s10, 358318
                  add         s9, s4, s2
                  xor         a3, a2, a4
                  and         a1, tp, t0
                  sltiu       s0, sp, -976
2427:             andi        s9, s9, -239
                  bne         a0, s5, 2445f
                  slli        s6, a4, 23
                  ori         s6, tp, -531
                  xori        zero, t2, -916
                  sltiu       s0, a4, 927
                  lui         zero, 809253
                  sltu        s6, s2, s5
                  lui         s6, 158790
                  blt         ra, t6, 2447f
                  bne         t2, a1, 2439f
                  xori        t3, t4, -946
2439:             blt         s10, a0, 2450f
                  slti        ra, zero, 1250
                  sltu        gp, s5, s9
                  andi        gp, ra, 638
                  or          t2, s10, s0
                  ori         a5, s1, -659
2445:             auipc       a2, 870341
                  slt         t2, s4, t0
2447:             srai        a6, s4, 31
                  bge         s1, s9, 2460f
                  xor         s11, t6, s9
2450:             sub         s6, s7, sp
                  sll         s6, s3, t5
                  auipc       s11, 859417
                  bne         a5, t0, 2470f
                  slti        tp, s10, -1376
                  sub         tp, s2, tp
                  lui         t2, 679718
                  bge         s10, sp, 2459f
                  blt         t4, s10, 2463f
2459:             blt         a2, t0, 2479f
2460:             sltu        s1, a0, a2
                  srli        s11, t3, 29
                  srai        s3, t2, 2
2463:             slti        s5, gp, -2002
                  xor         s6, t1, s0
                  bgeu        s10, a0, 2480f
                  sltu        s5, s11, a2
                  sra         s1, a7, a3
                  xori        ra, s7, -905
                  sub         a6, tp, t3
2470:             slli        a6, s11, 17
                  bge         a0, s11, 2491f
                  srl         a3, s5, ra
                  or          tp, t2, s2
                  ori         s5, a3, 1898
                  addi        s9, sp, 307
                  nop
                  bne         s1, a7, 2487f
                  add         zero, a7, sp
2479:             blt         zero, s11, 2486f
2480:             srli        s4, ra, 22
                  sltiu       a0, a7, -298
                  slti        zero, s2, 2039
                  bge         a3, tp, 2492f
                  bge         zero, s9, 2494f
                  addi        zero, s7, -1555
2486:             srai        s4, s7, 15
2487:             sltu        s4, zero, s8
                  ori         t4, s8, 386
                  srl         a6, t1, s1
                  bgeu        a4, a1, 2500f
2491:             sltu        s8, s2, s10
2492:             xori        a4, s10, 114
                  auipc       a4, 844004
2494:             srli        s10, a7, 14
                  sltu        t3, s1, t4
                  beq         a2, t3, 2513f
                  srl         a5, a7, t0
                  bgeu        s4, sp, 2514f
                  and         ra, a7, a5
2500:             or          tp, sp, a3
                  srai        a7, s3, 9
                  andi        a1, s11, 34
                  sra         ra, gp, a6
                  andi        a0, s10, 821
                  sltiu       s1, sp, 1444
                  auipc       s0, 953398
                  bne         s0, t3, 2520f
                  slt         sp, s4, s1
                  slli        t4, s9, 7
                  bltu        a4, s7, 2512f
                  beq         a7, a1, 2526f
2512:             lui         s8, 699160
2513:             sll         s6, s11, gp
2514:             lui         s6, 588270
                  srl         a6, t0, s4
                  xor         t4, t4, t3
                  slti        s1, t4, 1705
                  ori         s4, t1, 1940
                  addi        s11, a3, 1792
2520:             beq         s4, t1, 2537f
                  nop
                  sra         s11, sp, a5
                  slt         s0, s6, ra
                  slli        s4, a4, 30
                  sub         a1, s0, a4
2526:             slt         zero, s8, a3
                  beq         t1, gp, 2537f
                  addi        ra, a3, 475
                  slli        ra, tp, 15
                  srai        sp, gp, 9
                  bltu        sp, a3, 2540f
                  lui         s4, 769608
                  slti        sp, a2, -348
                  sltiu       a6, a3, -308
                  add         s6, a6, s6
                  sra         gp, tp, s1
2537:             srai        t4, gp, 8
                  add         gp, a4, a2
                  sltu        zero, a0, gp
2540:             bgeu        s2, a4, 2542f
                  slli        s9, t3, 12
2542:             sra         sp, s9, t3
                  bne         s10, zero, 2560f
                  sra         t2, s11, s10
                  sub         t3, t5, s7
                  slt         zero, zero, tp
                  srai        s2, s11, 4
                  bge         ra, t4, 2555f
                  srai        s9, s0, 17
                  sll         sp, a6, sp
                  blt         s3, t5, 2568f
                  andi        zero, s6, -989
                  lui         s5, 124469
                  srl         a6, s8, t3
2555:             lui         a1, 764523
                  sll         s2, s4, a7
                  srli        a5, s6, 12
                  andi        zero, s6, 912
                  or          t3, s9, a1
2560:             sll         s3, s1, t3
                  beq         s11, ra, 2563f
                  sra         s7, s8, s8
2563:             srai        a4, zero, 27
                  add         s11, a6, s2
                  ori         s1, t4, -1375
                  ori         zero, s3, -1212
                  sub         a0, s6, a3
2568:             slti        zero, s10, 242
                  blt         s7, a5, 2582f
                  bltu        s0, a5, 2575f
                  bltu        s5, s11, 2582f
                  xori        a4, ra, -1498
                  auipc       a1, 228101
                  sltiu       s9, s3, -932
2575:             sub         zero, t1, a5
                  slli        t4, s10, 11
                  sll         zero, s0, t5
                  lui         s2, 325311
                  add         zero, t5, s5
                  nop
                  lui         a3, 452193
2582:             xor         t2, a5, sp
                  ori         a6, s10, -918
                  and         zero, a2, s0
                  bgeu        t6, tp, 2602f
                  sra         s10, a2, t3
                  auipc       sp, 715859
                  bge         t0, a0, 2600f
                  bgeu        t5, s7, 2599f
                  sub         zero, t6, s5
                  nop
                  slt         s3, s4, s3
                  srli        a4, a4, 23
                  blt         s1, a7, 2609f
                  or          s4, a7, a3
                  slli        s3, t5, 24
                  ori         t4, a3, 1232
                  bge         a5, s10, 2609f
2599:             sra         zero, t3, a2
2600:             srai        gp, t5, 22
                  slti        s8, ra, 1381
2602:             nop
                  or          a2, t3, ra
                  sltu        s6, a6, t6
                  sltu        a0, ra, t2
                  sltiu       ra, ra, -889
                  xori        a4, s3, 276
                  sltu        tp, a4, s7
2609:             xor         a3, a0, s8
                  sub         s9, s11, s6
                  xori        t3, s0, 1469
                  beq         s4, t2, 2614f
                  slti        s4, s2, -1936
2614:             xori        a0, a3, 1312
                  sltu        s3, s11, a4
                  sltiu       s10, a0, -1363
                  lui         s7, 317418
                  lui         s9, 280332
                  sltiu       ra, a0, -1700
                  andi        s10, a0, 354
                  slli        s0, a4, 4
                  sra         s11, s6, t3
                  bge         a7, zero, 2636f
                  add         zero, ra, s6
                  auipc       s4, 742159
                  blt         a4, s3, 2630f
                  nop
                  sra         t4, a3, zero
                  sub         a7, a7, s0
2630:             nop
                  andi        s1, a3, 900
                  bltu        t4, a2, 2642f
                  srl         zero, a3, t0
                  auipc       s1, 281917
                  bgeu        t6, tp, 2652f
2636:             srai        a2, a2, 1
                  srl         a2, t5, s6
                  srli        tp, a6, 9
                  and         a2, tp, s8
                  auipc       s6, 734182
                  slti        tp, s2, -1679
2642:             beq         tp, tp, 2645f
                  sll         ra, s6, t0
                  xori        t2, zero, 1188
2645:             bltu        s11, s7, 2664f
                  auipc       s8, 67986
                  and         s6, a2, t2
                  srl         zero, t3, t6
                  add         s7, t0, t5
                  bltu        ra, a5, 2665f
                  srai        a4, t0, 5
2652:             slli        a5, t0, 23
                  ori         zero, s2, -1067
                  sll         t4, ra, a7
                  bltu        a2, s10, 2671f
                  ori         t3, t0, 56
                  nop
                  beq         t3, s6, 2670f
                  sll         a1, t4, ra
                  blt         t6, a2, 2680f
                  andi        s11, s5, 509
                  and         sp, a1, t2
                  blt         a1, ra, 2683f
2664:             xor         tp, tp, s7
2665:             slli        sp, s4, 2
                  or          gp, a4, a5
                  nop
                  sub         a4, s1, s5
                  srl         s6, s7, a5
2670:             sltu        s5, t3, a0
2671:             nop
                  sra         s11, zero, a7
                  lui         zero, 865050
                  andi        zero, s6, -1581
                  slti        a3, s11, 596
                  add         s2, a0, s9
                  or          s7, s7, s10
                  xori        s4, t3, -394
                  sub         zero, t3, zero
2680:             xori        s8, zero, -171
                  bne         s0, ra, 2689f
                  auipc       s9, 1043568
2683:             bltu        gp, a1, 2685f
                  xori        s6, t4, -548
2685:             xor         s7, a7, t2
                  bgeu        a2, t1, 2703f
                  sltu        t3, a0, s3
                  slli        t4, s3, 27
2689:             sltu        s0, s9, s2
                  andi        sp, t3, 339
                  slt         s4, t0, s3
                  nop
                  sltu        a4, a6, tp
                  slli        s10, s5, 19
                  sltiu       t3, a0, 643
                  nop
                  nop
                  auipc       s8, 132794
                  slt         zero, t0, s11
                  or          s8, zero, s1
                  ori         zero, a3, -1863
                  bne         s9, s10, 2719f
2703:             blt         s0, a0, 2716f
                  sltiu       sp, s11, -1271
                  xori        s5, zero, 241
                  slli        a5, a0, 15
                  auipc       a7, 733728
                  addi        tp, s11, -1741
                  nop
                  sub         s10, a2, t2
                  sltiu       zero, tp, 864
                  sub         zero, s8, s4
                  slti        s4, sp, 1362
                  beq         s3, sp, 2734f
                  bge         s5, zero, 2731f
2716:             auipc       s8, 433352
                  slt         tp, a3, a2
                  sltiu       a6, t4, 132
2719:             bne         s0, s6, 2727f
                  bgeu        t0, sp, 2737f
                  nop
                  srai        s0, ra, 23
                  slli        a3, a3, 14
                  srai        zero, s3, 4
                  auipc       t1, 684194
                  bltu        s1, a3, 2746f
2727:             srl         t3, s0, gp
                  nop
                  sltu        s2, sp, a3
                  add         a1, a3, s3
2731:             nop
                  auipc       s2, 237427
                  and         s2, s10, t6
2734:             auipc       a1, 876100
                  blt         a4, t6, 2744f
                  beq         tp, a0, 2753f
2737:             slli        s10, sp, 21
                  sra         s8, a1, a2
                  auipc       t1, 837867
                  sra         a1, s4, t4
                  lui         t2, 184974
                  lui         s9, 899574
                  sll         t2, sp, t3
2744:             bgeu        s9, a5, 2748f
                  addi        a3, s1, 346
2746:             andi        zero, s0, 3
                  bgeu        t3, a3, 2764f
2748:             srl         tp, t6, tp
                  nop
                  auipc       sp, 51784
                  sll         s10, t4, t5
                  sll         a5, s4, s9
2753:             srai        gp, a2, 17
                  bne         s8, s1, 2765f
                  srai        zero, s3, 19
                  add         s8, s7, a1
                  slt         s9, tp, a1
                  or          s11, a7, a2
                  nop
                  sltiu       zero, a0, 653
                  bge         s0, a0, 2766f
                  srai        zero, t5, 3
                  sltu        gp, a4, s3
2764:             slt         zero, a3, a6
2765:             srl         t4, a7, s7
2766:             ori         s10, s2, -635
                  srl         s1, a7, s5
                  srai        s1, a6, 6
                  bgeu        a6, zero, 2784f
                  sltu        a7, s8, a4
                  bge         a0, tp, 2786f
                  sll         t1, gp, a7
                  sll         s4, zero, t1
                  xor         a5, s1, s0
                  xori        zero, s1, -1766
                  andi        a1, sp, 469
                  lui         s4, 879586
                  sll         s2, sp, s11
                  sub         s7, a3, a6
                  bgeu        t3, s3, 2790f
                  sltu        t2, s5, s9
                  blt         s10, t4, 2785f
                  lui         zero, 154228
2784:             srli        s9, ra, 27
2785:             bne         t5, a0, 2796f
2786:             add         s4, a1, s5
                  slt         a0, a6, t6
                  bltu        s7, a5, 2807f
                  sltu        s1, a3, s11
2790:             slti        zero, a4, -288
                  sll         s3, t4, t5
                  blt         s9, s0, 2802f
                  bltu        s3, s3, 2806f
                  beq         s2, a1, 2806f
                  slt         s6, t3, s11
2796:             sra         s0, t1, s9
                  slt         s3, s1, t3
                  beq         s7, a0, 2808f
                  bgeu        s6, s3, 2806f
                  auipc       s3, 711777
                  slli        s8, s9, 29
2802:             ori         t3, s3, 642
                  sltiu       a2, a4, -320
                  lui         gp, 687390
                  lui         s9, 435430
2806:             blt         tp, a5, 2818f
2807:             blt         s1, a4, 2809f
2808:             nop
2809:             srl         s8, a2, zero
                  bltu        t6, a5, 2812f
                  xor         a4, s9, a0
2812:             srai        zero, a2, 11
                  xor         s6, t1, s0
                  sll         s1, s2, t3
                  ori         a3, ra, 69
                  xori        a4, s3, -1622
                  sltiu       t1, s0, 484
2818:             add         a2, zero, a7
                  xori        t3, s2, -2017
                  lui         s7, 520132
                  xori        a4, s4, -1551
                  slt         a3, ra, a5
                  bltu        a5, t0, 2838f
                  and         zero, t6, ra
                  srli        s7, s6, 2
                  and         zero, s10, s7
                  blt         a2, t6, 2832f
                  blt         zero, gp, 2843f
                  slli        sp, a3, 28
                  slt         a5, ra, a1
                  addi        sp, a7, 1651
2832:             bne         t5, t6, 2841f
                  or          zero, s0, s9
                  blt         gp, s9, 2850f
                  nop
                  blt         t4, a6, 2856f
                  and         a7, s4, s3
2838:             andi        a1, t1, 1251
                  xor         a5, t2, s10
                  xor         t1, zero, t5
2841:             bge         ra, a6, 2851f
                  nop
2843:             srl         a6, s0, a4
                  bne         t0, sp, 2854f
                  sra         s4, t0, t1
                  or          s8, a3, a4
                  nop
                  bltu        ra, s3, 2856f
                  srl         s1, s0, a1
2850:             bltu        t2, zero, 2854f
2851:             nop
                  beq         s1, t0, 2854f
                  sra         s8, s6, s2
2854:             xori        zero, s10, 775
                  ori         a3, zero, 359
2856:             srai        s7, t0, 9
                  bge         s0, s6, 2876f
                  or          a5, t6, a4
                  srli        a2, sp, 7
                  slli        a1, a4, 23
                  xor         a1, a3, s7
                  srl         zero, t0, a2
                  bge         s9, s8, 2875f
                  srl         t2, a6, t1
                  auipc       s11, 325820
                  srli        a6, s8, 4
                  ori         zero, s9, -691
                  srli        t1, zero, 7
                  addi        a4, ra, -1738
                  bltu        s8, s1, 2881f
                  and         sp, a3, gp
                  auipc       s8, 80312
                  bgeu        s2, s2, 2886f
                  sll         a6, a3, a2
2875:             auipc       s11, 930994
2876:             srai        s10, s5, 29
                  auipc       s6, 512166
                  xor         s5, t1, t2
                  bne         tp, a7, 2896f
                  xori        s0, a2, -1215
2881:             sra         a7, s10, s5
                  slti        s2, a3, 1695
                  addi        a0, sp, 62
                  sll         tp, t1, tp
                  and         s2, s4, a7
2886:             addi        s4, t4, -1577
                  xor         t3, t6, s2
                  nop
                  sll         s11, t5, s4
                  andi        s2, t4, -1050
                  addi        zero, zero, -1990
                  blt         s10, t6, 2902f
                  sll         s2, a7, t4
                  blt         s3, s0, 2909f
                  beq         s4, s8, 2897f
2896:             slli        s5, a4, 4
2897:             ori         s4, gp, 839
                  srai        s4, a4, 20
                  bltu        a5, s11, 2916f
                  ori         a6, t6, 160
                  and         ra, s11, s11
2902:             srai        t1, t6, 22
                  or          sp, a2, t5
                  sub         s6, t2, ra
                  xor         s6, zero, ra
                  xor         tp, t6, s3
                  slti        a1, s8, 1271
                  nop
2909:             and         s2, t3, s9
                  sltu        a4, s2, t6
                  ori         a3, s9, 1660
                  addi        a1, s4, 890
                  nop
                  srl         a0, s7, t0
                  sltiu       s11, a7, -1345
2916:             xori        s11, t1, 969
                  and         a7, a7, a4
                  slli        s4, a1, 4
                  andi        s1, tp, 134
                  nop
                  bge         tp, s7, 2938f
                  blt         s2, sp, 2933f
                  sra         s0, t6, s5
                  bltu        t6, a3, 2937f
                  srli        sp, a7, 15
                  slt         s3, s1, s10
                  srl         zero, s3, a5
                  sub         t1, ra, s7
                  sub         zero, a6, a3
                  srai        a5, a6, 6
                  auipc       s2, 18109
                  and         a1, s0, s5
2933:             srli        zero, s3, 17
                  bge         a1, gp, 2951f
                  slt         sp, a5, s5
                  srai        sp, gp, 16
2937:             lui         s4, 541715
2938:             andi        a4, s6, -515
                  ori         zero, t4, -1666
                  add         a0, a0, t5
                  slli        s7, tp, 30
                  blt         s1, t2, 2949f
                  addi        s10, a0, -1063
                  xori        s3, s10, 821
                  srai        a2, s2, 13
                  sll         zero, s6, t0
                  add         s8, s8, s10
                  add         s9, a2, s8
2949:             beq         s11, s0, 2969f
                  srai        s7, s2, 15
2951:             srl         s1, s3, t6
                  bge         t2, s10, 2955f
                  bge         sp, s11, 2970f
                  srai        t3, s4, 6
2955:             andi        zero, zero, -1592
                  blt         t1, a7, 2968f
                  sltiu       s2, t5, 551
                  ori         tp, s6, 245
                  beq         t4, a7, 2961f
                  bge         ra, a7, 2975f
2961:             sub         a3, tp, a0
                  nop
                  bltu        sp, sp, 2980f
                  sltu        zero, t5, tp
                  sltiu       t2, s2, -75
                  bltu        s9, t4, 2981f
                  srli        s3, s4, 26
2968:             srl         s8, s8, s10
2969:             or          a5, t5, s10
2970:             slt         s4, s10, a7
                  andi        s1, s4, 1374
                  or          zero, a2, s0
                  bltu        t3, a0, 2993f
                  bltu        t1, a2, 2976f
2975:             sltiu       t2, s7, -1281
2976:             slt         s3, s0, s1
                  and         a3, s9, a5
                  bge         a0, zero, 2980f
                  lui         zero, 338984
2980:             slti        t4, gp, 1355
2981:             sra         s7, s4, a5
                  beq         s9, a3, 2995f
                  or          a7, a4, a1
                  bne         tp, s9, 2995f
                  and         zero, s11, s11
                  sub         zero, s6, s9
                  slti        zero, s11, 1631
                  slt         a1, s5, s7
                  bltu        s10, zero, 3006f
                  bltu        s9, s8, 2992f
                  xor         s2, t0, ra
2992:             lui         s6, 25477
2993:             addi        zero, a4, 341
                  sltiu       s8, t3, 1374
2995:             sltu        s10, ra, t3
                  nop
                  add         a2, t5, t3
                  srai        s8, gp, 12
                  srai        gp, s3, 18
                  xori        a7, s4, 754
                  beq         a2, s9, 3013f
                  ori         s10, t1, 156
                  beq         a1, a0, 3013f
                  sll         s11, zero, a1
                  bgeu        t4, zero, 3022f
3006:             sll         a0, a5, s8
                  andi        t1, t3, 1523
                  ori         s6, s6, -399
                  sra         s10, s0, t3
                  ori         a2, t6, 1618
                  srai        s8, a5, 9
                  blt         s8, gp, 3028f
3013:             slti        s2, s6, 1592
                  auipc       ra, 644978
                  xor         gp, s6, a0
                  andi        s5, s8, 911
                  bltu        t5, s3, 3028f
                  xori        s4, a6, 1906
                  slli        s5, a6, 4
                  bltu        a3, t6, 3040f
                  slti        s5, t4, 1858
3022:             srl         zero, s10, zero
                  slt         s11, s9, a2
                  lui         t1, 741157
                  sra         s4, a0, s3
                  beq         s11, gp, 3030f
                  lui         s11, 193071
3028:             sltiu       s6, s6, -1418
                  and         t1, a5, a2
3030:             srl         t2, t0, s1
                  add         a6, a6, s11
                  addi        a5, s8, -745
                  bge         s4, t3, 3042f
                  sll         s5, s3, ra
                  srli        sp, sp, 6
                  srli        s3, gp, 7
                  srli        zero, s2, 27
                  nop
                  bltu        t2, a0, 3052f
3040:             sltu        zero, tp, t6
                  sub         a2, t2, zero
3042:             sub         a7, t0, zero
                  ori         zero, s4, 1952
                  srl         s8, s3, t1
                  addi        tp, a4, -1384
                  bgeu        t3, s6, 3063f
                  ori         zero, a3, 1104
                  nop
                  sra         zero, s8, t3
                  xori        zero, t0, -516
                  slti        s4, s0, 1443
3052:             auipc       s3, 221360
                  slli        s1, zero, 28
                  bgeu        t0, s11, 3059f
                  slli        s5, a5, 22
                  slt         a1, s3, t6
                  add         a7, s9, t2
                  add         a1, ra, s7
3059:             bge         s0, s3, 3076f
                  andi        s8, s2, -1784
                  srl         s5, s11, zero
                  xori        s9, a3, -1005
3063:             xor         a4, t2, s4
                  bge         t0, t4, 3079f
                  and         s3, a6, a0
                  slli        zero, s6, 19
                  auipc       s3, 611017
                  and         s8, s8, zero
                  bltu        s10, a1, 3077f
                  sra         s11, t4, s0
                  sub         t4, s5, a1
                  xor         s4, a5, a6
                  xori        t1, a0, -1312
                  srli        a1, s1, 9
                  and         t1, sp, s1
3076:             add         a7, gp, s8
3077:             lui         t4, 142081
                  add         s9, gp, s3
3079:             bne         a0, t4, 3089f
                  addi        s6, tp, -1006
                  bltu        s7, s10, 3093f
                  blt         a1, t1, 3085f
                  ori         sp, a2, -19
                  srli        zero, s4, 7
3085:             bne         s5, s7, 3092f
                  add         a2, gp, a0
                  srl         zero, s10, t0
                  lui         a2, 1024036
3089:             or          tp, a3, s9
                  xori        s8, s10, -356
                  sll         t4, a5, s9
3092:             srli        a2, a6, 26
3093:             lui         s6, 397149
                  beq         a5, t5, 3109f
                  slti        s4, t6, 215
                  xor         s9, a0, s10
                  slt         a7, a5, s0
                  srl         gp, s7, a4
                  add         s1, a2, t0
                  lui         s2, 246943
                  srli        gp, t4, 25
                  sra         s9, s4, s4
                  blt         t2, tp, 3122f
                  bgeu        s9, t4, 3114f
                  ori         a1, s11, -485
                  slli        a6, t0, 15
                  srl         gp, t2, a4
                  sltiu       t2, s6, 162
3109:             sll         zero, t5, t5
                  slt         a0, s6, a2
                  beq         s4, a5, 3121f
                  blt         a7, a3, 3131f
                  slli        sp, t4, 4
3114:             slli        zero, zero, 28
                  or          s3, t0, tp
                  ori         s1, s0, -88
                  and         zero, s6, s2
                  sub         s0, a1, a1
                  beq         s10, s5, 3130f
                  sltiu       s3, a4, -422
3121:             bgeu        s5, t0, 3136f
3122:             sltu        zero, a0, s6
                  nop
                  sub         s4, s4, a1
                  addi        zero, sp, 956
                  beq         t3, a6, 3141f
                  slt         zero, s8, sp
                  bgeu        t5, s6, 3139f
                  ori         s5, sp, -1066
3130:             and         a4, s1, s2
3131:             slt         tp, s10, sp
                  slli        s10, s5, 10
                  xor         gp, s9, a6
                  blt         s11, a2, 3146f
                  auipc       a5, 818012
3136:             add         a5, ra, a3
                  bge         s9, s7, 3149f
                  bltu        t2, t2, 3143f
3139:             srl         t3, a4, s0
                  srai        s10, t4, 16
3141:             slt         sp, t0, t0
                  nop
3143:             beq         s4, t0, 3160f
                  andi        a7, ra, -1340
                  sub         a3, a5, s10
3146:             blt         s7, s3, 3150f
                  slt         s6, s4, a2
                  slti        s0, tp, -1653
3149:             nop
3150:             nop
                  sra         t3, t1, t5
                  andi        a3, s4, -1444
                  xori        zero, s5, 130
                  sltu        a6, a5, t4
                  slli        s2, s6, 10
                  add         s5, s2, s3
                  auipc       s2, 106580
                  bgeu        t0, s6, 3171f
                  bne         a1, t0, 3168f
3160:             sll         gp, t0, a6
                  srli        a6, a5, 2
                  bltu        s1, a6, 3164f
                  add         a0, s0, a0
3164:             xor         a1, t2, t2
                  lui         t3, 209722
                  sra         a1, s2, a1
                  ori         ra, a2, 1082
3168:             beq         a4, zero, 3185f
                  srl         zero, a2, a2
                  srai        s9, s5, 23
3171:             auipc       t1, 590854
                  sltu        gp, s1, a1
                  slt         gp, t2, tp
                  sll         ra, s10, s8
                  nop
                  xor         t1, t5, a2
                  sra         s8, s10, s3
                  bltu        a4, a4, 3193f
                  sub         zero, a5, gp
                  srl         a7, t3, t4
                  srli        a7, t2, 8
                  slti        a7, tp, -418
                  sltiu       s5, s1, 1001
                  beq         t5, s3, 3197f
3185:             bne         t3, s9, 3202f
                  xor         tp, s10, s10
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_8
                  li         t3, 0x0
                  li         s7, 0x7b2ede8f
                  li         s10, 0x1
                  li         s11, 0x589ddc5d
                  li         s9, 0x66c8dbd1
                  li         s1, 0x1
                  li         a1, 0x0
                  li         s6, 0x0
                  li         a0, 0x1
                  nop
                  add         t2, s10, s11
                  addi        s4, t5, -675
                  addi        a6, s3, 1069
                  add         a6, t5, s11
                  addi        zero, s6, -1526
                  sub         s0, t2, s11
                  add         zero, a1, t6
                  add         t2, gp, t3
                  sub         sp, a0, t5
                  sub         s3, tp, t0
                  add         zero, s11, a5
                  nop
                  addi        s5, t5, -1277
                  lui         s0, 996928
                  addi        zero, a5, 1956
                  add         t2, a3, s4
                  nop
                  sub         zero, a6, s9
                  nop
                  lui         s10, 133998
                  addi        t3, t5, 517
                  addi        s8, s7, 295 #end riscv_int_numeric_corner_stream_8
                  andi        zero, t1, -1992
                  xori        a2, t2, 518
                  slli        gp, a6, 3
                  slli        s0, ra, 14
                  sra         ra, s1, t4
                  and         s9, t2, s7
3193:             sub         t1, t6, t2
                  andi        a4, ra, -1854
                  xor         a4, ra, t2
                  and         zero, s1, a2
3197:             srli        s0, s7, 12
                  srai        t2, s9, 22
                  bltu        s1, a2, 3219f
                  bltu        s6, s3, 3203f
                  bltu        t2, a2, 3217f
3202:             sltu        s9, s11, s4
3203:             and         t1, a1, a0
                  li         a7, 0x1 #start riscv_int_numeric_corner_stream_11
                  li         t4, 0x0
                  li         s11, 0x0
                  li         t3, 0x0
                  li         s10, 0x2769be2a
                  li         s8, 0x0
                  li         sp, 0x0
                  li         a0, 0x1
                  li         s9, 0x4b166a79
                  li         a1, 0x2325267
                  lui         s9, 478947
                  nop
                  addi        s9, a3, 84
                  addi        s10, t0, 220
                  nop
                  addi        s8, a2, 1169
                  add         s7, tp, s7
                  addi        s6, a5, 1959
                  addi        ra, s11, 244
                  sub         ra, t1, a4
                  addi        ra, s10, -1246
                  sub         s6, s10, s11
                  addi        a2, s10, 1009
                  add         s6, s1, s1
                  lui         s1, 21383
                  add         zero, s0, a7
                  addi        s6, tp, 495
                  addi        s5, t3, 931
                  add         zero, a6, s2
                  nop
                  lui         a1, 451294
                  nop
                  sub         tp, a5, s5
                  lui         s1, 730823
                  add         s10, s5, t3
                  sub         s0, a1, zero
                  sub         s7, a4, zero
                  lui         a7, 988682
                  sub         s3, t1, s5
                  lui         t4, 520333 #end riscv_int_numeric_corner_stream_11
                  sltiu       zero, s9, -1148
                  bne         s1, s5, 3215f
                  srli        zero, ra, 16
                  and         s6, s0, gp
                  and         s7, t1, t5
                  srli        t4, s9, 25
                  bne         t6, t0, 3218f
                  sra         sp, a6, a6
                  addi        t2, gp, -1170
                  add         a1, a0, t3
                  srli        a3, t0, 30
3215:             srli        a5, t6, 25
                  sra         s6, a1, a6
3217:             auipc       a7, 506512
3218:             srl         a6, a4, a7
3219:             bgeu        s3, s6, 3229f
                  sll         zero, s5, t4
                  ori         zero, sp, -1128
                  ori         s7, s1, 181
                  xor         a2, s8, a5
                  blt         sp, a5, 3226f
                  xori        a6, s4, -1187
3226:             xor         sp, a7, s8
                  bne         gp, s4, 3244f
                  bne         tp, s7, 3248f
3229:             sub         a2, a2, a3
                  beq         tp, a4, 3247f
                  xori        gp, s6, 1201
                  bgeu        a5, s8, 3239f
                  srl         s1, t1, t0
                  sra         zero, t0, sp
                  ori         a2, s2, 1658
                  xor         s6, a6, s4
                  xor         a4, tp, t5
                  blt         s1, s11, 3240f
3239:             slti        a0, zero, 1024
3240:             bgeu        gp, s2, 3250f
                  bne         s4, s3, 3243f
                  add         zero, s11, a0
3243:             slli        sp, s5, 27
3244:             ori         t3, s0, 1419
                  srl         zero, a6, a4
                  lui         a5, 280505
3247:             lui         a1, 913646
3248:             lui         s5, 265920
                  or          a6, s2, t0
3250:             srl         a0, gp, s1
                  lui         a4, 277631
                  bge         s8, sp, 3254f
                  blt         s6, sp, 3273f
3254:             nop
                  andi        gp, s0, 60
                  addi        s3, a1, 660
                  xori        zero, zero, -1676
                  slt         zero, a5, gp
                  sltu        s11, s7, t1
                  sll         s10, s1, tp
                  andi        zero, zero, -1604
                  xori        sp, t0, 1661
                  ori         s6, gp, 273
                  bgeu        s1, s11, 3267f
                  xor         zero, s10, a5
                  lui         s2, 920757
3267:             srl         s5, gp, t0
                  slti        ra, a6, -753
                  blt         s2, tp, 3286f
                  bge         a1, a6, 3277f
                  sub         t2, s0, zero
                  bltu        s4, a0, 3282f
3273:             addi        zero, a3, -1354
                  slli        gp, a7, 2
                  sltu        a5, tp, s10
                  xor         s0, s4, s10
3277:             slti        s8, a1, -1024
                  sltiu       a7, s3, 524
                  or          a0, s0, a7
                  srai        ra, a7, 5
                  or          ra, gp, s4
3282:             bgeu        s10, s3, 3299f
                  add         zero, s3, s0
                  bgeu        s8, s8, 3297f
                  bltu        s6, tp, 3290f
3286:             bgeu        s7, s1, 3294f
                  ori         a7, ra, 1197
                  slt         t2, t5, a5
                  xor         s11, a5, ra
3290:             sll         ra, t0, a7
                  nop
                  beq         t2, s10, 3296f
                  bne         a5, s2, 3306f
3294:             slti        ra, t6, -1646
                  xori        zero, t3, 1126
3296:             sub         s4, t1, s1
3297:             sub         s3, a0, t1
                  sra         s10, s2, a4
3299:             srli        s5, s4, 13
                  blt         s9, t4, 3319f
                  bne         gp, s10, 3303f
                  or          s11, ra, a0
3303:             xor         sp, t1, s7
                  sra         t1, a1, t1
                  sub         s2, tp, t0
3306:             beq         a0, ra, 3316f
                  beq         ra, t0, 3322f
                  beq         gp, s10, 3328f
                  sra         s7, t4, t2
                  addi        a4, s10, -1811
                  lui         s7, 802269
                  bgeu        s2, a4, 3329f
                  bne         s7, s8, 3322f
                  andi        t2, a3, 1558
                  sra         zero, ra, s4
3316:             auipc       a7, 994470
                  xori        s9, s10, -1456
                  blt         t4, s2, 3335f
3319:             ori         a7, s11, -1672
                  nop
                  slt         a5, t4, a7
3322:             xori        zero, s7, -204
                  srli        a4, tp, 17
                  lui         gp, 167143
                  and         sp, a0, t2
                  and         s3, s3, s7
                  bne         a5, s4, 3342f
3328:             sub         s8, s3, ra
3329:             auipc       s1, 355909
                  or          t3, s9, s0
                  slt         a0, a5, t5
                  srl         a5, a7, s1
                  srl         sp, a1, a4
                  beq         s0, t4, 3342f
3335:             slt         s10, tp, a1
                  auipc       a1, 504298
                  bge         a4, ra, 3342f
                  slt         a2, a3, s1
                  bge         s9, s10, 3342f
                  sll         a0, a2, t0
                  srl         zero, t2, s8
3342:             srl         a3, t3, t5
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .region_0,"aw",@progbits;
region_0:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.section .region_1,"aw",@progbits;
region_1:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
mmode_intr_vector_1:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_2:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_3:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_4:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_5:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_6:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_7:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_8:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_9:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_10:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_11:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_12:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_13:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_14:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_15:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

.align 4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15

mmode_exception_handler:
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x28, 0xb # ECALL_MMODE
                  beq x29, x28, ecall_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x5, write_tohost
                  jalr x0, x5, 0

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  lw x1, 4(x30)
                  lw x2, 8(x30)
                  lw x3, 12(x30)
                  lw x4, 16(x30)
                  lw x5, 20(x30)
                  lw x6, 24(x30)
                  lw x7, 28(x30)
                  lw x8, 32(x30)
                  lw x9, 36(x30)
                  lw x10, 40(x30)
                  lw x11, 44(x30)
                  lw x12, 48(x30)
                  lw x13, 52(x30)
                  lw x14, 56(x30)
                  lw x15, 60(x30)
                  lw x16, 64(x30)
                  lw x17, 68(x30)
                  lw x18, 72(x30)
                  lw x19, 76(x30)
                  lw x20, 80(x30)
                  lw x21, 84(x30)
                  lw x22, 88(x30)
                  lw x23, 92(x30)
                  lw x24, 96(x30)
                  lw x25, 100(x30)
                  lw x26, 104(x30)
                  lw x27, 108(x30)
                  lw x28, 112(x30)
                  lw x29, 116(x30)
                  lw x30, 120(x30)
                  lw x31, 124(x30)
                  addi x30, x30, 124
                  add x31, x30, zero
                  csrrw x30, 0x340, x30
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  lw x1, 4(x30)
                  lw x2, 8(x30)
                  lw x3, 12(x30)
                  lw x4, 16(x30)
                  lw x5, 20(x30)
                  lw x6, 24(x30)
                  lw x7, 28(x30)
                  lw x8, 32(x30)
                  lw x9, 36(x30)
                  lw x10, 40(x30)
                  lw x11, 44(x30)
                  lw x12, 48(x30)
                  lw x13, 52(x30)
                  lw x14, 56(x30)
                  lw x15, 60(x30)
                  lw x16, 64(x30)
                  lw x17, 68(x30)
                  lw x18, 72(x30)
                  lw x19, 76(x30)
                  lw x20, 80(x30)
                  lw x21, 84(x30)
                  lw x22, 88(x30)
                  lw x23, 92(x30)
                  lw x24, 96(x30)
                  lw x25, 100(x30)
                  lw x26, 104(x30)
                  lw x27, 108(x30)
                  lw x28, 112(x30)
                  lw x29, 116(x30)
                  lw x30, 120(x30)
                  lw x31, 124(x30)
                  addi x30, x30, 124
                  add x31, x30, zero
                  csrrw x30, 0x340, x30
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .s_region_0,"aw",@progbits;
s_region_0:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.section .s_region_1,"aw",@progbits;
s_region_1:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 4999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
