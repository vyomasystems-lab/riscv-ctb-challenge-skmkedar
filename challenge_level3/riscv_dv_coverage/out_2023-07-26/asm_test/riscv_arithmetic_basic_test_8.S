.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 0
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15

init_machine_mode:
                  li x15, 0x1c00
                  csrw 0x300, x15 # MSTATUS
                  li x15, 0x0
                  csrw 0x304, x15 # MIE
                  mret
init:             
                  li x0, 0xfd6e33f9
                  li x1, 0xf
                  li x2, 0xd801d2de
                  li x3, 0xd
                  li x4, 0x80000000
                  li x5, 0x232bbc46
                  li x6, 0x80000000
                  li x7, 0x7e3be6a9
                  li x8, 0xf49d72f6
                  li x9, 0xc64cac05
                  li x10, 0x6c570ba7
                  li x11, 0xdc24cbec
                  li x12, 0xf
                  li x13, 0x3814fc45
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0x0
                  li x19, 0xfab82129
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0x6f597d8e
                  li x23, 0x0
                  li x24, 0x5
                  li x25, 0x80000000
                  li x26, 0x6dcc9dfa
                  li x28, 0x80000000
                  li x29, 0x0
                  li x31, 0x0
                  la x27, user_stack_end
main:             li         t4, 0x0 #start riscv_int_numeric_corner_stream_2
                  li         a3, 0x3f776ebc
                  li         s10, 0x0
                  li         s9, 0x1
                  li         a1, 0x745bea25
                  li         t3, 0x0
                  li         s8, 0x1
                  li         s1, 0x0
                  li         s2, 0x547389ac
                  li         s3, 0x2b200c36
                  add         s0, a1, s10
                  nop
                  add         a2, s4, s1
                  addi        s6, s10, 78
                  sub         ra, t2, a3
                  lui         a0, 78884
                  add         s6, a1, t5
                  addi        s7, t2, -1979
                  lui         zero, 976846
                  lui         tp, 1032241
                  lui         s3, 502177
                  add         a0, a1, s4
                  lui         s8, 520817
                  add         a2, s0, a7
                  addi        s0, t3, -33
                  add         s8, s10, a7
                  lui         s9, 664728
                  sub         a5, a2, s8
                  sub         gp, a5, s3
                  addi        s5, t5, 1152 #end riscv_int_numeric_corner_stream_2
                  sltu        a4, t0, a5
                  beq         a2, gp, 16f
                  lui         t1, 203950
                  sub         t1, a7, s3
                  bltu        t3, s11, 15f
                  auipc       zero, 353675
                  andi        sp, s3, 171
                  blt         s0, a4, 26f
                  ori         sp, s7, 504
                  and         a4, a2, sp
                  bltu        s6, t5, 21f
                  addi        a0, t6, 1424
                  bgeu        a7, t3, 22f
                  beq         s8, sp, 17f
                  sll         s7, s1, t0
15:               bne         a6, s6, 29f
16:               or          ra, zero, a7
17:               bltu        t5, gp, 19f
                  srl         s4, t3, t5
19:               sll         s1, a4, s9
                  srl         s8, s4, s10
21:               bne         s2, s5, 22f
22:               beq         a6, t4, 25f
                  bgeu        s9, s8, 36f
                  add         a6, t5, t4
25:               sub         s4, a7, t4
26:               slt         ra, s0, s6
                  andi        s5, a7, -576
                  or          s2, ra, a7
29:               sltu        tp, tp, t6
                  nop
                  ori         t1, s7, 1994
                  sub         sp, s4, s11
                  slt         a2, t6, a6
                  sra         tp, zero, a3
                  sll         s5, s1, a5
36:               srl         s6, a3, t6
                  bge         a3, s8, 53f
                  sll         s10, s10, s3
                  or          s10, a7, s5
                  or          a1, t6, s0
                  srai        tp, a7, 7
                  blt         a0, ra, 60f
                  sltu        s3, s4, s9
                  sll         s4, a6, s11
                  bge         zero, t1, 65f
                  auipc       a7, 663780
                  addi        zero, t3, -296
                  nop
                  nop
                  sra         t3, tp, t0
                  sltu        s7, s8, a3
                  or          sp, s10, s4
53:               and         a2, gp, zero
                  blt         t5, a5, 59f
                  addi        zero, a2, 1743
                  beq         ra, a3, 63f
                  andi        s10, t3, -970
                  bgeu        s7, a7, 76f
59:               addi        zero, s0, -1850
60:               xor         a4, t6, s4
                  beq         a4, s9, 76f
                  sltiu       zero, s11, 375
63:               sltiu       zero, a7, 148
                  slli        a4, t6, 3
65:               sltiu       a6, gp, -831
                  sra         t2, tp, t1
                  sltu        s2, gp, a1
                  lui         s1, 230449
                  slli        tp, t0, 14
                  bne         a0, t4, 88f
                  lui         s5, 1021869
                  sra         tp, s5, ra
                  srl         a2, s4, s4
                  bne         ra, s8, 76f
                  slt         s6, t0, a6
76:               lui         s10, 583112
                  blt         t4, tp, 78f
78:               sub         a7, s11, t2
                  sltu        t2, a6, s1
                  slli        s10, a5, 3
                  andi        a1, s10, -820
                  srai        t2, s11, 24
                  xor         s10, a3, s10
                  xori        s1, s9, 1051
                  srli        s6, s3, 9
                  slti        sp, s1, -1660
                  ori         a3, ra, 207
88:               auipc       zero, 174229
                  andi        s2, s7, -902
                  xori        tp, sp, 1981
                  slli        s8, a3, 15
                  add         a0, s1, a3
                  add         a4, s3, s9
                  bgeu        s7, s8, 114f
                  ori         t2, a6, -533
                  xor         s3, s3, s3
                  andi        a5, ra, -1431
                  bne         gp, a0, 100f
                  add         a5, s0, ra
100:              slli        tp, gp, 15
                  srl         s4, a2, s9
                  ori         s2, zero, -97
                  sltu        ra, a7, a6
                  bne         s7, a7, 121f
                  xori        s6, t3, -487
                  bgeu        ra, sp, 108f
                  bgeu        s1, s11, 110f
108:              andi        t3, s10, 1934
                  bne         a1, a7, 111f
110:              or          s10, s4, t2
111:              andi        s5, s7, 1418
                  sltiu       s5, s1, 440
                  auipc       s7, 251503
114:              slli        s9, s5, 4
                  add         s2, t6, a5
                  lui         s6, 962497
                  sltu        s4, s10, s0
                  lui         s9, 1015950
                  xori        a5, a6, 1901
                  sltu        t4, s4, s5
121:              xori        s7, s11, 636
                  or          s8, t2, t5
                  slli        s3, a2, 14
                  bne         s6, a5, 130f
                  and         tp, a6, s8
                  slli        s3, t6, 19
                  slt         a0, s5, s1
                  xori        a2, tp, 272
                  srli        tp, s10, 21
130:              srai        a0, s8, 0
                  bgeu        a5, a7, 146f
                  sll         t0, s3, s4
                  auipc       a2, 190904
                  bltu        a7, t5, 142f
                  slti        sp, t6, 42
                  slti        s10, a2, -1215
                  add         zero, s2, s7
                  sra         t0, s8, a1
                  auipc       zero, 200495
                  addi        s6, s1, 1427
                  bge         s5, sp, 160f
142:              bge         s4, t3, 160f
                  and         zero, s7, s8
                  bgeu        t6, s6, 145f
145:              sll         a4, tp, s6
146:              sra         ra, a3, s7
                  slt         t4, s10, s9
                  and         zero, tp, s11
                  add         a4, s3, gp
                  bltu        s4, tp, 153f
                  sltiu       s2, tp, 511
                  sll         sp, s6, a5
153:              andi        a7, s9, 1058
                  sll         t1, t1, t5
                  srai        a5, gp, 22
                  blt         a4, a6, 160f
                  nop
                  sll         s2, s10, a1
                  xor         zero, gp, t5
160:              lui         s10, 463812
                  srl         zero, ra, sp
                  lui         s7, 49458
                  xori        s10, zero, 716
                  bne         zero, a3, 175f
                  sub         s7, t4, s8
                  xor         s7, a6, tp
                  xori        zero, t3, -1706
                  slti        tp, a3, 1451
                  bge         s7, s5, 184f
                  slti        zero, s11, -2037
                  xor         zero, tp, a2
                  sra         s6, s11, s7
                  bltu        s1, s1, 175f
                  beq         zero, s9, 180f
175:              slti        a5, a1, -1544
                  andi        s6, a7, 755
                  srli        s7, t1, 27
                  auipc       tp, 15152
                  add         a5, zero, zero
180:              lui         s4, 139162
                  andi        gp, a6, 1724
                  slli        zero, t3, 3
                  sra         t0, a5, s9
184:              add         s2, s10, t5
                  bge         a7, a7, 192f
                  xor         zero, zero, zero
                  andi        s8, t1, -1052
                  srl         tp, a0, s10
                  auipc       t3, 764347
                  lui         s6, 823728
                  andi        t0, zero, 5
192:              slli        s4, s9, 26
                  blt         a6, t2, 210f
                  sltu        zero, zero, a1
                  auipc       s1, 439103
                  or          a2, s5, zero
                  sltiu       s7, a2, -1839
                  add         s1, t4, a4
                  slt         tp, a0, a6
                  sub         zero, t3, s0
                  add         s8, t6, t6
                  bne         s10, a0, 205f
                  bgeu        s10, gp, 221f
                  xori        s3, t1, -18
205:              srai        t1, t5, 11
                  and         a0, a6, t4
                  srli        s3, s7, 11
                  sll         t4, a1, a0
                  xor         a5, t6, a3
210:              sra         a3, s3, s5
                  beq         a4, s4, 213f
                  andi        s9, a0, -915
213:              bltu        s1, a4, 224f
                  beq         s7, ra, 229f
                  ori         s10, s3, -1120
                  xori        s10, t3, 1684
                  bltu        s11, a4, 233f
                  beq         a6, a0, 228f
                  sll         zero, ra, s5
                  slt         s7, gp, t2
221:              or          s6, s11, s3
                  auipc       a2, 611213
                  srli        a3, t1, 13
224:              slli        s0, t0, 27
                  ori         a1, s11, -1294
                  nop
                  nop
228:              blt         t3, s3, 242f
229:              sub         ra, s10, s2
                  sll         zero, s3, s1
                  and         s10, s0, s1
                  bne         s7, a6, 252f
233:              addi        a0, a4, 677
                  sll         a7, s9, a7
                  srli        zero, t0, 24
                  or          ra, a0, s11
                  slt         zero, t2, a1
                  beq         s5, t4, 246f
                  bge         t1, t6, 241f
                  sra         s4, a4, s3
241:              sra         zero, t4, a1
242:              sra         s4, sp, a4
                  slti        s0, a3, -784
                  sub         s3, a4, s2
                  sltu        a4, s2, sp
246:              bge         t6, s5, 248f
                  bge         a4, a5, 265f
248:              or          tp, t5, s7
                  bltu        gp, s1, 262f
                  srai        zero, s5, 16
                  sub         a6, a7, a2
252:              add         ra, tp, s7
                  bge         sp, s11, 268f
                  nop
                  sltiu       zero, s9, 15
                  srli        t4, a3, 29
                  bgeu        a4, a6, 277f
                  nop
                  lui         t0, 75844
                  lui         a5, 598538
                  lui         s2, 527677
262:              xor         s5, s11, s8
                  andi        zero, s4, 708
                  xori        zero, s9, 1199
265:              bge         s3, s2, 267f
                  sll         t4, gp, t1
267:              ori         zero, tp, 138
268:              sub         gp, a4, a2
                  blt         s8, s9, 270f
270:              and         s9, s1, tp
                  blt         t5, s9, 276f
                  blt         a5, s9, 290f
                  srai        a2, s8, 11
                  bltu        s3, s1, 285f
                  slti        s3, gp, 181
276:              ori         s8, t0, 584
277:              lui         sp, 347843
                  and         s5, a6, s5
                  andi        ra, zero, -36
                  xor         zero, t6, s7
                  or          a0, a5, s9
                  bltu        a4, t0, 295f
                  slti        s7, s3, 1309
                  sltiu       a5, a7, -255
285:              bltu        gp, t5, 295f
                  srl         a7, s9, s6
                  bltu        s11, a1, 288f
288:              addi        s6, s6, 1097
                  sltu        gp, t1, t2
290:              ori         a0, tp, -1629
                  beq         s8, t5, 292f
292:              add         s8, s11, ra
                  auipc       zero, 323907
                  xori        s9, sp, 1778
295:              addi        s0, t4, 1528
                  slli        a6, s8, 20
                  and         s10, s0, s3
                  srl         a1, s4, t4
                  sll         a6, s6, tp
                  bne         ra, a6, 302f
                  xor         s0, s3, a6
302:              blt         a4, a1, 317f
                  xori        s2, gp, 815
                  bne         t2, t6, 318f
                  and         s5, a1, t6
                  bgeu        sp, s7, 310f
                  lui         zero, 291597
                  srai        s7, a4, 27
                  andi        s8, s4, -1951
310:              and         sp, t6, t2
                  ori         zero, sp, -707
                  add         s5, a3, ra
                  srli        s0, a1, 8
                  srli        s5, s0, 21
                  addi        gp, t2, 778
                  sra         gp, sp, t1
317:              auipc       ra, 830601
318:              bne         t6, tp, 321f
                  beq         s8, t3, 321f
                  andi        s0, a7, 984
321:              lui         a2, 292921
                  bltu        s3, s5, 341f
                  sll         a5, t3, zero
                  nop
                  sltiu       s4, s8, 332
                  andi        ra, t0, 1044
                  bgeu        t5, t0, 329f
                  lui         s2, 635230
329:              addi        s10, a5, 491
                  andi        a0, s6, -1957
                  andi        gp, ra, -679
                  srai        s0, sp, 26
                  beq         s11, t1, 335f
                  or          a1, t3, a2
335:              andi        a6, a6, -714
                  xor         a2, a0, tp
                  sll         s4, a2, s6
                  add         zero, a1, a0
                  ori         s4, s10, 532
                  bgeu        tp, s11, 355f
341:              sll         a1, s3, s10
                  xor         a5, zero, s8
                  bltu        s8, t4, 360f
                  srai        s7, s9, 12
                  bgeu        a5, t0, 360f
                  sltiu       s7, s9, -1735
                  srli        sp, a7, 13
                  sltiu       tp, s7, 678
                  blt         s5, tp, 351f
                  sltiu       zero, s7, 1432
351:              slli        t4, a7, 23
                  nop
                  ori         a4, s7, 292
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_0
                  li         t3, 0x0
                  li         gp, 0x1
                  li         s10, 0x2955b10b
                  li         t2, 0x0
                  li         a0, 0x0
                  li         s9, 0x0
                  li         s8, 0x0
                  li         s0, 0x15348509
                  li         a6, 0x0
                  lui         zero, 461544
                  sub         t4, gp, ra
                  sub         a0, a4, s0
                  nop
                  addi        s4, t5, 1459
                  addi        s10, a7, 1333
                  addi        zero, s11, -689
                  lui         s3, 301585
                  nop
                  sub         sp, s0, s9
                  sub         s1, t1, ra
                  add         s0, zero, a6
                  addi        s4, sp, 353
                  sub         s3, a6, a3
                  add         t3, s6, a7
                  nop
                  add         s3, s6, a1
                  lui         s1, 862495
                  nop
                  addi        zero, a5, 1604
                  add         gp, a2, gp
                  add         zero, t1, a2
                  add         s7, s6, a7
                  lui         s6, 104372
                  nop
                  add         a4, a7, s2
                  add         s8, a4, s11
                  add         s3, t4, s2
                  add         t3, a3, s8 #end riscv_int_numeric_corner_stream_0
                  bge         s6, t2, 372f
355:              xori        s9, a2, 821
                  xor         s5, s2, gp
                  slti        gp, s3, -1033
                  or          t3, a4, s9
                  add         zero, s4, s5
360:              xor         t2, a2, zero
                  beq         s7, tp, 377f
                  sub         s5, t2, a7
                  andi        s0, s9, 988
                  sll         a6, tp, a3
                  and         s7, t0, s5
                  add         s6, ra, tp
                  bgeu        s7, tp, 372f
                  lui         gp, 224299
                  bge         tp, a7, 376f
                  and         a2, a6, a5
                  xori        t0, t3, -699
372:              add         s7, a7, s10
                  beq         s2, a5, 376f
                  addi        s1, s7, 153
                  srai        zero, s10, 16
376:              or          s9, t6, s3
377:              srai        t4, zero, 28
                  srai        s10, t6, 30
                  sltu        a1, s9, t4
                  or          a7, s0, a2
                  auipc       zero, 224592
                  bgeu        s10, gp, 390f
                  srai        a3, t0, 10
                  ori         s3, a0, 1449
                  sra         s7, t1, a6
                  sll         a6, zero, t2
                  srai        s8, a3, 22
                  sltiu       a3, s8, -942
                  bge         a1, s0, 409f
390:              lui         s4, 603300
                  nop
                  sra         a2, zero, s9
                  sll         t3, t4, s6
                  slli        a3, s11, 18
                  bltu        a2, a7, 406f
                  xor         t2, s5, ra
                  slti        t2, a5, -1090
                  slli        sp, t4, 19
                  sub         zero, s0, a3
                  xori        zero, t3, -1245
                  sltu        sp, s3, t4
                  and         s1, a4, ra
                  slti        ra, t6, -2004
                  srai        s7, t5, 21
                  xori        s8, s8, 604
406:              auipc       a0, 948890
                  sra         a5, t6, a0
                  and         a1, zero, a1
409:              or          s2, s8, t4
                  xori        tp, gp, 642
                  bgeu        t6, s10, 429f
                  sub         s1, ra, s0
                  bne         t4, a4, 419f
                  slti        t2, a2, -105
                  bne         sp, s11, 435f
                  blt         s5, s1, 424f
                  beq         a0, s10, 435f
                  beq         a3, t2, 431f
419:              auipc       a3, 625504
                  ori         a6, sp, -1783
                  bne         a1, a5, 439f
                  srai        t4, s3, 24
                  bgeu        t3, t3, 425f
424:              slti        a1, ra, -1852
425:              bge         a2, s9, 427f
                  blt         a1, zero, 432f
427:              sltiu       s9, s10, 1165
                  nop
429:              slt         a1, sp, s3
                  xori        zero, gp, -1521
431:              auipc       zero, 378489
432:              sra         t0, t5, zero
                  sltiu       s0, t1, -783
                  xor         s5, a7, s7
435:              srl         s5, a3, gp
                  bgeu        s1, a6, 443f
                  andi        t0, t3, -372
                  slli        ra, sp, 14
439:              and         s6, a3, a4
                  sltiu       zero, t2, 1956
                  add         s4, zero, a7
                  sub         zero, s7, a0
443:              srl         a1, s4, a4
                  lui         s9, 607556
                  xori        t2, t0, 1851
                  li         tp, 0x1 #start riscv_int_numeric_corner_stream_3
                  li         t4, 0x0
                  li         t3, 0x7d01aad1
                  li         a2, 0x0
                  li         t0, 0x0
                  li         a3, 0xb4b5449
                  li         s4, 0x5f21f0f5
                  li         s9, 0x0
                  li         s10, 0x0
                  li         a4, 0x0
                  nop
                  sub         s10, t1, t2
                  addi        sp, t3, -1626
                  addi        s8, a7, -1310
                  lui         a1, 547259
                  sub         t0, a3, s2
                  add         a2, t5, t2
                  add         t2, s5, s8
                  add         gp, t1, t4
                  add         zero, s3, a6
                  lui         s7, 360143
                  nop
                  add         a7, a6, a6
                  nop
                  add         s5, s3, s11
                  add         t1, a3, s2
                  sub         tp, s5, a2
                  add         t1, a4, s5
                  nop
                  lui         a6, 543435
                  nop
                  addi        sp, a6, -1070
                  nop
                  add         t4, s8, s2
                  sub         t3, t0, a3
                  lui         a0, 601674 #end riscv_int_numeric_corner_stream_3
                  srli        s0, a5, 28
                  sll         gp, a1, t0
                  andi        s2, s11, 49
                  srai        ra, t0, 19
                  add         s5, a2, t0
                  bge         a3, s5, 452f
452:              sll         t2, gp, a1
                  blt         s7, a3, 470f
                  lui         a5, 822346
                  andi        s8, a4, 1192
                  srai        s10, t4, 0
                  blt         ra, a0, 477f
                  auipc       s2, 16646
                  blt         zero, s3, 475f
                  blt         gp, t1, 463f
                  or          s5, a1, t2
                  bgeu        a5, sp, 482f
463:              srl         zero, t0, s11
                  beq         t2, a5, 479f
                  sltiu       s0, zero, 1820
                  beq         tp, a0, 480f
                  auipc       a1, 330548
                  srli        s3, a2, 0
                  bne         t5, s10, 472f
470:              andi        s3, a1, 1249
                  srl         tp, t4, s7
472:              andi        a0, s7, -1208
                  bltu        zero, s8, 491f
                  slt         a3, s9, a6
475:              sll         a2, a2, s10
                  ori         a1, a5, 586
477:              slti        s0, a6, 1142
                  and         s6, zero, a3
479:              lui         s3, 461904
480:              or          a7, s6, s11
                  bge         a1, s6, 483f
482:              ori         s8, s3, 440
483:              sub         a4, gp, s8
                  or          t0, s2, s0
                  slli        s2, s7, 29
                  slt         a4, a4, s4
                  bge         tp, sp, 497f
                  addi        t4, a7, -1109
                  lui         sp, 634849
                  ori         a1, s2, -707
491:              add         s6, zero, s0
                  srli        s2, s4, 25
                  xori        s9, t3, -1987
                  sltiu       t0, t4, 1769
                  bge         a5, a3, 510f
                  beq         a2, s9, 500f
497:              andi        s10, s11, 986
                  addi        s9, s3, 1650
                  slt         s6, tp, a0
500:              srai        a5, zero, 16
                  bgeu        s10, tp, 503f
                  andi        t1, s2, -213
503:              bge         ra, t0, 508f
                  andi        sp, ra, 872
                  nop
                  addi        s9, s6, -1138
                  srai        a7, s0, 23
508:              sltu        a3, a4, a4
                  ori         t0, a2, -1977
510:              blt         a1, tp, 525f
                  nop
                  srl         t3, s7, zero
                  andi        t3, t1, 1009
                  srl         zero, t5, s8
                  slt         t2, s5, a1
                  or          zero, s6, gp
                  xori        s10, s9, 162
                  bne         s11, s11, 520f
                  xori        s7, s3, -1471
520:              beq         a2, s6, 521f
521:              bge         ra, t0, 540f
                  sltiu       a4, a2, -1980
                  or          s1, t0, t5
                  bne         zero, s11, 535f
525:              sll         t1, s1, zero
                  blt         s10, s3, 537f
                  sltiu       a2, a5, 911
                  srli        a5, a0, 31
                  srli        t0, t3, 11
                  sltiu       s7, t6, 2025
                  sra         a3, s9, s9
                  bgeu        t0, a2, 536f
                  auipc       a0, 354188
                  srl         s4, s0, s10
535:              bltu        a1, gp, 536f
536:              andi        s2, s7, -1068
537:              blt         t3, s3, 556f
                  beq         a6, a7, 549f
                  sltiu       s1, s0, -1138
540:              slt         s7, s2, s4
                  sltiu       s1, a7, 1588
                  bge         s4, a0, 560f
                  auipc       t4, 255358
                  bge         t1, a1, 547f
                  addi        t2, a6, 1823
                  xor         s5, gp, a4
547:              srai        ra, t0, 31
                  sra         t3, t0, t6
549:              srai        tp, gp, 27
                  slt         a7, s4, s4
                  slli        sp, a2, 28
                  sltiu       t4, ra, -1197
                  auipc       zero, 201242
                  srai        a7, zero, 23
                  or          a4, a7, s4
556:              sltiu       a7, t5, 1288
                  beq         s11, t5, 573f
                  or          s4, a7, a0
                  xor         s9, s1, a4
560:              lui         s6, 757647
                  bne         t0, sp, 562f
562:              xori        s10, a5, -1019
                  blt         a6, s2, 565f
                  blt         t6, tp, 566f
565:              nop
566:              sra         s6, s6, t5
                  xor         s1, s7, a0
                  sub         a7, s10, zero
                  sltu        s0, t4, t2
                  ori         zero, t0, -1365
                  lui         s5, 823771
                  slti        s1, s6, 1562
573:              xori        gp, t0, -178
                  srl         s0, s7, s6
                  ori         ra, t2, 1126
                  bne         a0, s1, 578f
                  slti        sp, t2, 1174
578:              bge         s3, s3, 581f
                  bgeu        t5, a7, 584f
                  andi        a0, t3, 1661
581:              addi        s0, a4, 1692
                  srai        s10, tp, 24
                  blt         tp, a2, 585f
584:              srli        s3, sp, 18
585:              xori        t3, t1, 1866
                  sra         t0, a4, t1
                  sub         s0, s10, a1
                  bgeu        s8, s7, 590f
                  addi        s8, zero, -1511
590:              sra         tp, s5, a0
                  sub         a5, s6, t2
                  slli        s10, s4, 8
                  andi        sp, s5, -283
                  sra         zero, zero, a5
                  slli        tp, sp, 24
                  bge         a4, sp, 611f
                  sra         s0, s6, ra
                  auipc       zero, 302122
                  srli        t1, sp, 5
                  ori         a0, a1, -1587
                  bgeu        t0, t4, 618f
                  xori        a1, a1, -1857
                  sub         tp, a3, s8
                  sltiu       s3, s1, -199
                  srl         t1, gp, ra
                  sltu        tp, tp, s8
                  ori         gp, a2, -1952
                  bge         zero, s0, 616f
                  bgeu        s8, a6, 627f
                  srli        zero, s3, 9
611:              auipc       t3, 767060
                  bgeu        a0, s2, 626f
                  slt         a2, s11, s7
                  nop
                  add         t1, a5, t1
616:              sltiu       sp, gp, 452
                  and         tp, a0, s6
618:              beq         s5, s1, 638f
                  bltu        s9, tp, 632f
                  slt         t4, tp, gp
                  sub         zero, s0, ra
                  ori         s8, a5, -231
                  xori        zero, s7, -1637
                  auipc       zero, 633595
                  lui         zero, 546067
626:              bge         a3, a6, 633f
627:              slli        zero, s2, 31
                  nop
                  slti        t4, s3, -850
                  sltu        s2, s3, s1
                  bne         s4, t4, 642f
632:              slti        t0, t3, 1342
633:              auipc       zero, 939478
                  slti        sp, s10, -865
                  bge         sp, zero, 650f
                  beq         s2, s5, 646f
                  andi        s1, s10, -2044
638:              andi        t2, gp, 633
                  auipc       t1, 254877
                  srli        zero, s11, 1
                  slti        s1, a7, 983
642:              slti        t3, t3, 864
                  bgeu        t6, s10, 658f
                  xor         s6, s1, s8
                  blt         a7, s5, 665f
646:              ori         s0, a2, -1953
                  blt         s3, sp, 665f
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_1
                  li         a2, 0x0
                  li         s10, 0x0
                  li         s9, 0x0
                  li         s8, 0x0
                  li         t3, 0x0
                  li         a0, 0x1
                  li         s0, 0x0
                  li         a1, 0x13727a89
                  li         s3, 0x1
                  nop
                  nop
                  sub         a1, t6, s4
                  addi        s1, a7, -671
                  add         zero, t5, s10
                  addi        zero, a4, -1124
                  nop
                  lui         ra, 512258
                  nop
                  sub         a6, s7, a2
                  sub         a4, a3, s11
                  add         zero, s7, a3
                  addi        s3, s11, 70
                  nop
                  add         t1, s3, ra
                  lui         t2, 248547
                  add         zero, s6, t5
                  add         a3, s6, gp
                  lui         zero, 444978
                  sub         t2, a5, s0 #end riscv_int_numeric_corner_stream_1
                  beq         s3, t2, 654f
                  or          s2, gp, t0
650:              bne         t2, ra, 652f
                  or          a1, t2, t2
652:              sra         s7, s3, a3
                  bltu        a1, a4, 672f
654:              ori         t3, a0, 168
                  sra         sp, s0, sp
                  slti        sp, t6, 850
                  slti        t4, a4, 976
658:              auipc       a3, 928809
                  or          zero, s3, t0
                  xor         t0, s4, t5
                  or          t3, t0, t2
                  bge         a7, s8, 672f
                  slt         a0, t1, s2
                  blt         s5, t2, 666f
665:              auipc       t1, 377983
666:              ori         ra, s4, -1745
                  addi        zero, t4, 928
                  auipc       t2, 114619
                  bge         ra, s7, 676f
                  nop
                  srli        s4, s6, 27
672:              addi        s0, zero, -161
                  addi        s5, s11, 1247
                  bgeu        t0, t5, 676f
                  lui         s5, 1021426
676:              bge         t2, s7, 690f
                  bltu        a6, s7, 695f
                  or          t4, t3, s7
                  sltu        s3, t1, t1
                  xori        sp, a4, -1819
                  sub         t0, s0, sp
                  blt         s2, s3, 700f
                  beq         s11, s10, 703f
                  bge         s7, s9, 701f
                  auipc       a1, 182190
                  beq         t5, s0, 689f
                  srai        s10, s3, 21
                  sltu        a5, s7, s8
689:              sub         zero, a2, a0
690:              bge         tp, t3, 705f
                  and         a2, t3, a5
                  add         s6, s3, a1
                  blt         s0, a3, 694f
694:              sra         s5, sp, a2
695:              slli        s8, s9, 28
                  xori        tp, a5, 1917
                  or          zero, s7, a0
                  bltu        s5, s10, 716f
                  nop
700:              slli        zero, a7, 23
701:              and         gp, t5, ra
                  bltu        s3, a0, 713f
703:              sra         s3, s6, s9
                  sll         t2, s6, t6
705:              sub         ra, s9, a6
                  srl         a5, a3, t6
                  sra         a0, t6, s10
                  bne         a6, s8, 712f
                  sll         a7, zero, a1
                  beq         s8, t0, 715f
                  bne         a2, a2, 722f
712:              srai        t0, tp, 28
713:              ori         t3, s9, -1012
                  sltiu       ra, zero, -1592
715:              lui         t4, 789164
716:              and         s0, s1, a6
                  lui         a5, 295750
                  bne         t5, a5, 720f
                  sra         zero, t2, t2
720:              sra         gp, s8, a6
                  sltu        a4, s8, a0
722:              nop
                  srli        s6, t2, 24
                  srl         s1, a5, t0
                  xori        zero, ra, -1450
                  bne         tp, t0, 741f
                  bge         t4, a3, 730f
                  auipc       a0, 393978
                  nop
730:              bltu        a3, a5, 743f
                  sll         s9, s4, sp
                  addi        s1, a3, -1396
                  sll         t3, t2, a4
                  sra         tp, s9, a0
                  auipc       s10, 942227
                  bgeu        s9, t0, 756f
                  and         zero, s4, s2
                  ori         a5, a2, 808
                  sub         t2, s7, a3
                  nop
741:              srli        ra, sp, 20
                  addi        a3, t3, 844
743:              srl         t1, tp, s6
                  blt         s4, a7, 752f
                  sltiu       s10, a7, 1509
                  or          s8, a1, s5
                  srli        s1, s1, 30
                  bltu        s3, t6, 764f
                  auipc       s2, 449570
                  and         t4, a4, a0
                  sltiu       s4, s10, -1574
752:              andi        sp, t2, 439
                  bltu        s5, tp, 759f
                  sra         s6, t6, a3
                  blt         t3, t2, 756f
756:              addi        t4, t6, 650
                  sra         a6, s0, a4
                  nop
759:              xori        t1, a1, -1007
                  bne         s3, t1, 775f
                  blt         gp, a6, 763f
                  srli        zero, s6, 18
763:              slti        zero, a0, 1134
764:              bne         gp, gp, 784f
                  sub         t2, t6, zero
                  and         gp, s8, zero
                  sub         a7, a3, a3
                  add         t0, a7, t4
                  blt         s6, s11, 784f
                  auipc       a7, 842564
                  add         a0, s9, a4
                  xor         a0, zero, t2
                  sltu        zero, s2, zero
                  add         tp, ra, a0
775:              slti        gp, s4, 510
                  or          a6, sp, s3
                  bgeu        a5, t1, 780f
                  bltu        s6, a6, 779f
779:              srai        s1, a4, 2
780:              and         s8, sp, t6
                  sub         a6, a3, s0
                  lui         s0, 910143
                  or          gp, a5, t3
784:              slt         tp, t0, s6
                  xori        s3, zero, 344
                  bge         s8, a3, 788f
                  sltu        s5, t4, tp
788:              ori         a1, a4, 429
                  srl         zero, s3, s0
                  addi        t0, tp, -551
                  ori         s8, s2, 703
                  bge         s5, t5, 802f
                  bne         s0, s3, 810f
                  auipc       a7, 649298
                  andi        s4, s9, 252
                  bne         sp, gp, 814f
                  sub         s6, ra, t1
                  xori        a0, a5, -735
                  sub         t4, s6, s0
                  sub         tp, t4, s9
                  beq         a5, a4, 812f
802:              srli        ra, s1, 14
                  srai        t1, gp, 19
                  xor         s8, s11, t2
                  slti        t2, a6, -189
                  slt         s2, s0, t1
                  bge         t3, a7, 826f
                  srai        zero, s2, 5
                  blt         s3, gp, 827f
810:              andi        t0, s0, 1521
                  bne         s5, s7, 813f
812:              sltu        a7, s9, a6
813:              slli        s0, s3, 15
814:              add         t2, a4, s1
                  sub         t2, tp, a4
                  slti        a7, s8, 93
                  srli        s0, s6, 16
                  bne         a2, a6, 833f
                  srl         t2, s1, s9
                  sll         s4, s8, s9
                  sub         s5, a5, s2
                  blt         t4, a5, 828f
                  andi        a1, t5, -526
                  bgeu        tp, gp, 828f
                  lui         gp, 784963
826:              ori         t3, a2, 1742
827:              xor         a3, tp, t3
828:              srai        a0, a1, 19
                  bltu        s2, t0, 831f
                  bne         a5, s3, 837f
831:              bne         t6, a1, 834f
                  auipc       gp, 170365
833:              xori        zero, t0, -379
834:              srai        s4, s9, 24
                  and         ra, t0, s5
                  sll         a0, s1, t6
837:              srli        s9, s0, 4
                  bltu        s8, t2, 843f
                  sll         s1, t5, a4
                  and         s9, t6, s10
                  andi        t1, a6, -776
                  bne         s11, t3, 860f
843:              andi        s1, a7, 1597
                  bltu        a0, s4, 859f
                  sll         s1, a2, a1
                  slti        s6, s7, 174
                  or          s9, a6, gp
                  sub         s0, t5, s2
                  srli        s6, a3, 5
                  slt         s3, s1, s3
                  bgeu        sp, t4, 864f
                  srai        zero, t3, 0
                  lui         s0, 710199
                  andi        s2, s8, 673
                  bge         tp, s1, 857f
                  bne         t4, t2, 867f
857:              or          a5, t1, s6
                  slt         s5, gp, s7
859:              or          a4, t6, s10
860:              sub         a0, s11, a6
                  bgeu        t6, t3, 869f
                  andi        zero, s7, -1546
                  sll         s7, zero, t3
864:              blt         tp, s5, 880f
                  auipc       s9, 383516
                  auipc       s9, 918853
867:              xori        a4, a7, -1028
                  slli        s1, t3, 16
869:              or          zero, s3, t6
                  sub         a2, s7, a1
                  slti        t0, t1, -1472
                  auipc       t3, 647547
                  sub         t0, a5, a5
                  xori        a1, s4, -1637
                  slli        s5, s1, 12
                  beq         s4, s10, 878f
                  bge         a1, tp, 891f
878:              andi        a0, t1, 1589
                  addi        t2, a7, 1201
880:              ori         s3, sp, 1865
                  beq         s5, ra, 882f
882:              slli        a3, s3, 1
                  sra         tp, a0, s5
                  srai        gp, t1, 26
                  ori         t4, ra, 1264
                  sltu        zero, t5, s2
                  sll         a6, a2, gp
                  bge         t3, s0, 908f
                  srai        s9, s3, 30
                  sub         a2, a1, s4
891:              bgeu        ra, s0, 893f
                  xor         t2, ra, t3
893:              sltu        sp, a7, s4
                  auipc       s0, 368057
                  xor         ra, ra, a5
                  srli        gp, s6, 20
                  sltu        a0, s2, a4
                  xori        s4, tp, 1850
                  slti        t3, s2, 700
                  sltu        tp, s1, s1
                  blt         s2, a1, 918f
                  or          a6, s0, t1
                  addi        s10, t4, 1141
                  srli        a6, s11, 21
                  sll         s3, a2, t0
                  blt         a3, t3, 920f
                  srli        a6, s6, 16
908:              add         a3, s6, ra
                  nop
                  nop
                  and         s1, t1, s5
                  add         a3, s3, s7
                  andi        s10, s4, 673
                  and         s6, s7, t6
                  ori         a0, ra, 958
                  srai        s10, t2, 11
                  add         a7, s9, zero
918:              nop
                  xor         sp, a0, s9
920:              addi        gp, zero, 1852
                  or          t4, s7, a0
                  xori        a5, s0, 1563
                  xori        ra, a1, -621
                  bgeu        s8, a1, 926f
                  and         s2, s10, sp
926:              andi        t1, ra, 1640
                  lui         s4, 478250
                  slti        s8, t5, -1282
                  auipc       zero, 355516
                  sltiu       s9, a3, -290
                  bge         s7, s7, 944f
                  nop
                  ori         s1, s7, 155
                  sltiu       s4, s0, 875
                  sra         ra, ra, s9
                  addi        t3, a1, 1894
                  beq         a0, s11, 948f
                  and         tp, a1, s1
                  nop
                  xori        t2, s1, -1999
                  sll         s7, t5, zero
                  bgeu        t2, s0, 960f
                  lui         t3, 538645
944:              slti        s6, zero, -1455
                  bltu        s10, a6, 955f
                  srai        s0, t0, 23
                  ori         s7, s5, 1367
948:              sra         s5, s8, t3
                  addi        t0, s11, -1479
                  bltu        t6, s5, 965f
                  ori         t2, a1, 1918
                  and         s8, s3, t1
                  sub         gp, t4, ra
                  xori        a7, tp, -149
955:              srai        s1, a0, 27
                  bgeu        s0, a7, 958f
                  sltu        zero, s5, s8
958:              srai        s6, a4, 23
                  srli        s1, ra, 3
960:              lui         t0, 966709
                  ori         s7, gp, 895
                  sub         tp, s2, a2
                  or          a5, s7, a4
                  lui         s10, 431873
965:              bltu        a6, s4, 983f
                  bne         a6, t3, 969f
                  sub         s3, ra, gp
                  bne         s11, s7, 970f
969:              slti        gp, s11, -1898
970:              ori         a4, ra, -545
                  and         a2, zero, s5
                  sra         t2, a7, t4
                  addi        a3, a3, 848
                  or          gp, a6, s11
                  addi        zero, gp, 1614
                  xori        t0, t4, -1354
                  slt         a5, s3, t6
                  or          zero, t2, t1
                  xori        s8, a1, 1778
                  srli        a3, t1, 6
                  slli        a6, t2, 12
                  srai        s8, s5, 4
983:              sltu        a3, a0, a6
                  bltu        zero, s0, 986f
                  and         sp, t6, s10
986:              or          s6, s3, a5
                  sltu        a0, a0, a1
                  lui         s9, 246165
                  addi        ra, a3, -99
                  lui         sp, 793879
                  sub         s6, s3, t4
                  xori        s3, s3, 1082
                  sltiu       a7, a4, -1844
                  nop
                  lui         t0, 1034865
                  addi        t2, a2, 1108
                  blt         s6, a5, 1000f
                  srl         s4, s11, t1
                  blt         a3, t0, 1018f
1000:             xor         a7, a3, tp
                  and         s3, s2, a4
                  bltu        s0, s3, 1013f
                  slt         a5, t2, sp
                  sll         t3, s10, s1
                  srai        s10, s1, 26
                  srl         s8, sp, sp
                  srli        a3, t3, 7
                  lui         s6, 451825
                  andi        a6, s0, -1076
                  beq         a6, tp, 1018f
                  slt         zero, t1, sp
                  addi        ra, t6, -1246
1013:             and         s2, s9, t0
                  sub         s5, s4, t2
                  beq         t0, s0, 1030f
                  slli        t0, s6, 9
                  sub         s1, ra, a0
1018:             sltiu       s7, zero, -1154
                  sll         s2, a5, gp
                  andi        a7, s0, -932
                  sub         ra, a4, t1
                  addi        a5, a7, -1762
                  bgeu        t3, s0, 1038f
                  slti        s3, a1, 1103
                  sll         a6, a3, t3
                  blt         s9, t6, 1031f
                  sra         t1, s5, a5
                  slli        s8, s1, 17
                  slt         s10, t6, t2
1030:             sra         zero, ra, a4
1031:             bltu        a3, t0, 1051f
                  bne         s11, s5, 1052f
                  andi        a2, t0, 689
                  lui         s10, 3259
                  lui         a0, 197719
                  lui         a5, 985825
                  xor         t1, s1, t4
1038:             srl         s9, s6, a1
                  sltiu       t4, a3, -1041
                  sltu        t2, t0, t3
                  ori         zero, sp, -67
                  sltu        s3, s10, s6
                  add         a3, t6, ra
                  or          s10, zero, t1
                  slli        s4, a3, 19
                  bgeu        t3, s5, 1064f
                  slli        t4, t6, 20
                  xori        a5, zero, -1249
                  sll         t0, a0, t3
                  ori         ra, a6, -1764
1051:             add         s7, a5, s2
1052:             bgeu        s1, zero, 1058f
                  sltiu       s0, ra, 624
                  auipc       s7, 742566
                  nop
                  lui         sp, 179830
                  lui         s6, 596466
1058:             blt         s6, s0, 1074f
                  sra         a7, s4, s0
                  bltu        s0, s7, 1064f
                  and         a4, t2, a7
                  slti        zero, t4, 740
                  add         zero, gp, tp
1064:             and         a2, a1, s4
                  slti        s7, s11, -1329
                  beq         tp, s10, 1067f
1067:             nop
                  beq         s2, a2, 1069f
1069:             srli        s7, s5, 27
                  addi        zero, a3, 1218
                  xor         s0, a4, t6
                  xori        s7, t0, -728
                  srli        zero, a6, 12
1074:             sltu        zero, a2, s11
                  slt         t4, tp, zero
                  or          ra, s10, t1
                  sll         zero, s8, a2
                  xor         a7, t0, zero
                  blt         s5, sp, 1086f
                  or          a0, t3, a4
                  sra         a0, a7, s6
                  addi        a1, t1, 226
                  bge         s7, s4, 1099f
                  sll         t2, s5, s10
                  blt         s5, a4, 1092f
1086:             bgeu        a2, s3, 1099f
                  beq         s4, s3, 1102f
                  sltiu       tp, a7, 529
                  bne         t2, s6, 1104f
                  lui         s4, 866308
                  srli        t3, s8, 15
1092:             andi        t3, s11, 1847
                  sub         ra, a5, s4
                  xor         t0, s2, a2
                  auipc       sp, 921653
                  addi        s6, s11, 42
                  and         s6, s0, t6
                  add         s2, s8, t3
1099:             nop
                  sub         a1, a3, s2
                  sub         zero, s9, a6
1102:             sll         s4, t6, sp
                  and         a6, gp, a5
1104:             sll         a3, s10, t2
                  sltiu       a6, t5, -1871
                  bge         s8, s2, 1126f
                  sra         sp, t3, a1
                  srli        s8, s3, 26
                  xori        t4, a6, 532
                  srl         a3, s6, s2
                  sll         zero, s3, t1
                  sltu        s3, s7, a4
                  sll         t4, s5, zero
                  bgeu        s11, gp, 1115f
1115:             xor         gp, t1, t6
                  sltu        zero, s5, zero
                  bne         s2, zero, 1119f
                  xori        a5, s10, -686
1119:             bne         s2, gp, 1137f
                  sltiu       a2, a4, -590
                  or          t0, s3, s10
                  addi        s7, s11, -1970
                  nop
                  beq         zero, a6, 1135f
                  auipc       t1, 593131
1126:             bne         ra, a4, 1136f
                  beq         s5, t6, 1144f
                  addi        s9, s11, -385
                  bltu        a1, s9, 1149f
                  bne         a3, a2, 1141f
                  or          sp, a6, tp
                  bgeu        s11, a3, 1134f
                  beq         a1, s1, 1141f
1134:             srai        a0, s8, 0
1135:             add         zero, a7, s6
1136:             addi        s10, t1, 1816
1137:             slli        a4, t0, 13
                  bge         s7, t5, 1141f
                  bne         s1, a5, 1157f
                  ori         ra, t1, 368
1141:             sra         s0, s4, s10
                  sll         s9, s2, a6
                  auipc       s2, 145451
1144:             and         a2, gp, t0
                  srli        a2, t5, 25
                  addi        tp, s4, -550
                  ori         s7, t5, -888
                  bne         a1, s3, 1151f
1149:             sltiu       a0, s6, -1547
                  ori         a7, a0, -847
1151:             srli        s7, s11, 0
                  ori         sp, s3, 224
                  slli        t2, t1, 5
                  xori        zero, a2, 759
                  blt         t1, gp, 1163f
                  and         s1, a6, t6
1157:             xor         t1, a4, t0
                  or          a6, a7, s9
                  srli        a3, sp, 12
                  or          a1, a5, tp
                  bgeu        s7, s6, 1163f
                  ori         zero, t6, 171
1163:             slti        s2, a6, -1718
                  la x31, test_done
                  jalr x0, x31, 0
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
.word 0x3a9f3d47, 0x11e9e98a, 0x34b65e2f, 0x34b3bf18, 0xaeedbd62, 0x812264e7, 0xd55ca05a, 0xc5f0889c
.word 0x65776861, 0xe134c795, 0x20262514, 0x0b343b0a, 0xba3994dd, 0x3cd1e071, 0x86d0b24a, 0x2e9e05b6
.word 0xad0120ac, 0xc9d09dd8, 0xaddb8b64, 0x0c0c9526, 0x571b7023, 0x0f84348a, 0x91e5aaaa, 0xd9746463
.word 0x66a91024, 0x64c8904b, 0x25819704, 0x35425bb7, 0x2f5d78fe, 0xeb48f937, 0x65b960f7, 0xb8c48a66
.word 0x6725e98d, 0x848c4e3e, 0x1e85a688, 0x1ab74156, 0xaf7c6955, 0x635089b7, 0x31eb1a87, 0x1a334d97
.word 0xb5e8dc29, 0x6967f433, 0x59a764e0, 0x8fb27502, 0xbea98937, 0x8d0f945e, 0xde80912d, 0x9865c3cd
.word 0x8bd65752, 0x714956a0, 0x32863907, 0x9b057dab, 0x44e8fee0, 0x21a254b0, 0xc071d67b, 0xdd4b968f
.word 0x1fa4fa6c, 0x448736e8, 0xbd08fc6a, 0xc14b1112, 0x68c9ebca, 0x2a17cb0a, 0xfe3f09bf, 0xfa283117
.word 0x8f02318f, 0x30d6eb3b, 0xf211ec37, 0x77cb68bc, 0x79dda88e, 0xc7a74334, 0x29914eba, 0x17c36049
.word 0x6c30d49c, 0x2ac3cf11, 0xfd013fc1, 0x9d2a69a4, 0x4c9790f3, 0x3fd5d786, 0xce38672a, 0x696ee1b5
.word 0x648f925a, 0x76a7823f, 0xe79d66b1, 0x36aca54c, 0xd00fc7e5, 0x5e9f75c1, 0x7150577c, 0x845c9e9a
.word 0xa06fbb6b, 0xad314fae, 0x23fbc9a2, 0x514c5c0c, 0x0fa792f5, 0x900bfb30, 0x36131b77, 0x12cda71e
.word 0x24d2d9b4, 0x3d71703f, 0x683d5665, 0x41d9166c, 0x70a731c8, 0x08088719, 0x69150905, 0x1e4f69bc
.word 0x712365d4, 0x14a64ff4, 0x992b29df, 0xe80d606b, 0x70aca4a3, 0x0caf584b, 0x6b060efa, 0xd239b9d8
.word 0xda19deae, 0x3f46bcc6, 0xb9fdbf7c, 0x0341b734, 0x8b920ab8, 0x5f4fe1da, 0xf0433a01, 0x2aceb9a8
.word 0xb463810e, 0xe3213b7a, 0xc6105f34, 0xefdac9a3, 0x57330adb, 0x07d1d583, 0x5b57df62, 0x63fb661c
.word 0xc29351bb, 0xfd6fdfd9, 0x59ecc8fc, 0x07c27de8, 0xc3de8985, 0xf3ae8e4b, 0x71099243, 0x7318b8fc
.word 0x246cabed, 0x48e60f39, 0xce7e1bfa, 0x748d2729, 0xe0ec3b10, 0x0813d7a3, 0x1d45e468, 0x7524f4de
.word 0xa1f2eb2a, 0xcd82a00d, 0x75d36af8, 0xd551107b, 0xae3e6eb5, 0x378afb18, 0x297e68fd, 0x0fe03275
.word 0x9c267557, 0xdf309794, 0xbb997eca, 0x1bb135c7, 0x1b03662c, 0xb312b773, 0x98bad583, 0x47068137
.word 0xe092bbd6, 0x9cdccde8, 0xcd3808cb, 0x2aa77f2d, 0xb9b195ea, 0x38baa98c, 0x94f015ab, 0x0beb8e69
.word 0xcbfea4e2, 0xe48ef439, 0x99a0f225, 0x4b777039, 0x9f24d357, 0x85d881fb, 0x3562b849, 0x35449c3e
.word 0xe5a3a088, 0x9219cdbd, 0xed96095a, 0x9ba7d69f, 0x9989d56f, 0x624b6b7f, 0xe0646042, 0xbf356e77
.word 0x282464f2, 0x988e5660, 0x7dd05b0b, 0x0b6b7b4d, 0x38966995, 0xcc268144, 0xfddb4590, 0x7b53ceb4
.word 0x24a3f5d1, 0xb171381a, 0xfcf552d6, 0xba8adcc4, 0xf9ad8551, 0x00384916, 0x6f23a8ce, 0x27756065
.word 0x7a07f50f, 0x530616fd, 0x2c222126, 0x35c44b67, 0x7737245f, 0x1b18053c, 0x942d194f, 0xb26e69ac
.word 0xaf7af34c, 0x47681744, 0xed3b99ec, 0x420963d3, 0x852af8ae, 0xd3ae40e1, 0x00975333, 0xc5c06399
.word 0x73717b2e, 0x22278333, 0xf68abb49, 0xeb47a8aa, 0xdbc41c8f, 0xa65ea21b, 0x4e771ce8, 0xe276dc8f
.word 0xa08f3b71, 0x9de988ed, 0xc69931ab, 0x061609e0, 0x4686386d, 0x0c4ddf9d, 0x3458dadc, 0xf783c6d9
.word 0xd0a10caf, 0x8499ba8c, 0xe7540d8f, 0x529c5044, 0x6e3abdf0, 0xe44bf4fe, 0x657f4241, 0x1b793e42
.word 0x75572d0e, 0xc7265b9f, 0xf4c9b0af, 0xfbc696b0, 0x8b4309e2, 0x21cbb0c6, 0xbb453d65, 0x48108e84
.word 0xccc3cda1, 0x6acafa2b, 0xf9025d3a, 0x92c63434, 0x20638641, 0x5160e184, 0x4c383f63, 0x850e550a
.word 0x465b3990, 0x594229b4, 0xc6e60675, 0x789a627e, 0xc65e5f8b, 0xc477bda2, 0xcc270d57, 0x0e7192f1
.word 0x6947ab56, 0xe45b455a, 0x8af5bc2c, 0x72abab6d, 0xb570bbad, 0xd37e6a43, 0xb8c28ed0, 0x470f8e72
.word 0xab88d669, 0xc16f66c7, 0xc3d04133, 0xdeae9751, 0xbcb7d4ee, 0x7b454f6c, 0x58d6645d, 0x0434205d
.word 0x7be7cb9f, 0x1c0f026b, 0xfefbe75b, 0xfb3ba3f8, 0x06f84d31, 0xe8e0caec, 0xfb17c956, 0x9aaaaa23
.word 0x9bcbb179, 0x66733489, 0x2c738947, 0xf84cbbd3, 0xe818983d, 0xe0c16c7a, 0x554cdf17, 0x219260e9
.word 0xaeb5d700, 0x5560adbe, 0x4f21adf6, 0x55aebb4b, 0x5e255342, 0x45d8d670, 0x8e9fe345, 0xcb40dbea
.word 0x43c0b65b, 0x3f9f0bdd, 0x18d58079, 0xd4709e4e, 0x9d2519b8, 0xcc99cd18, 0x975af992, 0xf229a706
.word 0xd1395424, 0x0048cacd, 0xb4bb7dc6, 0xbe3102e1, 0xd9f0b03c, 0x0f96490f, 0x58242280, 0x11bf3a58
.word 0x381e030b, 0x0156899e, 0x1d124476, 0x9e06937f, 0x18ec0658, 0x649bb93e, 0xe154c443, 0xdfb368a4
.word 0x09f7255d, 0x8167814f, 0x44f9ab01, 0x5091e4b2, 0x981fbc5d, 0x34f39116, 0x3b620489, 0xae7fef3e
.word 0xd9ac1374, 0xf0d17da7, 0xb979b0a1, 0x6fc65f18, 0x587fd0f3, 0x295c3907, 0x6929bccb, 0x30f69a3a
.word 0x2e29732e, 0xc72e09eb, 0xb53f3ec2, 0x3bb36001, 0xbeb38a55, 0xfba04ac7, 0x1b4cd5c1, 0xd1f51d77
.word 0xb276f4ae, 0x2a5e37c0, 0x0e67b37b, 0x57c4b842, 0x89a9597e, 0xcdca5517, 0x78fe5706, 0x28931933
.word 0x94b18571, 0x52c70692, 0xfc70778b, 0xa6ed8723, 0xcce6d0e6, 0x60bd344f, 0xfc2c6f17, 0x6c44a2a6
.word 0xec6cdffc, 0xa7600d2a, 0xda88fbd2, 0xb0b9091b, 0xf2e1caec, 0x7fd3b625, 0xd44f6a64, 0x18131e64
.word 0xe7411102, 0xeb598e9b, 0x048f397e, 0xa00008f9, 0x2d71bd45, 0x34462392, 0xe92886c3, 0x9fee5f0b
.word 0x67459d96, 0x32fbd4fe, 0x5b868b6e, 0xbc5b5525, 0x1d88a51d, 0xee720eb6, 0xeda0d70c, 0x9d1d12b6
.word 0x9510fa20, 0xe89b2ee3, 0xda52dec9, 0xc66fe184, 0x45d7cc3f, 0xa4160dae, 0x00a4616f, 0x3bc8a066
.word 0x48eefe29, 0xc64fd700, 0x9f013de5, 0xbe08c120, 0xb7757b9c, 0xb584abd5, 0xdbd3fc0f, 0x7285ad1e
.word 0x12ba7a71, 0xe8505353, 0xf98a3e1c, 0x7a2b4dd0, 0x25b01e7d, 0xc1a688b2, 0xe934fc7c, 0x5c220f0b
.word 0x1f9812d2, 0x095db699, 0xce2262b0, 0x4a31638e, 0xee903b77, 0xa85ea6c1, 0xaacd566c, 0xc5eb80f4
.word 0x74fb1c8b, 0x3b0a2b61, 0x59784b8d, 0x38297ac2, 0x6ac741db, 0x356c6e9d, 0x17ebbb29, 0x11e4580e
.word 0x115cfe10, 0xf4d47072, 0x4d32f38a, 0xb2c21f53, 0x6c090f88, 0xa8bdc1b9, 0xe196afed, 0x941a8f6f
.word 0x9d1be3cc, 0xe8c7e72b, 0x3f760ca3, 0xb8741551, 0xca32a0f0, 0x25583a32, 0x095b4328, 0x6bf8e31a
.word 0x6d50e189, 0xbcafa3dd, 0xb545f164, 0x3815f6bb, 0x41902c87, 0xf407beda, 0x17342ad6, 0xe6cd9c21
.word 0x373d776c, 0x63b3b9c1, 0x028816a3, 0x89069841, 0xa3d29cdb, 0xa4375f07, 0xb132a3e0, 0xb4f6c4b5
.word 0xf215c413, 0xece4761c, 0xf5e09ba7, 0x3a514938, 0xd834c221, 0xc5453242, 0xd383325b, 0x6e0a3207
.word 0x1a6a4d5d, 0x5ac2b27e, 0x228182c8, 0xcf50c14a, 0x70194998, 0x955c36fe, 0x2af9b501, 0x2a604ae6
.word 0xcc8d5360, 0x58060103, 0x226760eb, 0xf006ef78, 0x9a0e40b5, 0x09a3f58c, 0x67c00dc5, 0x7d4cafa5
.word 0xe3e9746e, 0x9cbba5c9, 0xbb77bb23, 0x8c79c26f, 0x79687268, 0xb2b2e543, 0x6e1ff2ed, 0xd7333287
.word 0x166c0363, 0xc7de5341, 0x660d5c30, 0xbaa44d2c, 0xef8d797e, 0xe36b101a, 0x0fca2d55, 0x2b24d558
.word 0x352ed35b, 0x4db17ca9, 0x21554f8c, 0x4e5a26c5, 0xb8e595b8, 0xd85b6f71, 0xe8b45bca, 0x23688a7c
.word 0x63bdec31, 0x54ce205c, 0x79b6d217, 0x880f88f7, 0xa52a623a, 0x3fa124a3, 0x26b241d7, 0xcd0b3789
.word 0x916af6d7, 0x97b256f3, 0xf73b2d34, 0x3c8a4723, 0x10ec7b1a, 0x892c6dce, 0xc286c12c, 0x1bc346bb
.word 0xe54a8e3c, 0x5c6d514b, 0x468e96b8, 0xf4f247d4, 0x2c3eeb3c, 0x4022f7f7, 0xaae64e3e, 0xf47d2592
.word 0x8bb0536d, 0x01d170c1, 0x45e65b10, 0x2b7d9eb5, 0x095f8b8f, 0xc91f86ae, 0x54680406, 0x0a06ef8c
.word 0x71bae27b, 0x542ab8c8, 0x4f117a03, 0x2b46c46c, 0xc4ea3e81, 0x92ab8b60, 0x244be024, 0xf97a4be2
.word 0x0878a176, 0x8c78c159, 0x5042ebfd, 0x8f04d7d5, 0xac44fcd5, 0x74217ea4, 0xa49186fe, 0x8fe8f323
.word 0x0e7424aa, 0x2b610c5f, 0xfd3beafd, 0x1b5a3e4b, 0x27d25267, 0xaf4c236d, 0x1208be09, 0x08af4ef7
.word 0x698fb229, 0x22063e94, 0xb8d6958d, 0x4bfccf51, 0x6cbaa387, 0x31d06a30, 0xed08d1b5, 0x4dd0fc1e
.word 0x9f7dd8b0, 0x7ebfc752, 0xa45cc24c, 0x8c86810e, 0x59970d5e, 0x6b7728b6, 0x1a4b0181, 0x4bb2cf15
.word 0x2344d68c, 0x7e293ec2, 0xc6040821, 0x2a513bda, 0xb387cf4b, 0xda1d2ea4, 0xf87a7f48, 0x14377d59
.word 0xc7047618, 0x21e08d12, 0x4cee1cd3, 0x06b228ef, 0xc5c76b7a, 0x769eb1cc, 0x7e90c96b, 0xe57e23e3
.word 0x90bccb05, 0xbbaaccc9, 0x7f1d9359, 0xd0d688e9, 0x5ba58655, 0x9a16ac4e, 0xc6dce0d4, 0x203dc7ab
.word 0x7fa9319d, 0x9bd93b89, 0xe5b2486b, 0xa263d4e6, 0x549efa2c, 0xfb5d0f3b, 0x83230a11, 0x88027dc5
.word 0x13ebcb41, 0x7307054e, 0xf6392fd1, 0xce801378, 0xa6d0bc90, 0x38c25189, 0x481d5e55, 0xa77fbf69
.word 0x9812b4c8, 0xd5852908, 0xb53a6db6, 0x34c0711f, 0x029a2235, 0xd6f6ca3c, 0xca2af95e, 0x5c11e5c1
.word 0x5db51825, 0x502a501d, 0xb8d46924, 0x41a25fd3, 0xf544d242, 0x6ffda16b, 0xc02c6671, 0xdec6f34a
.word 0xf661daef, 0x814fbe89, 0xc5aeb427, 0xfdd288d4, 0x308ae6a3, 0x60725f07, 0x8bc3ce5e, 0xa862f9ba
.word 0xcc725998, 0x55d2f2d8, 0xea608ac5, 0x96bc8cd2, 0x1492b7ce, 0xf8a0057b, 0xf82110bc, 0xcd2b9fe9
.word 0xf21532d7, 0xc1d7c069, 0x54aa844f, 0x929ef604, 0x1d5f025b, 0x4ff36ef6, 0x81feb3fd, 0xd18adb87
.word 0xba8b3642, 0xef8812e7, 0x1307234a, 0x4684baef, 0x85b52711, 0x1fee1284, 0x55366d54, 0x3eda1475
.word 0x98d8f47a, 0xc870b060, 0xacc1884b, 0xc6cb3520, 0x3d0fe538, 0xcdcfdfdc, 0xcf467b0c, 0xfa14350b
.word 0x855bf179, 0xd40c2897, 0x42a30449, 0x1ef5cf6a, 0x045215a7, 0x66682b03, 0x5f96cb30, 0x21b83743
.word 0x9f5c0827, 0xf4e119bd, 0x92ac3414, 0x159c724e, 0xc9231535, 0x31238461, 0xf9082f64, 0x94ab2822
.word 0x3e95d0cd, 0x24448cde, 0xd5bafb73, 0x0bea6774, 0x0670af3e, 0x96a95bda, 0xf5217050, 0xf9c9f1e1
.word 0x55b80ae6, 0xe132febb, 0x365741d5, 0x77070947, 0x53e5359e, 0x599a9561, 0x84408407, 0x4af520b1
.word 0xbceac469, 0x35429cb5, 0x5416abe0, 0xc0dc42e2, 0xde2e3c05, 0x35148322, 0xd44e73a9, 0x25c0d97d
.word 0x3b30b28f, 0x4b7568f1, 0xbf8de33e, 0x8f6750ef, 0x4e5dd9de, 0xdffae332, 0x34885128, 0x795a224c
.word 0x431c538d, 0x6f4acc10, 0xdfb70099, 0xb9f58aef, 0xda3d8ea5, 0xce7b393b, 0x434644ee, 0xf31d5ab3
.word 0x03d8eecb, 0x3b7b1952, 0x5945fe12, 0x4fc3c634, 0x7cb5e839, 0x4edda8c3, 0xd78ca2b1, 0xa3d1f78f
.word 0xeccd944d, 0x25e66aed, 0x4493cac6, 0x37f467e3, 0x614c195b, 0x08940719, 0xd2d53882, 0x453d23d0
.word 0xda77b493, 0xc358a67c, 0x5aa324c9, 0xb1492612, 0x676746fa, 0x83f092ed, 0x3b4633eb, 0xd76e170e
.word 0xa4f4355e, 0xd628f2eb, 0xfe4da2b5, 0xf8094dc8, 0x55c7928c, 0xcb06ea87, 0x28e38c5f, 0x0bdb3d13
.word 0xc2a8b7d0, 0xf9a67eba, 0xd28bb69c, 0xdd927b2c, 0x1629996e, 0x1cb469b4, 0xf175fda7, 0x1fcbacf0
.word 0x953fb385, 0xbe042c9c, 0xa53302cb, 0x10a6164b, 0x329aa5b7, 0x668ae9d0, 0xd229fa23, 0xc37d9306
.word 0x6dddb36c, 0x6758a9f2, 0xb4c39604, 0x8f818d08, 0xbb22920e, 0xbf60034b, 0xa6bba612, 0xc98ce595
.word 0xb8553578, 0x139753c1, 0x14363f5f, 0x34413aed, 0x699d827b, 0x7393aecf, 0x18374801, 0x65928ce8
.word 0xd99c5c72, 0x1d0f56e7, 0x02fb386f, 0x0d197f58, 0xb1b26309, 0xed6d629a, 0xc50764fd, 0xddcc9945
.word 0xc5573fa1, 0xd1dd88bb, 0x7ba05dba, 0x01c08015, 0x34f8e210, 0x30e6f915, 0x34f7e5a6, 0x9d694fb0
.word 0x32656c3c, 0x8c779f4a, 0x536363a7, 0xdf28beef, 0x6f490b34, 0x49b5e41a, 0x05d92b75, 0x60d05c15
.word 0x482bde7f, 0x3cc401e0, 0x3ea0a86f, 0xedd5fd81, 0x27111050, 0x52927ff3, 0x8acb7e3b, 0x81a3f50f
.word 0xf674dcd6, 0x0e34c10b, 0xa765fdc4, 0x63a163af, 0x38d6bec9, 0xc543ed90, 0x037d789f, 0xe90cd3e1
.word 0x6f5d3b70, 0x18421e1a, 0xe7b5cf45, 0x926bb239, 0xf810eacb, 0x83b2d414, 0x0381648c, 0xde31d990
.word 0xad476967, 0xc13ab70a, 0x5378ae7a, 0x12bbd79d, 0x5a3b01fa, 0x0f6412d9, 0xe7399c94, 0xe6a0a351
.word 0x0b554fcb, 0x0c019e34, 0x32a571e2, 0x9b054d2b, 0x9c9cb53b, 0x10a34313, 0x0a1b11c0, 0x68028455
.word 0x0eb614c1, 0x351a9e50, 0x813b1806, 0x49c9a794, 0x75d1bc13, 0x892d014e, 0x399c93db, 0xd3c11bf4
.word 0x69103c99, 0x545298e8, 0xca8d6373, 0xe9e3bba7, 0xdb356efa, 0x618bbe14, 0xb18abf2e, 0x4cfe8ba4
.word 0x76d133cd, 0xa5d4f5ed, 0x34f77d32, 0x367aad3c, 0xa737bfb7, 0x6cbce8fb, 0x57eab177, 0xf3afdc68
.word 0x13b38d49, 0xc3e9a975, 0x200e6dee, 0x5158e0d7, 0x831d1f2f, 0x08fe3067, 0x00d93e89, 0x6da43278
.word 0xcdd5bb27, 0x88e9be90, 0x4e7f3356, 0xa6f0e387, 0x21b15251, 0x081f38c1, 0x4a8e7fd4, 0x579125c2
.word 0x78b8fc58, 0x5dba1cb6, 0x27f7b793, 0x89837f8a, 0x4f999192, 0x84dfc0bd, 0xf5aef1a2, 0x211587e9
.word 0x02e25a30, 0x6901197b, 0x55ce4f0a, 0xddb53b88, 0xe90fd1c8, 0xad38742b, 0x64db122b, 0x3edd0544
.word 0x4af07564, 0x0240bfd6, 0x86307e7f, 0x3d04397f, 0x424be380, 0xe8ab5052, 0x50dffd99, 0x588c4a8f
.word 0xd4f2d045, 0xcac00072, 0x9ff6a9d2, 0x6dc599c2, 0xd3163447, 0x3809f979, 0x1535a082, 0xd948c0e0
.word 0x916f7fb2, 0x15232aeb, 0x6d1fe7c8, 0xb3192c1b, 0x2a786fb1, 0x09e5d9da, 0x778c59a5, 0xa3a451a0
.word 0x97e2b4ac, 0x789ee000, 0x0d4db88c, 0xe3c432bc, 0xb76bd688, 0xa47498ca, 0x9b7bec6e, 0x58f560f8
.word 0xbe8013c7, 0xd26963ee, 0xd960ebed, 0x22ed3d58, 0x9d374440, 0x760422fa, 0x1b590651, 0xfb78751b
.word 0xfe8a4f15, 0xf3c871ea, 0xc5e4b7c3, 0x578bc839, 0x98b76932, 0x85ab47f2, 0x4658d973, 0x6393348a
.word 0x92783225, 0xa34309a1, 0x57a30378, 0x323156c4, 0xbbfb2186, 0x3915c8d1, 0x87a00088, 0x85512c5c
.word 0x2981df07, 0x82d9d7c6, 0x4ac7e0b7, 0x360215cf, 0x2890e850, 0xd82fac51, 0x9aed2c45, 0xa8a4436a
.word 0xc8b869bb, 0xe5a32806, 0xeb95cab8, 0x7a1f22cf, 0x348a8544, 0x98601fe4, 0x66bfe092, 0x3b1ed10d
.word 0x4c226cef, 0x1096024e, 0x94639cd8, 0xf79ec442, 0x44511b6c, 0x8758f150, 0xdaef7e38, 0xcfef7520
.word 0x194484d7, 0xc7c81b2a, 0xc0bc720c, 0x57cb9673, 0x11da293b, 0xd09b7018, 0x80a11d4f, 0x2d9b710e
.word 0xcbd9c345, 0x6d6b92fb, 0x5a7f8a10, 0xe4533d9e, 0x30a4aecc, 0xf6332be7, 0xf9a4f63b, 0xfdfb1065
.word 0xe791948e, 0xc4470cec, 0xe35cb6c9, 0xfe50ba60, 0x16413741, 0x3fd0071a, 0x05320657, 0x8b18d4b0
.section .region_1,"aw",@progbits;
region_1:
.word 0x67c73928, 0x49620e34, 0xb50203bd, 0xc078c11a, 0xe01dbdae, 0xd687bd85, 0xce55f7d5, 0xb0d1bc53
.word 0xfa787580, 0x84f27568, 0x37039035, 0x4e470478, 0xb430cc29, 0x94f3b2b1, 0x4b607b38, 0x6520009c
.word 0xea5edc0a, 0x709ed8a1, 0x008281d1, 0x10da00f3, 0x0da4febb, 0xa55da765, 0x7eb83ff8, 0xc05b6035
.word 0x735da1ad, 0x2f8f93b4, 0xee43e825, 0x0dbc26c6, 0xbd15fd72, 0x75fa8b35, 0x31615300, 0xeeaeb41d
.word 0xcd5a21b9, 0x899c269e, 0x27de2f50, 0x963e125a, 0xf95c1933, 0x8cc1b164, 0x1f6cefdf, 0x30599e55
.word 0x8e119777, 0x3e3ff944, 0x8895e596, 0xdaa6c5f8, 0x1bbb4ab2, 0xe8ba819d, 0xc9ed7caa, 0xda4a82f2
.word 0x8068c857, 0x3e383abf, 0xeba036d2, 0x8bbb9ff6, 0xca99f8c5, 0x94f4a2f3, 0xdb4adf16, 0x519d5186
.word 0xb8f77ad7, 0x6841fb46, 0x0e37b1a6, 0xb8bd3e5d, 0x00311a78, 0x751c94ef, 0xcf9942af, 0xc666acef
.word 0x7490a194, 0x0b3e5efd, 0x0c6ee9a1, 0x76753493, 0x447c737a, 0x956d2f23, 0x25cec173, 0x448ef35f
.word 0x473bf7bf, 0x5ac130bd, 0x83d7f18e, 0xccbeacbb, 0x903dedd0, 0x0d261b39, 0x83fe759b, 0xded2e737
.word 0x5e1767d3, 0x9a614df7, 0x2c8126e9, 0x4e566f35, 0x3446e1bf, 0xd5c2bff5, 0x50ae6646, 0xd230fe87
.word 0x033117be, 0x6fd69ec5, 0x696bbfd7, 0x2f0ff101, 0xba0beabd, 0xb9a06935, 0xcd564b2a, 0xb0a2e5dd
.word 0x9be24bd1, 0x626f38a5, 0x513b9b49, 0x4309ab08, 0xcfbf6ebd, 0xfd172111, 0xa10051cf, 0x4aacc978
.word 0xb1bfbea0, 0xf79e2b47, 0x3fde7834, 0x1608cdea, 0xcc84efae, 0xa6bfd9ca, 0x6803434d, 0x64d37ba4
.word 0x2e94cf23, 0x9bec7c82, 0xc265aa22, 0x5fa25d67, 0x871e28b6, 0xbe07ddbf, 0xf158be0a, 0x46646cda
.word 0xfa25e0fb, 0xc2ad70e4, 0xc9173f01, 0x2af577f4, 0x1a9a66b6, 0x065e2bc6, 0x49f2e5c6, 0x03137d25
.word 0x74eb7aad, 0x8187eeda, 0xdfa8d9c1, 0xa24d7b4b, 0xfd076e62, 0xf7adacb8, 0x5d84bae1, 0x4d903391
.word 0x4673ba86, 0x6708e4a4, 0x9b180c7a, 0x84f489f3, 0x4bf37365, 0x7afb7417, 0x62380144, 0xcaf2ed91
.word 0x5d5fbef1, 0x1e523849, 0x0cdc0138, 0xd1f1fab3, 0x15d052f7, 0x553ac7b7, 0xbce2336c, 0xfbc17982
.word 0x5730b6c4, 0x06a823fe, 0xd2318242, 0x060947b2, 0x8e8cdedb, 0x8ad4dae1, 0x9a5a2379, 0x24103f11
.word 0x4a9a2b60, 0x99f2499a, 0xf192f64f, 0xef198448, 0xe0de4f80, 0xc9099fae, 0xa7458221, 0x4e1e8219
.word 0x3973e4ae, 0x8e9cc837, 0x6cbe756f, 0x7eb77a0c, 0x9092fef2, 0x92c92d10, 0x5d53d4e2, 0x7d7689c9
.word 0xe6a71780, 0x84848493, 0x135edc61, 0x3ec86208, 0xba5654cf, 0x2f137fe1, 0x2e765c76, 0xef14c0a0
.word 0x4f23007d, 0x3a163e23, 0x3df79184, 0x7b44604f, 0x34cba6ad, 0xd28d563e, 0xb5047f19, 0x2f5b3941
.word 0x03ad2b76, 0xeaccce19, 0xd8f692ab, 0x4191478f, 0x4b09a532, 0xebcc7e59, 0x3d97098d, 0x6c829f5f
.word 0x507835a4, 0x8e91edd1, 0x08ec48b0, 0xf2fa04be, 0x769b40cf, 0x8fab5960, 0x0127d408, 0x033b1eda
.word 0x486c17e0, 0x3dd3edf0, 0xbbcae5d8, 0x90b254f9, 0x42431abb, 0xe324725d, 0xa6359a3e, 0x2834e8ad
.word 0xf2e5cf21, 0x25aea7a8, 0xb5aa93a3, 0xf28b87ab, 0x815a8844, 0x2d5c550d, 0x83c16579, 0x06e68b2c
.word 0xac1642e2, 0x775350a3, 0xa5be3717, 0x8c95f90b, 0xc878e729, 0xc2b7ba64, 0xdc0c1ce1, 0x692a0a99
.word 0x3f3342a0, 0x2a59b1a0, 0x3627f201, 0x144e8369, 0xf66b697e, 0x6c1c9e06, 0xa62f2ab0, 0xbed7b6c9
.word 0xcae38673, 0x01a47d01, 0x8ebabf7b, 0xc743793f, 0xcdbbe747, 0xca8d7108, 0xa53889cb, 0x0322cf22
.word 0x98cdba57, 0x036a84aa, 0x9029ccf2, 0x47a6906d, 0x0cf54d8c, 0x2d78b59a, 0xf88c226e, 0x60562e5b
.word 0x5669d1a0, 0x92f651f5, 0xb073cc9a, 0x6cfa742e, 0x6142b149, 0x1f78bd76, 0xa0dc1405, 0xee7950ee
.word 0x91ce231e, 0x7601ce20, 0x993c03b7, 0x16901940, 0x51443d3a, 0xf71c95e0, 0x9f5be7da, 0x68aec948
.word 0xe3de91a4, 0x6eabdffb, 0xdab1aeaf, 0xd66cc9e0, 0x14c34abf, 0xb2827802, 0x67e7aa63, 0xc220769a
.word 0x0f802125, 0xa2660767, 0x6bfc8aa6, 0x085cdcbb, 0xe18e9740, 0xcacbe0e9, 0x6c500686, 0x4164cb2a
.word 0x6821b291, 0x8433e6ca, 0x720ade65, 0x64ec375a, 0x7acafa2c, 0x78c94412, 0x96bd43cf, 0x60b93b2c
.word 0xf6b8494c, 0xcaca4ca8, 0x23f3438e, 0x15d350e0, 0x512a14f5, 0x2d4b2c26, 0x005d4f13, 0x85eb4dc4
.word 0xcd3f7c62, 0x1186aa12, 0x8ff083df, 0xcf4d1850, 0x24868815, 0x24517eb9, 0x2c2b8ab0, 0xd4e203eb
.word 0x064ca2ba, 0x0cea7cd9, 0xa24ed850, 0xc7b89d36, 0x527cafcf, 0x14d70055, 0x8b6838e5, 0x392c3293
.word 0xe6592db1, 0x9597038e, 0xe2ca877b, 0xd358322d, 0xe2e30aad, 0xb9f842cc, 0xe30f2f5e, 0x97921de5
.word 0xcff51ab8, 0x59025e9f, 0xb8785d11, 0xdab36681, 0xda090b40, 0x9f24e463, 0x372f6099, 0xe9d753b1
.word 0x1526c2a3, 0x14cf982b, 0x2c70ed86, 0xc3df4eeb, 0x2d883c80, 0x98ccfa0a, 0xb2b872db, 0x8cd64209
.word 0xc1f91294, 0x4563c0b8, 0xf3e2e6a0, 0xbe5935ba, 0xf608d42c, 0xcab58ad7, 0x60d67220, 0x3ba62ea6
.word 0x5ce156be, 0xe6124d13, 0x494aa0c4, 0x76b613c6, 0xaa77649f, 0xeeb51fba, 0x576f700d, 0x26d47a26
.word 0x1fb405c0, 0x497f21e3, 0x8be4d0b0, 0xf06ad404, 0x0168819f, 0x376aac7a, 0xf017ba78, 0xe4391991
.word 0x261e268e, 0xdade6257, 0x5c506397, 0x46aa6196, 0xc9f06585, 0x11c531d9, 0x76b4dbf3, 0xadfb74e5
.word 0xbf4395af, 0x183e7104, 0x9646dbb0, 0xd1211cc1, 0xcf8c42d2, 0x93b24a13, 0xa0ac4306, 0x8fd6a47c
.word 0x444c26f1, 0x70666b35, 0x734bee6d, 0xb8345ad9, 0x8e2bd475, 0x904d7e54, 0xb914bdb5, 0x2787f911
.word 0x00ce9b6c, 0x29eb62b8, 0x435e76aa, 0x036d8d80, 0xa84fbb86, 0xe0363060, 0xd82c90fa, 0xf88a4b80
.word 0x71d6db9a, 0x05aa8731, 0xddbb687d, 0x8abe16ac, 0x56e115b6, 0x7a231f56, 0x14216c02, 0xb23fbfec
.word 0x5a85a643, 0x57755fa0, 0xed21c025, 0x2090863a, 0x6141c47b, 0x7f5f1d7b, 0x3a3642cd, 0xcec08642
.word 0x644f86bb, 0x96c50414, 0x722456e1, 0x91d3f3b2, 0x534f8c15, 0x80a13772, 0xa220575b, 0x320dcf75
.word 0x39826efd, 0xb4109c1e, 0x0f73d6c0, 0xba6e613e, 0x5af0f16f, 0xa24cb32f, 0x41dad7e5, 0xb3981ace
.word 0x681de4c2, 0x3c1d349d, 0x9ed954dc, 0x3d203b8b, 0xf7ce8e8a, 0x7c1c2747, 0x95b952cd, 0x1473bca8
.word 0xde73d425, 0xee6e4a4a, 0xab82eb07, 0xbdf12202, 0xeca3d758, 0x7694c12f, 0x0c203602, 0xdc26a982
.word 0x5bac3555, 0x7f920bd7, 0xc387a348, 0xcd8f1728, 0xfb9e8793, 0xbca8be80, 0x40f11463, 0xbea742cb
.word 0xfd7e22c9, 0x5a9bf4ea, 0x7dc64877, 0xb6543748, 0x693c7b35, 0x10124274, 0xc9362b89, 0x3f51cc6b
.word 0xcc200528, 0x455ad843, 0x49f37fab, 0xc14244f0, 0x56236ce9, 0xdf632121, 0xf2ab368e, 0xdf0baec9
.word 0x12a6f95e, 0x624528ce, 0xdff27a26, 0x20a9d34c, 0x9346c338, 0xf167cfb3, 0xac475c87, 0x369bb23f
.word 0x6cea2452, 0x0b653301, 0xcfa6b2a6, 0x184817a8, 0x5f77cd55, 0xa813af5d, 0x19b1e531, 0xeb63cdd9
.word 0x240a88cf, 0xe4ee8b97, 0x4f3604be, 0x9693c11b, 0xcfc1f11a, 0x1e660988, 0x4471e78e, 0x64781f57
.word 0xf9dd2404, 0x617c23a3, 0x38fecdce, 0x632e4080, 0x24bdb67d, 0x63f81ff5, 0xbc0672ee, 0x053cd756
.word 0x7432958e, 0xc9c7b9f4, 0x08cec770, 0x2e7e948c, 0x72bf6a0f, 0x1fe9fee2, 0xa7db5f3c, 0x87838cd0
.word 0x922ba8bd, 0xd5a3940f, 0x0d60241d, 0xa758bc0a, 0xe674a6c7, 0x760dc733, 0x7490ac0e, 0xf565dd89
.word 0x69ca7d87, 0xb9a62a20, 0x9286b618, 0x20760e93, 0xe5d94ad8, 0x5a86d1ee, 0xae0318e8, 0x6ca1dd2f
.word 0x021fea96, 0xb10cb999, 0x4f519101, 0xf7224242, 0x573fd6b6, 0xced2cd3e, 0x17d9f2bd, 0x48faa287
.word 0x38a4de2b, 0xfba27736, 0x7b1d8b35, 0xb757a457, 0x29da7817, 0x61c3171e, 0x08872063, 0x0c5ee486
.word 0xea167b30, 0x43b4688f, 0xd590e664, 0x14fe790e, 0x9cbd99b3, 0x0cd69d2f, 0x53ad86a3, 0x22cc881b
.word 0xb2931adb, 0x9bca2097, 0x22732f61, 0x7350987a, 0x25588d63, 0x731f2c0d, 0x8def639c, 0x2b23e453
.word 0x87edd41d, 0x4c37b6b8, 0x9bc5b5d3, 0xb391896b, 0x02f61009, 0x98f5f1c0, 0xcc731216, 0xf0ae84fa
.word 0x915e1b16, 0x5e9a0161, 0xa0ca31a7, 0x63c7d25a, 0x9989d09b, 0x7663c5c5, 0x39ecbe29, 0x00291731
.word 0xaec944f0, 0xa731e71e, 0xa64c3508, 0x8859e9f9, 0xa62a8d74, 0xe46c40e9, 0x15b00ea4, 0xbcfeef35
.word 0xe5799c6e, 0xe63a4010, 0x3509dd0d, 0xa9b4003d, 0xe233e9bc, 0xda32b36b, 0xdbf9f307, 0x6c96cbaf
.word 0x9218903e, 0x4cfa39f4, 0x8e965c9e, 0xe3bcddc9, 0xcf7ada41, 0x3bf31d1e, 0x606c1e58, 0xcd693e34
.word 0xa8554c1e, 0x508be39d, 0x5ec583a9, 0x9635366f, 0x8e2bb189, 0x62d22fa6, 0x0201deed, 0x1e8178ed
.word 0x4f71d4cf, 0x456d1f68, 0x1460a9c4, 0x10ceda2f, 0x98727b00, 0x9c3cf064, 0x14e25d3d, 0x1e3f470e
.word 0x56a585d5, 0xfeb89179, 0x7e6ae461, 0xa14e119b, 0x11f2017c, 0xe0bea634, 0x9b2c1fa6, 0xb85542a6
.word 0x6a3ece29, 0xbb03cfab, 0xf42b7402, 0x186ea5d0, 0x071078db, 0x664ba708, 0x1681ec8e, 0x5aaf222b
.word 0x22669885, 0xc7ac4d0b, 0x9e616c5e, 0x5cd43dfa, 0x08009e7a, 0xf1525f59, 0xbfd4e693, 0x91d0d108
.word 0xf555a69f, 0x136c8303, 0x755bd41e, 0x39b1cbc9, 0x3d8ecc70, 0x280c3dc3, 0xfb7f2962, 0x1e2a80a8
.word 0xc1213a19, 0xb504cd5d, 0x2d33ae73, 0x9056c1fb, 0xfd367b01, 0x0fad2cc0, 0xae2e24a4, 0xdd4319a6
.word 0xc44bde44, 0xbd90d0fc, 0x8ed26cdb, 0x0039e5b6, 0xb4d4f9ee, 0xbf0d01f6, 0x18f7e7ed, 0x836b7ffb
.word 0x6f70ed8a, 0xb5996891, 0x92c4c21d, 0x5c229ddd, 0x6b6e732f, 0x63addfa1, 0xaa4aebbf, 0xf84561ea
.word 0xc09953a2, 0x2a8589d0, 0x33b68118, 0x5230c6aa, 0xfb644293, 0xd7dcb936, 0x4ca09cd8, 0x1268c26e
.word 0x8fb24454, 0xd0b08c66, 0x65b5f75d, 0x14473726, 0x076b2746, 0x600d9552, 0x368a8d1c, 0x57617d17
.word 0x926df4d2, 0xed63eb7e, 0x0f1153f7, 0x8edcfb0b, 0x71e08c34, 0x3a762005, 0x7d351ba3, 0x0979d1b8
.word 0xcfd5313a, 0x61d78af6, 0xc07f61dc, 0x2e5d8379, 0x29642b57, 0x820c5f42, 0x61a8d54e, 0x3fd144c7
.word 0x46daba21, 0x45428ef9, 0xd0016ac7, 0x8700d4f5, 0x7abe80f0, 0x0bbe3fa0, 0x3ae33dd7, 0xd28e60af
.word 0x5ea01dc1, 0xfcd2a3e4, 0x2eec2fd5, 0xfd2eba22, 0xa98c378c, 0xb81d772b, 0xd24facaf, 0xa44c809b
.word 0x54eadc81, 0xc92bad24, 0xbee8aa73, 0x8abe319b, 0x6c7fa5c6, 0x7c07780a, 0x61b5fc3d, 0xa302cb95
.word 0xc17675f5, 0x6d23d597, 0x8fce4e52, 0x3db59453, 0x861edae9, 0xd2b43fd1, 0x939bfbbc, 0x2f8ed161
.word 0x0d93e04f, 0x7a1a1490, 0x3d181af9, 0xace75b29, 0x650d18ca, 0x1980d975, 0x2b77bf48, 0x73d93242
.word 0x593b923d, 0xa76c7fd3, 0xaa2ac1e5, 0xa412d719, 0x32b0f828, 0xfa33a0dc, 0x35424080, 0x50d45bae
.word 0xe2b66090, 0x45fd3c63, 0x9b6d7ec0, 0xded40472, 0x39046cdc, 0x93237017, 0x5be6498a, 0x2262024b
.word 0x140cf5aa, 0x569bb540, 0x4b1cc256, 0xa015454f, 0x8fcd6ff4, 0xd02826ef, 0x7ed18433, 0xfe91a9e8
.word 0xe62a8478, 0xcf570fb6, 0xf0ba5588, 0xb771ea98, 0x9dde5c8d, 0xe245fab2, 0xd9765099, 0xd2c4160a
.word 0x15ab6e39, 0x8b4c7477, 0x215677d1, 0xe667c82d, 0x2915eeb0, 0x19b112b1, 0x69b41ddc, 0x00f0a245
.word 0xe366a6a5, 0x079848f2, 0xec7e3f28, 0xb63feeb4, 0x0b0258e4, 0x2a6c6c64, 0xfa637879, 0xa856af7b
.word 0x623be03e, 0x5ebbb177, 0xa8f6d96d, 0xfe03e862, 0x64f60bef, 0xa1e2e4a9, 0xf0df6dfa, 0xf97a5339
.word 0x84d703cf, 0x6d2bf952, 0x1f0e2df2, 0xdddce12f, 0x24bc32cc, 0xeb53039e, 0xc3a0cd51, 0xf132ba52
.word 0xfd2e24d2, 0x04899230, 0x1f8de3d5, 0x30ab9b2a, 0x2ac02460, 0x18263d5b, 0x224a8e0f, 0x2c77ccbf
.word 0x47915158, 0xca1f1172, 0x847de270, 0x69444a18, 0x14da8bbc, 0x42f384b0, 0x0df6781a, 0x8d1f194a
.word 0x4564c9e9, 0x19429caa, 0x544e042f, 0x63ef31f5, 0xdb2719f3, 0xca6dac29, 0xb3348ad1, 0x3dce3c1c
.word 0x0c2ea603, 0x6e60343a, 0x0fdf54d5, 0x4749327e, 0x2c5532ac, 0x223b92b1, 0xb6b43100, 0x869e03a1
.word 0x1a80b3e2, 0x88af96e2, 0x236b1134, 0x1d4708c1, 0xcd9754ba, 0x9fd24094, 0x7e547c60, 0xe22a4712
.word 0xf49d8803, 0x6a08d99f, 0x323fdaad, 0xbad1df7c, 0xe4169244, 0x6501fb03, 0xe63af004, 0x24397b59
.word 0xd0344b93, 0xa79294af, 0xd3b840dc, 0x97a855df, 0x502d0221, 0x4900ab68, 0x8022d96b, 0x3cd8d4f3
.word 0x66a41b84, 0x5afb8ca5, 0x61af2e08, 0xda46dfa5, 0x2698fde1, 0x215f77f4, 0x77921bde, 0xb0ebc67c
.word 0x8d04f24b, 0x559baf01, 0x87791281, 0xa5fcadf9, 0xa4ef427b, 0xba723b3f, 0xd632f6c5, 0x19386067
.word 0x7ba2b447, 0xe4fcedea, 0x49211dfc, 0x4ec7353a, 0xd24ebec5, 0x4c4fcd60, 0xc5612cc8, 0x8ec1f746
.word 0x5a49f373, 0x59df340e, 0xcd5c9e44, 0x7b51490f, 0x8a05783e, 0xa2d499f5, 0x5e56cad3, 0x46a2eb39
.word 0x2a994a8f, 0x129952ce, 0x98f7f05b, 0xc987ae1c, 0xd01b631c, 0x87c28fc7, 0x8a3d2ff2, 0xc6041077
.word 0x023d96f8, 0x58cdd387, 0x7ce5ecc8, 0x18413ed8, 0xf98ee2a8, 0x411c7b39, 0xf9a299b9, 0x4350fc7e
.word 0x2c0b011c, 0x80379df6, 0xd86cf13e, 0x28095032, 0xa6fad2b6, 0xf2192853, 0x9dad0cd7, 0x002179dc
.word 0xdbda7647, 0x97f5fb92, 0xf3a1a280, 0x4bae96cb, 0xb1efe292, 0x1416902c, 0x1fb24b5b, 0xdbf007a5
.word 0xce75ec4f, 0x94488d5f, 0xada9ec95, 0x8a5ffc47, 0x2b26755c, 0xe72c5471, 0xd6202170, 0x771d1017
.word 0xcfb8f48a, 0xcca46162, 0x43fb8749, 0xfd5cda11, 0xaa952761, 0x912036e6, 0xfe09e139, 0xb8625251
.word 0x9256d01f, 0x68812788, 0xa5455c6b, 0xfe2ae426, 0xa7998cdc, 0x5b0acd66, 0x569819f1, 0xe4a70acb
.word 0x39b99756, 0x58c96c4b, 0x0f752cb3, 0x2ab2d935, 0x231121b0, 0x18c09672, 0xf2be497d, 0x2e3b892d
.word 0xcd150a27, 0x332339f4, 0x53a929cd, 0x9b1ca415, 0xcfce7d01, 0xe87176ac, 0xd4cf555b, 0xf26b4f00
.word 0xe1f977cb, 0x136a9b4c, 0x0ba639ab, 0x428c3e14, 0x242f52bb, 0x29a16f3a, 0x2790bc63, 0x9fcacba9
.word 0x8099cf4e, 0x300c5c0d, 0x46ad9f14, 0x5efc03ed, 0x1fe73156, 0x9b20eef3, 0x34033c19, 0x7c6b0de5
.word 0x759bcdf3, 0x965947e5, 0x3f096353, 0x81400a1f, 0xe1473606, 0x63b76349, 0x70397d1a, 0xb3c70a1f
.word 0x0fa99d55, 0x630db11e, 0x87134889, 0xa3ca5efb, 0xa848a929, 0x7727e19e, 0x0ec4638a, 0xd56739ae
.word 0x59df07f7, 0xc0d060ab, 0xfa684c56, 0x25b2c002, 0xe21eb66a, 0xde91371e, 0x86970e4c, 0x7686fe28
.word 0x0021d920, 0x801a235d, 0xd9841df1, 0xdfdb70f8, 0x6d1d3c41, 0xab2cd083, 0x4fc17241, 0x70e3e293
.word 0x8b5d04c4, 0x2fdec434, 0xd11d2094, 0xd2a298a4, 0xd12fd955, 0xe8a4b841, 0xbb9a0b10, 0x9d81690e
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
.align 2
mtvec_handler:    
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  csrr x15, 0x300 # MSTATUS
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 31
                  bne x15, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x23, 0xb # ECALL_MMODE
                  beq x15, x23, ecall_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x15, _start
                  sw x0, 0(x15)
                  sw x1, 4(x15)
                  sw x2, 8(x15)
                  sw x3, 12(x15)
                  sw x4, 16(x15)
                  sw x5, 20(x15)
                  sw x6, 24(x15)
                  sw x7, 28(x15)
                  sw x8, 32(x15)
                  sw x9, 36(x15)
                  sw x10, 40(x15)
                  sw x11, 44(x15)
                  sw x12, 48(x15)
                  sw x13, 52(x15)
                  sw x14, 56(x15)
                  sw x15, 60(x15)
                  sw x16, 64(x15)
                  sw x17, 68(x15)
                  sw x18, 72(x15)
                  sw x19, 76(x15)
                  sw x20, 80(x15)
                  sw x21, 84(x15)
                  sw x22, 88(x15)
                  sw x23, 92(x15)
                  sw x24, 96(x15)
                  sw x25, 100(x15)
                  sw x26, 104(x15)
                  sw x27, 108(x15)
                  sw x28, 112(x15)
                  sw x29, 116(x15)
                  sw x30, 120(x15)
                  sw x31, 124(x15)
                  la x31, write_tohost
                  jalr x0, x31, 0

illegal_instr_handler:
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  lw x1, 4(x27)
                  lw x2, 8(x27)
                  lw x3, 12(x27)
                  lw x4, 16(x27)
                  lw x5, 20(x27)
                  lw x6, 24(x27)
                  lw x7, 28(x27)
                  lw x8, 32(x27)
                  lw x9, 36(x27)
                  lw x10, 40(x27)
                  lw x11, 44(x27)
                  lw x12, 48(x27)
                  lw x13, 52(x27)
                  lw x14, 56(x27)
                  lw x15, 60(x27)
                  lw x16, 64(x27)
                  lw x17, 68(x27)
                  lw x18, 72(x27)
                  lw x19, 76(x27)
                  lw x20, 80(x27)
                  lw x21, 84(x27)
                  lw x22, 88(x27)
                  lw x23, 92(x27)
                  lw x24, 96(x27)
                  lw x25, 100(x27)
                  lw x26, 104(x27)
                  lw x27, 108(x27)
                  lw x28, 112(x27)
                  lw x29, 116(x27)
                  lw x30, 120(x27)
                  lw x31, 124(x27)
                  addi x27, x27, 124
                  add x30, x27, zero
                  csrrw x27, 0x340, x27
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  lw x1, 4(x27)
                  lw x2, 8(x27)
                  lw x3, 12(x27)
                  lw x4, 16(x27)
                  lw x5, 20(x27)
                  lw x6, 24(x27)
                  lw x7, 28(x27)
                  lw x8, 32(x27)
                  lw x9, 36(x27)
                  lw x10, 40(x27)
                  lw x11, 44(x27)
                  lw x12, 48(x27)
                  lw x13, 52(x27)
                  lw x14, 56(x27)
                  lw x15, 60(x27)
                  lw x16, 64(x27)
                  lw x17, 68(x27)
                  lw x18, 72(x27)
                  lw x19, 76(x27)
                  lw x20, 80(x27)
                  lw x21, 84(x27)
                  lw x22, 88(x27)
                  lw x23, 92(x27)
                  lw x24, 96(x27)
                  lw x25, 100(x27)
                  lw x26, 104(x27)
                  lw x27, 108(x27)
                  lw x28, 112(x27)
                  lw x29, 116(x27)
                  lw x30, 120(x27)
                  lw x31, 124(x27)
                  addi x27, x27, 124
                  add x30, x27, zero
                  csrrw x27, 0x340, x27
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .s_region_0,"aw",@progbits;
s_region_0:
.word 0x51c7efeb, 0x4b17c150, 0xfc7fc2fa, 0x2e59ba4c, 0x1106a436, 0x4c15c262, 0xef8c7b04, 0x29095557
.word 0xa8a18974, 0x3bd5f1f9, 0xeec8aeea, 0x4b2d9c24, 0x19012b22, 0x135a1949, 0xdcdc3696, 0xcf71a8a0
.word 0x5883b416, 0xb965b1c3, 0xeb872b9b, 0x89ca4e1a, 0xaf416774, 0xf78ac2ba, 0x73e55039, 0x4a6cd66d
.word 0x03e92853, 0xeb44b0f1, 0x2dcd6cef, 0x72538365, 0x4506707f, 0x9e427692, 0x1fe4746b, 0x160571e9
.word 0xcdbe9241, 0x1c5579b2, 0x89000891, 0x7f68ae25, 0x564659cf, 0x03f409dd, 0x70f3f48c, 0xd86508a4
.word 0xcb3a880b, 0xd300b2fd, 0xf1b3750f, 0xd9233de2, 0xcc966e37, 0x8b082ae2, 0x8538ac7b, 0xea389f3c
.word 0xf193bb98, 0xfd261a98, 0xe717ec2e, 0xce937a21, 0x19dc1ee3, 0x0bac5b65, 0x44659c34, 0xf1028d73
.word 0xc3f5ebb4, 0x28e95154, 0x28da72f6, 0x80816c66, 0xc8f62d6d, 0x0e86cef7, 0x0a62c62e, 0x731cad4b
.word 0xc1cb6c60, 0xdd4ab8a8, 0x16a4683a, 0x0aa6a0eb, 0x5809d9ae, 0xd27dfa3d, 0x92019843, 0xc68cfd22
.word 0xe23e6ce8, 0x82d2e05e, 0x65813e8d, 0xc9bb9cce, 0x2259323f, 0x9c899054, 0x82141d0b, 0x04f90c1d
.word 0x7f140e27, 0x06ee6e9c, 0xdc06c6f6, 0x3916fc38, 0xd8737cf0, 0x63a26829, 0xaca78600, 0xe389e72a
.word 0xf0b57f52, 0xb10e573f, 0x34092a6a, 0x59dbeaa2, 0xd6a1c78c, 0x244ffb20, 0xb94d8c99, 0xd400d706
.word 0xe35efaa4, 0x031dc0b5, 0xd7db5e5a, 0x05a88f95, 0x9e9eea34, 0xf3e7a0a3, 0x7d66806c, 0xce5e9fac
.word 0x10b34777, 0xc54eac65, 0xe0da4a13, 0x5436ec4d, 0xd5365f0c, 0x24fab11b, 0x8a84b0df, 0x78693415
.word 0x76720656, 0xc9b909e8, 0xbd5eeb21, 0x88fa3bb0, 0xf2b54a22, 0x056ebd02, 0x489e90ce, 0xc5cb4508
.word 0xc8670df0, 0x5bb61016, 0xb611b185, 0xaf233afe, 0x52d8ae1d, 0x64da37c5, 0xa4799b29, 0x121fda51
.word 0x0b64aae1, 0xd8574527, 0xa2ef6087, 0x865c5e7f, 0xdc4b37ab, 0x3a536c0d, 0xb7ad1aeb, 0x54dce9e9
.word 0xe9fcbee6, 0xbf00d028, 0x286ce505, 0x61c4ba4b, 0x77b74c7f, 0x955c2256, 0x3ba23c9e, 0xe0411e71
.word 0x40423835, 0xac964604, 0x30fee14c, 0x2dfd628d, 0x9fb5d7b1, 0xcf230177, 0x73c9be76, 0x133cbed2
.word 0x6295e870, 0xc09cc994, 0x7de48527, 0xf95f4dad, 0x785e3a91, 0x153117d4, 0xc65b9c63, 0xcf97ddb8
.word 0xddb83a1d, 0x3ba62e30, 0x54724239, 0x9c9cec1b, 0x8c266f49, 0x7c42691a, 0x4ddd6b7b, 0x3727189c
.word 0x08fd9cd7, 0x455647c9, 0x235880a6, 0xbb474f47, 0x597a8eba, 0xe0cd4def, 0x3b5d0938, 0xdc8c4544
.word 0xeafa3c4e, 0x093fe5c2, 0x6237b0d9, 0xdec618fc, 0xaf9db7bc, 0x86a12c26, 0x0094c96c, 0xd99e71d5
.word 0xaec2dc77, 0xc83061b1, 0xd662fdb2, 0xbcddf64a, 0x22a14c9d, 0x6223fb2f, 0x8d5b8e37, 0xe43d9473
.word 0xc7abb1f6, 0x6deb0c16, 0xb9c30f2e, 0x47498d0c, 0xd2a8aae9, 0x0bbac0f0, 0xe68962ad, 0x5ffcfeb9
.word 0xd48ad55c, 0xe86f158e, 0x77cec29a, 0x9dd71a16, 0xc7306456, 0x414c67bc, 0x114ee76a, 0x26c092cd
.word 0x1d584692, 0x1df08a5b, 0xeebec927, 0xda07fb91, 0xcb2eee73, 0xd684b9f8, 0x3dd06e9e, 0x5f742849
.word 0x1fd5f55e, 0x98397a72, 0x1a99d4eb, 0x0ac4d0f7, 0x58a84541, 0x93d683cd, 0xf759e4b0, 0xbd9f8736
.word 0x94d6caf1, 0xadba98df, 0x166a81ce, 0x7b768867, 0xcce248fa, 0xd6f44262, 0xfab08e4f, 0x13085b83
.word 0x5d042479, 0x74f595fc, 0x4d74377b, 0xf0b9130e, 0x874616ad, 0x4048f4b9, 0xe2bad33b, 0xb8526f2d
.word 0x1840d656, 0xf5aeef4b, 0x143433e7, 0xc62eeb64, 0x3a2286e0, 0x19f72438, 0x6b1efbf5, 0x6bfb3e5e
.word 0x4740ceac, 0x77def13f, 0x2d5cfc68, 0x4ab51d81, 0x295d4abb, 0x1b498186, 0x4df3c9c9, 0x402f188e
.word 0x64352965, 0xb85e9bc1, 0xe7651953, 0xdeda4711, 0xf2ba9a9b, 0xb5b576e9, 0x9b783b6e, 0x76977928
.word 0x7855c3cd, 0x914e4e13, 0x9b02231b, 0x3049f31d, 0xc7b493e7, 0xdd9a4ec3, 0xc36a859f, 0xf103e09a
.word 0xc174ae86, 0xa6eb41e7, 0x846f0717, 0xf8d2e049, 0x88d0d6e5, 0xedf71e4e, 0x4f2c890b, 0xb27b6c58
.word 0x26457e47, 0x08ba025d, 0x97b15018, 0x204ecef5, 0x1c48ef90, 0xede07955, 0x03f91aa5, 0xe2194d30
.word 0xf4489a6d, 0xc74517db, 0x093c68df, 0xf7d61e47, 0x81d57fde, 0xe5630a21, 0x95e9e56c, 0x9a1b9c7f
.word 0x65fdc378, 0x3d8031c8, 0xe85c0864, 0xc675af10, 0x6599f41a, 0xf23b83ad, 0x6dea2269, 0x130a2b68
.word 0xb1536dfd, 0xca59578c, 0xae50ed3c, 0x7bcb5f08, 0x6b24dfa2, 0x6e05a19b, 0x68bf51bb, 0x945b0659
.word 0x3e5a296e, 0x119c8d63, 0x045e851d, 0x0fdbae7e, 0x6b52d6ba, 0xb05d11cd, 0xc0cf76ad, 0xa145cd2f
.word 0xb00f0170, 0x3fa19d45, 0x60f9a9db, 0x006010b4, 0x67394a50, 0x758c019e, 0xf7a67677, 0x3399c782
.word 0x4212fecf, 0xd88c452b, 0x63a7f5c4, 0xebbf88c5, 0xb7c7debb, 0xd0c99064, 0xf635cef1, 0xb07456c7
.word 0x398e73d5, 0x0d4e947f, 0xc658a9b5, 0xf19fd08b, 0x725d1529, 0x64f62047, 0x25181cad, 0xc7af960e
.word 0xafd23acb, 0xa942f5d8, 0x7e921eb9, 0xb2f8a3e0, 0x6542c180, 0x6a452bc8, 0x6ab16ea5, 0xb2e706d5
.word 0x75d77527, 0x5f21885d, 0x9628d7a2, 0xcf1338d9, 0xfbc83a59, 0xee6d9228, 0xe19238ed, 0x67f8094d
.word 0x10d0de2b, 0x158b22db, 0xeea63c3a, 0xb4158db1, 0xc81057f7, 0x86b1de07, 0x848eea42, 0x37973600
.word 0xa10bc1f0, 0x344b6571, 0x1e219212, 0xb98e20e5, 0x3e4f65a9, 0xdb758289, 0xd23ff039, 0x85f1d02f
.word 0x4a60a2c8, 0x3b796dad, 0x0d2f5f56, 0x91c6c465, 0xac3311f5, 0x51aa1eb3, 0x64da8566, 0xe6c82d18
.word 0x8b8dfc9e, 0x53452773, 0xccdfb58b, 0x4c5e5667, 0xe2d9948a, 0xca6634ec, 0xb573209a, 0x8f688fbf
.word 0x111778d9, 0xd92afc30, 0x5896fc04, 0xf3a26d78, 0x931dfad1, 0x77abab31, 0x3e3c9c34, 0xa0dd3c12
.word 0x6800030a, 0x4e61dd5a, 0x7002a931, 0xe43e4bda, 0xb692da85, 0xb732fd9d, 0x4a42b4c0, 0xd91c337c
.word 0x11cfbe98, 0x5bf41d38, 0x9cdf2429, 0x1d602a10, 0xe7577a08, 0x1b7899c7, 0xd065b8b0, 0x9a839fbc
.word 0xcee94c43, 0xc62f36a8, 0xbebc1f46, 0x6195466f, 0x727f2cf7, 0x07e7988d, 0xd8fdd0c2, 0x02db05fd
.word 0x7f2a92f9, 0x5c3dd885, 0x8918401a, 0x677ecd36, 0x47c20da0, 0x04337ff6, 0x84da5857, 0xd4002498
.word 0xfd022f54, 0xfdf875f0, 0x9d6798dc, 0x390f4b2d, 0x9769e4f2, 0x34081a74, 0x7c979104, 0xe1361308
.word 0xfdc9b745, 0xb6f3f3a4, 0x3419bfc2, 0xbc9ac431, 0xa74bc5da, 0x1b853e8c, 0x4f58d690, 0x22d3686f
.word 0xef214891, 0x5fade107, 0x5efd0b33, 0xde2b8c0a, 0x217d7d21, 0x6f51e5cf, 0x32d3cae8, 0x573f4fd8
.word 0xdd5fec15, 0x529ab25f, 0x2169ac9e, 0x05d319af, 0xa627f0db, 0x40019afa, 0x91bff529, 0x0722781b
.word 0x56d93c2e, 0x07279691, 0x5f7b2428, 0x814cfc88, 0x6b788a63, 0x3dc9f726, 0x7cdccdf9, 0x6526bbf1
.word 0xf3631a2c, 0x3c4957ac, 0x0458434c, 0x788f130e, 0xe46f16e2, 0xcc8c14f4, 0xef1836e2, 0x4b319082
.word 0x3ff1c1e2, 0xb96b6020, 0xfc2492fe, 0x07f43c71, 0x433caa75, 0x5f3f4106, 0xef1aacdd, 0x30d8d037
.word 0x846efa6b, 0x1d6e384b, 0x44ab5711, 0xad1f28c3, 0x68084eb1, 0x5abca591, 0x162538c3, 0x55c4ece8
.word 0x40e46400, 0x0b0fadc1, 0x968cc0f5, 0x95b688e9, 0x661df72a, 0x1a331180, 0x583eb93f, 0x74733ee5
.word 0x6fc2c581, 0xb0f2d15b, 0x7348bc96, 0xae76cc65, 0x60187f7e, 0x267ae3ca, 0xc6d75912, 0xea5cf54d
.word 0x51ce0340, 0xe5f227ca, 0x87e9cc2c, 0x9571f924, 0x9fda32ed, 0x95eb2ffc, 0x5c841173, 0x97a2c01c
.word 0x04c6ac01, 0x044e93d9, 0xe72676a4, 0xea951486, 0x80c4afde, 0x8d990909, 0x38429e45, 0x8b3df7d1
.word 0x0688c777, 0x5d117b2f, 0x70d04df4, 0xcd062e60, 0x3698c8ee, 0xfec13314, 0x9bf41ff4, 0x0a97fc87
.word 0xef55ee8d, 0x0761683e, 0xc354a6ed, 0x7ce4471e, 0x190054e7, 0xdb1fe5d8, 0x1b7bd429, 0x66132846
.word 0x7856f67f, 0x3ff5b4f2, 0xaaa6a5ae, 0x175d7919, 0xbc5429e0, 0xf96ef0a4, 0x28a5ad9e, 0xc35d1467
.word 0x1f17a45f, 0x39effa08, 0xaddba3e3, 0x0ab8cac6, 0x6ee7f375, 0xfd4e9a43, 0xbd6611e3, 0xd6eada94
.word 0x29b83f67, 0xea691396, 0x31121449, 0x9b85de52, 0xc3b8e611, 0xae4d9a6d, 0x54640c9e, 0x9b8f1049
.word 0x70f20fca, 0x4dd13a11, 0x26e88c40, 0x72fc06db, 0x8a2dfa92, 0x2b0e3acd, 0xded7cea5, 0x4e8c4a2a
.word 0x189aa489, 0xc521814c, 0x69ed1b78, 0xadfaae0d, 0x05118842, 0x00c84745, 0xb992e9c5, 0x4f252056
.word 0x365acf40, 0x2d12a8dc, 0x12f31e72, 0x711100af, 0xb3189877, 0x58c7882b, 0xd49e65ca, 0x64b7c8bd
.word 0x47e1e759, 0x0db93c12, 0x2b3bbe67, 0xe0f4e0c2, 0xe64d953d, 0x6d8c0c24, 0x32a51608, 0x9f75c66e
.word 0x7f7133e3, 0xc712fac9, 0xa5135ffa, 0xe0391a4c, 0xbdc39857, 0x79c4807f, 0x48f4779d, 0x6d03a7a6
.word 0xd87f2245, 0x2b6aea96, 0xd9dc9dab, 0x72d1a602, 0x354f567c, 0x9c74e660, 0x6b578eb1, 0xb8fa2f92
.word 0xf8104499, 0x2dc037b3, 0x5fb610da, 0xc8636fb2, 0x17603d79, 0x6af7c509, 0xa88d192a, 0x5f51fc41
.word 0x6a9d3f21, 0x6054d262, 0x41213b54, 0x21ebd8ce, 0x85e6274a, 0xb316e880, 0xac8e9cf0, 0x6b543d20
.word 0x90755316, 0xb740439c, 0x27093f99, 0x6138836a, 0x821ad618, 0x88b68ad7, 0x5f5c4eb2, 0x2823292a
.word 0x9753abf7, 0x45285f49, 0xe72191cc, 0xcddd2e9c, 0x10cd7140, 0xa6aaad0c, 0x9a5ab1fc, 0xe6e4f1ce
.word 0x6d7ba4f6, 0xe862ccd6, 0x013c5a97, 0x5b041773, 0x042693e7, 0x70a57c15, 0x5dd9ad92, 0x0d13c787
.word 0x916bdd67, 0xef40703a, 0xd9ce5b0f, 0x08257344, 0x9f7319e8, 0x2f62ca8e, 0x82fe6782, 0x994e817b
.word 0xa649058b, 0x11483d0f, 0xbe3764e8, 0x2f45d78c, 0xd7df0d92, 0x4456330d, 0x07a6f109, 0xa56c4db1
.word 0x88693f24, 0xd50693d0, 0x2f180ed6, 0xe32ceced, 0xdd48aee2, 0x9d7bfc57, 0x610b3990, 0xa3275fc8
.word 0x83f398c9, 0xd85e66b7, 0x05197295, 0x7c43068b, 0x8cc0b302, 0x7d6ff046, 0xdb713936, 0xbd2334f2
.word 0xc28acb8c, 0x50f8b203, 0x9d680cd7, 0x3f6e5878, 0xc272d9ac, 0x99ed149c, 0xc8e1706e, 0xa46ee71d
.word 0xc5ec3a5f, 0x493919a8, 0x290af546, 0x64c805a5, 0xbaf513f6, 0x7ffa5fa2, 0x076a574f, 0x2acea7be
.word 0x8ef83033, 0x2e4c76a5, 0x71b7ef6d, 0x2ab168fb, 0x28d27aec, 0x330c8d7b, 0x02299811, 0xd617eb78
.word 0xc492941c, 0x32af85af, 0xab83dbcf, 0xa0cc8950, 0xc6e6baea, 0x04e7c26f, 0xb329ec1d, 0x0043f0e1
.word 0xcae45779, 0x200f84a6, 0x6e3a39d3, 0x91aa9164, 0x6932ab36, 0xd3f21918, 0xc8f85065, 0xb085cb01
.word 0x75c2bb30, 0x9ab8c34c, 0x4e25bd84, 0xded0413e, 0x16c5030f, 0x19f32422, 0xed403901, 0xcef980f8
.word 0x80217189, 0x74d7af54, 0x3a41b5cc, 0x82aba2f9, 0x43d2a890, 0xe83f91a5, 0x120747f9, 0x76b154cd
.word 0xec844e08, 0xe0395478, 0xd3211cc4, 0xc4b17fb1, 0x7ae9e63d, 0x0374caaf, 0x08062884, 0xfac43a23
.word 0xdc1a0d01, 0xcb3687b3, 0xabc89f0f, 0xed9b2208, 0x1e4daf9e, 0xe6ebee28, 0xf6b8481b, 0xaba96223
.word 0x31531d7c, 0xf99ba522, 0x83fae67b, 0x1e8fd260, 0xce876d79, 0x7528f46f, 0xe2084836, 0xca331438
.word 0xf8174fe1, 0x19bd99ce, 0x351cc0d8, 0x2a6d76ce, 0xe24fcaab, 0x3c1760a0, 0x48369696, 0xd3c5cc9a
.word 0x6d27a59d, 0xdd54f0ea, 0x16ca5114, 0x3581f44a, 0xd52d708b, 0x4d73b376, 0x73c3206c, 0xcba20b2f
.word 0x01979bca, 0x9ab387c4, 0xd3d371c4, 0xf885f4f6, 0x0099d436, 0x3cdde956, 0x15755dd6, 0xc1b37ef2
.word 0x479a0ee5, 0xbf0b26ab, 0x1afc9ac4, 0x7c280554, 0xe0a20486, 0x02716b07, 0x2ddf4593, 0x2141f0ae
.word 0x7fae605b, 0xbe790eca, 0xc3f07343, 0xdcdae85f, 0x64ab52b7, 0xb357dd5b, 0xb0f88dbc, 0x89ce6279
.word 0x33403232, 0xc393a7b6, 0x80ecb35c, 0xe4d8d840, 0xf6a9f891, 0xb75df0f3, 0xa3c2b30e, 0xb12970aa
.word 0x73482c03, 0x83cb8078, 0xf5903fa8, 0xe5f22fb1, 0x9729171a, 0x6f22edec, 0xa2182ded, 0xfcf508a7
.word 0x1d471aa3, 0x0ae3e24b, 0x492f075d, 0xfcce1edc, 0x34cfac79, 0x9065667a, 0x2e593a05, 0x1a72a69a
.word 0xb89776da, 0x5051a1c5, 0x151a2ecb, 0xbae16dd8, 0xeb258be8, 0x1842bfc0, 0x2a789a95, 0xedf9a7e6
.word 0xa5764840, 0x41137369, 0xdd235d65, 0xc42f83e1, 0x262c2d3f, 0x76c026cc, 0x0c84c905, 0x55a50682
.word 0x52eea2c2, 0x0e2a42a8, 0x46f29ec3, 0x006a14d6, 0x73d44480, 0x3b059f1b, 0xc82af401, 0xa988a2ed
.word 0xeb9015a4, 0x2790057d, 0xaff8c28e, 0x9548e692, 0x2b8584e9, 0x8a001d82, 0xd78099ec, 0x059c66dd
.word 0xdef6aef3, 0x2a27d452, 0x990df77c, 0x97e62611, 0x311f9f75, 0x9321106e, 0x1cef982b, 0x0f5c9e0f
.word 0xdd68cd1c, 0x546cc182, 0xf94c4f1d, 0x1965ceb0, 0x0f53124b, 0xa1f46dc2, 0x03c24248, 0xa1173581
.word 0x19e26b13, 0xb481a011, 0x233aec9b, 0x47c1a02c, 0xd5bc2dba, 0x51c68970, 0x96010848, 0x6999e971
.word 0xa878a712, 0x01e382c8, 0x580c49b6, 0xce637c41, 0x7e834e8b, 0x73cdd1e4, 0x301fd4a4, 0x097eac82
.word 0xafb8d07b, 0x1aa58fca, 0xd7d86c89, 0x612bf7c1, 0x44857fe2, 0x700bfd65, 0xdb934aa7, 0xbd8fc3a0
.word 0xdc874bec, 0x6ce2062c, 0x04cdb49a, 0x21ccab5e, 0xc67040d8, 0xc1b13928, 0x5a60d63e, 0x4beffa51
.word 0xc3b8ad43, 0xf7344569, 0xcd1b1988, 0xc53250bc, 0x34335e1a, 0xd26384b3, 0x705ff1b8, 0x68337044
.word 0x783f4d2c, 0xd53c47ec, 0x424ca2d2, 0x3380196f, 0x7e172011, 0x8cd172fc, 0x70a660e6, 0xc3e23bc0
.word 0x28c23d15, 0xd3d7760d, 0x0579ae4a, 0xddfcb89d, 0xfdd31bd8, 0x4d6f1a7b, 0xd5a28fd1, 0x2ee94342
.word 0x2f7d67cc, 0x4e86f025, 0x12a18496, 0x9fe62e41, 0xbb0aa59c, 0x34972377, 0x6fcbde86, 0x0ac8f96b
.word 0x5b76cc78, 0x104cf94f, 0xd87a8c98, 0x750e79a2, 0x56c16590, 0x96717336, 0x98eaebb5, 0xbe6ced25
.word 0x6785a7f7, 0x96661808, 0x59bdf81b, 0xc8c87f64, 0x5e1736dd, 0xf2f90a4c, 0x51efa2b8, 0x08c9ef1d
.word 0x87a72ad6, 0x1b9e7f89, 0x156625e0, 0xfcbc52bc, 0x917420fc, 0x867f041b, 0xc8dc8b6e, 0x7473b016
.word 0x6f576cbf, 0xca903823, 0x0bfb46a7, 0x93389623, 0xe8b2bf4b, 0xca2c937b, 0xcc2c4993, 0xbc37d712
.word 0x8be59607, 0xf0570d9d, 0x5a71e327, 0x60bb328d, 0xcec7472e, 0x5d34118f, 0xb5814db3, 0xec59a1c7
.word 0x293bc6e6, 0x65853b9d, 0x1a68d84e, 0xb4026da6, 0x776929d4, 0xdc8d2716, 0x69718f3c, 0xfad1afd6
.word 0xe4097261, 0x9dd2c2fa, 0xfe2f5029, 0x241dbf4b, 0x1b70a6fb, 0x947e74a5, 0x4d463280, 0x25c64d8c
.word 0xfc69f8dc, 0x1833c445, 0x51cccb1d, 0x3db2f83e, 0xfd678724, 0xd78d77e5, 0x0b1d682d, 0x89600e29
.word 0x531be50f, 0xf2a3b097, 0x57db0897, 0x24449a66, 0x8e408a0a, 0x288e9df8, 0xfa652ef0, 0xf1edd0c3
.word 0x3c8ced2d, 0x3f5abc39, 0x31cb11f6, 0xa2b0256f, 0x0c6133e7, 0x144f9be8, 0x0831e91e, 0xd9be84cf
.section .s_region_1,"aw",@progbits;
s_region_1:
.word 0xc59ae490, 0xa5ecc511, 0x2513340b, 0x0923fc07, 0x0152b5c8, 0x402d1be0, 0xc3b457cc, 0x1eeb5221
.word 0x421e81e3, 0xa15858a2, 0xd10e70f1, 0x809a80a5, 0xcf86a727, 0xd037821c, 0x9c31cfeb, 0x8a59553a
.word 0x6d5c9220, 0x10364455, 0xd1d21f5f, 0x8dcd7f9a, 0x5aeddbf9, 0xc0cb2edb, 0x4162f117, 0xd87adb53
.word 0x80298ca1, 0x4c154237, 0x7cc4115e, 0xdf2bb8fa, 0x9dfdb618, 0x7eb3057c, 0x406dcdbe, 0x958273e3
.word 0x42bfe74d, 0x8ea89e0d, 0x2526164f, 0x81e4aed8, 0x033d1cb5, 0xfc5b5845, 0xcaf35ce4, 0xfe137256
.word 0x45aec7e4, 0x740a7a0f, 0x0ca573a3, 0x0d285ab1, 0x5f970939, 0x0f314e86, 0xd3d87616, 0x77bcf0d8
.word 0x03ee5758, 0x51aff339, 0x19c231c1, 0xb97287f1, 0xa1837ab1, 0x3f2ff4eb, 0xa69c0dca, 0x6f20c884
.word 0x53c6492e, 0xdcee6c8c, 0xddd9d342, 0x7a86856c, 0xf4b36a96, 0xd7ae8303, 0x791fdd8c, 0xad75b510
.word 0x083650f4, 0xa7e8713b, 0x87c07de3, 0x0dc2203e, 0x36002763, 0xfb00bdb8, 0x7848e558, 0xef259afd
.word 0x0ba1427d, 0x0d74c630, 0xc776a53e, 0x26569e5f, 0xd5d19d18, 0x2f9b8a5b, 0xf9e0d967, 0x0319fe17
.word 0x876cc915, 0x1a3948d9, 0x496bb013, 0x3a2a69c0, 0x6bb854fc, 0x017e04b8, 0xaf71f9af, 0x221ff278
.word 0x79917618, 0x5a4a8dd9, 0x59f7fb4e, 0xb867f312, 0x56f70ecf, 0x53c21293, 0x17551d5a, 0x20af885e
.word 0xb509fb5b, 0x47a50278, 0x066f6ef0, 0xfdf44616, 0x701709dc, 0xcdfd270e, 0x44146044, 0xa016ec69
.word 0x09ce1e9c, 0x41198eca, 0x9378235e, 0x90abd50e, 0xa81da1fe, 0x776d2e06, 0x8de03139, 0xecdef0b0
.word 0x3d7922af, 0x596bad82, 0x650b7e6d, 0x2a578f2e, 0x8860b334, 0xdaaa7653, 0xf964b50f, 0x44fd4111
.word 0x76ab81e6, 0x85dd0d2d, 0x72a3fe20, 0x3c61aad0, 0xbc0dab6b, 0xf53a8671, 0xacde7894, 0x9f67b293
.word 0x99797a9d, 0x7d84f61b, 0x6871b208, 0xcd980977, 0x2da9bbbb, 0xfe4275df, 0x3e8de544, 0xdae6a627
.word 0x3e9936e1, 0xbc6ade5a, 0x2e40017f, 0x6ba3c6a8, 0xe514dfaf, 0x9fdccaae, 0xe07f8daa, 0xdee42955
.word 0x60727504, 0x2b07c609, 0x51e22736, 0x1ec8618d, 0x2501861a, 0xa2f08e5e, 0xd92dc058, 0x6c3396e7
.word 0x92290572, 0xe2273d44, 0xd01150b8, 0x27fd8b80, 0xa8a50c15, 0x1faccf86, 0x5db9a590, 0xa84e8bfc
.word 0xeb8d98cf, 0x5700e6da, 0x4623b3ec, 0xf422b1a2, 0x6a67c1c1, 0x7300123b, 0x79af0d9d, 0x741cdf17
.word 0x761ca0cc, 0x18938366, 0x0522665d, 0x53c57842, 0x21fa021d, 0x2dd145a0, 0x46ca5b56, 0x0a6d1f83
.word 0x61806f42, 0xb4c522bd, 0xacb9ddac, 0xd69a15bb, 0x7dcd68d9, 0x87925112, 0x0e588022, 0xf681391b
.word 0xb9b90d3b, 0x8fb21065, 0x29b430c5, 0x7478cbab, 0x41c33670, 0x82107c7b, 0x1a1186fd, 0x4725a950
.word 0x8b9840ce, 0x9bd9eba1, 0xb64c0802, 0x24917751, 0xbe118908, 0x810acbc3, 0xb1c24500, 0xb1dadb7f
.word 0xadd3d9ca, 0x7e34206a, 0xb4f9e11b, 0x8bf4b41e, 0xf439683e, 0x795c9af9, 0x2867f019, 0xd633ef39
.word 0xdcbb6a25, 0x265eed85, 0x0cd2a14e, 0x17171ec0, 0xe7869c26, 0xa5bc8f82, 0x36b06bc1, 0x8be80186
.word 0x03588950, 0xcd7cc399, 0x91e17005, 0xd0ad7d67, 0x5fd7fd05, 0x56f1d57d, 0xdebeafef, 0x9516db0b
.word 0xf1128314, 0xe8ace674, 0x01548957, 0xd6a72517, 0x0e128a80, 0xcf5ce7c0, 0x71a7e3ed, 0xa83319b8
.word 0xf6a97d2b, 0x1ab464e4, 0x6665a73f, 0x55526662, 0x2276ad69, 0x720e792f, 0x2450c671, 0x1f079e5b
.word 0x8e04bea1, 0x2f4d6de8, 0x4c4fd457, 0x756d5005, 0xfa4e38ee, 0x8796c8ab, 0xfa8b89e2, 0xf3610565
.word 0xb9284d92, 0x907a0151, 0x5510508a, 0x3ab53478, 0x588607bf, 0x5649db5e, 0x9847eb89, 0xb9a742c7
.word 0xb0c69d32, 0x47f1df1a, 0xf41aa898, 0x5c0cd99f, 0x59a29b27, 0x5d498f3e, 0x08f3fbe7, 0x77afc807
.word 0xbea23559, 0x4a2b722b, 0x685740a8, 0xf83ff157, 0x0bfa4d70, 0xe74593a6, 0xd608b521, 0xf2609b56
.word 0xe10c3f62, 0xabcff4cc, 0xa61a148d, 0xe9f3e39d, 0x3ba49f73, 0x2f627f4a, 0x8530ecf1, 0x2a1c5f08
.word 0xb7ada2e9, 0x49099fd3, 0xe35d5c3c, 0xe40d33b3, 0xbdb72218, 0xbc9a73d2, 0x5830a4ba, 0xd36bb471
.word 0xf70f15c0, 0x50d344a5, 0x75ccc686, 0x8f8381fa, 0x5940a00d, 0x9d6909dd, 0xfbdf9ecd, 0x66e8cb60
.word 0xa389d8db, 0xb0865cdb, 0x2e1c4faa, 0x745e7280, 0x1c4fbfec, 0x986d2c26, 0x66b0fbca, 0x34601230
.word 0x4cb12ba2, 0xe8c701f8, 0xcd2001ed, 0x52d683f2, 0xb33a6996, 0x5161b6e8, 0xf9431013, 0x9828447d
.word 0xe999a5b5, 0x1945f799, 0x6780dcc6, 0x57e27b84, 0x707909a5, 0x88585d99, 0x1053e2f7, 0xee175121
.word 0x99b47c4e, 0x3479d923, 0xbac939d4, 0x5cb1e582, 0xbd24db24, 0xf0d5035a, 0x5f661013, 0x821e6051
.word 0x17257ce5, 0x81b12f33, 0xea1db219, 0xcc2517d5, 0xa1059b4f, 0x7e08918e, 0x6bcdab51, 0xd0724471
.word 0xd77f5360, 0xcf45aad4, 0xbf444877, 0x54cced69, 0xc4d33dac, 0x1146f106, 0xa92d8bae, 0x52cf16fb
.word 0x12314ab0, 0x703b833e, 0xa0fa3e9a, 0x7f005953, 0x8b9f1c9f, 0x1494d4cf, 0x5439a01f, 0x45e22cb3
.word 0xb002d46c, 0x0f915da5, 0xd6d435e7, 0x951be45e, 0x22a1d8e3, 0xfe0e4374, 0x97d5e253, 0x62befd6d
.word 0xc01532d5, 0x4066bd38, 0x9d1b4ca1, 0xafe0ee71, 0x599e27a7, 0x1840c144, 0x7baaa462, 0xbdf227d5
.word 0x1fbbcdb6, 0xdcab6ef0, 0xf96aabe6, 0x6ca6225f, 0x734936c4, 0x402b5ba7, 0x3f6096ec, 0x91f67522
.word 0xcc5b6331, 0x3fbb3d41, 0xe844c8ed, 0x28adad17, 0xc487c5a4, 0x61c5c4ce, 0xc84cec43, 0xcd1b4d74
.word 0x276a09c0, 0xa366dab9, 0x82089f8a, 0x61e769a3, 0x0e4674b9, 0x0eb3b781, 0x54ec0a28, 0x939cf0d9
.word 0x0704e092, 0xb951c10b, 0xe7c6d551, 0x938eb63a, 0x20386b36, 0xc4962c26, 0x13383b88, 0x00c88099
.word 0x2496ca69, 0xbcfad589, 0xa33928a5, 0x091f5ffe, 0x51b90964, 0x5ef0bad3, 0x76a73166, 0xa4bf860c
.word 0x6bddc7bc, 0x8da605c9, 0x4778f6b2, 0x83d377a2, 0x65019d8a, 0xcb25245d, 0x0f9713b5, 0x53174c7e
.word 0x7101d130, 0xf50fa4ba, 0xd6d27a32, 0x64872c0a, 0xe2c3fb8b, 0xef0d9747, 0x7d5b1590, 0x476b83b7
.word 0xe66fb58f, 0x64372573, 0x925a996a, 0x4f1bcfd8, 0x15323c8f, 0xc698bde6, 0xbfd027a5, 0xed48ea7a
.word 0x66711184, 0x6f5f6216, 0xce16e5ed, 0x7a2f4ccb, 0x5f96fcd3, 0x17975aba, 0xc4a27357, 0xdb5213f7
.word 0x8c10db76, 0x143dd2be, 0x1a10f102, 0x4bd4e48b, 0xba681520, 0x4e73703e, 0xc62fec3f, 0x7e66addc
.word 0xecf20db6, 0x4b1ee198, 0xd11af5d0, 0xa4241acb, 0x4fdccfd0, 0x8dbdb114, 0x17124529, 0xf9dce20e
.word 0x8af60666, 0x92d61b12, 0xb1576e07, 0x60084fcb, 0x640139a8, 0xc299d738, 0x182e8994, 0x63925fe4
.word 0x7119bcf9, 0x79761837, 0xa3d78e2e, 0x29499372, 0x3f4f856f, 0xf9eee696, 0x4c199cdd, 0xc43f2fa9
.word 0x90560dab, 0x0e97b648, 0xf97854f7, 0x8bba905b, 0x32b57b5b, 0x7469adac, 0x0d822ac3, 0xa5ecda17
.word 0xe109212d, 0x35aa3637, 0x8a416d6b, 0xce2a8fcf, 0x4ff0ae90, 0x5a52ddab, 0xd5915d06, 0xbd5a24c3
.word 0x8d1073fe, 0x5aa553ac, 0x2e119f07, 0x16be3f2f, 0x3e635bcb, 0xf23396f7, 0x7060b7bb, 0x4504ec5e
.word 0x45c6fd6b, 0x1418eb3a, 0x52e13afd, 0x38ba586d, 0xcf5b7d8f, 0xeaba5962, 0xb805a052, 0x424c70ba
.word 0x516a76ae, 0xf2cdd179, 0x1914693e, 0x62f2ce2b, 0xf3d2aee8, 0x5e996eab, 0x7bf3a70a, 0x8f5d3251
.word 0xfdd815f8, 0xcad85d3c, 0xd8e0c442, 0x0d77eec4, 0xa8efd2d4, 0xa3e11cf0, 0x2b31e8dc, 0x2f64f4a9
.word 0xe5428390, 0xe3e3453d, 0xbcbaecf4, 0x3414e2ea, 0xb3c9e337, 0x59da15fb, 0xea0822eb, 0x23a0640a
.word 0x0a33b9f7, 0x0c1db293, 0x33e84b03, 0xda4a1a9f, 0x6e20b992, 0x2a431dc9, 0x9c217483, 0x73b307af
.word 0xc826dfb2, 0xa9793395, 0x423e5cf6, 0xb49f5654, 0xfca2664b, 0x9b91f708, 0x853adac3, 0x2336e011
.word 0x65ba3e97, 0x8e44041b, 0x0e59cb6d, 0xaca82d75, 0xccad5644, 0xe63c3aac, 0x99ed9750, 0xbc7bfb02
.word 0xf7f22cdb, 0x4038dae7, 0x06cc65fd, 0x3086427b, 0xf247f8a0, 0xade6503a, 0x5a79b5ba, 0x15a0e258
.word 0x28f637a2, 0x86eecf36, 0x43547f36, 0xa7873cef, 0x6cd49c37, 0x3c0de203, 0xf00e1f77, 0x66f30a41
.word 0x5da7ec49, 0xd3fda0b5, 0x19e3b307, 0xd16a37c6, 0x0d01950a, 0x10a8ea52, 0x5126e857, 0xfaccdb1f
.word 0x08610056, 0xa1333f60, 0xdb029aad, 0xcb3103d2, 0x4db04506, 0xc07a465e, 0x6a381ce6, 0x837d7d9b
.word 0x70e2bcb5, 0x0ee65c6d, 0x9519beda, 0xaf9df813, 0x17ba29ad, 0x30fa0786, 0x094e3180, 0x28077615
.word 0xcf54eae6, 0x9f8cb979, 0xc78dca09, 0x3bc5cb2d, 0x9ddd2dcf, 0x4fef9566, 0xaa6fca0d, 0x854166f3
.word 0x6cafc78b, 0xaa52b589, 0x3af02b71, 0x2643e9d7, 0xf1afcad0, 0xd263eb14, 0x0302f2b4, 0x24cd3684
.word 0x2ea93cbc, 0x19ea5629, 0xb1dfc05d, 0x529b07f4, 0xb7373cf9, 0x4f5c888b, 0x0f95bb58, 0x213f289c
.word 0x3a339cfc, 0x059894eb, 0xd5af7377, 0x5644c29a, 0x2d13a640, 0x7f1ed697, 0xf2c3e7ee, 0x591d2a58
.word 0x20c9d19f, 0x494afb22, 0x7c4a262e, 0x8f0934e6, 0xc0d0635b, 0xdcad96f1, 0x9f0f0b85, 0xbd8bc248
.word 0x67f7c514, 0x623ba87f, 0x6a53b16f, 0x2f70c1fa, 0x7c6a0f7f, 0x512ff5d3, 0x9f1e1cb4, 0xfcc63fd0
.word 0x2ed7af64, 0x7b22d622, 0x6c676bd8, 0xe00e5961, 0x08427839, 0xbc8c9de9, 0x74609da6, 0x35c8ce3f
.word 0x3c92718b, 0x6f8ed836, 0x890866d2, 0x5183fa26, 0xd5c8229c, 0x30261be4, 0xe726357c, 0xa2e3a5eb
.word 0x93fba43b, 0x0f4cdd08, 0x288c8ac5, 0xdb258aba, 0x17bfb237, 0xd23045a6, 0x192b7e72, 0xb0c23362
.word 0xd143565d, 0x35be8c2d, 0x7226cced, 0x5ee7ab37, 0xa3d099ce, 0xbba776bf, 0x8e73dcaf, 0x8c77d766
.word 0xa61aafc3, 0x31911ff7, 0xcfe015e9, 0xecd9357d, 0x152df10e, 0x7a5f7ae9, 0x77c63b9c, 0x9a4c408c
.word 0x0138df0c, 0xfc749b3f, 0x5706d6bd, 0x81baeee4, 0x9bba568d, 0xf985bfdd, 0x0d6bfe8b, 0x241863ed
.word 0x924df1f9, 0x65be0e41, 0x9c7392de, 0x01203dc2, 0x2072b5c6, 0xaefcf0b2, 0x0189b87c, 0xb1896212
.word 0x4bf0d30b, 0x68946234, 0x90d4f820, 0x69e432d7, 0x57a012f8, 0xb4f6d5e0, 0x21ab6641, 0x639d0c1a
.word 0x840cb0ef, 0x0461db93, 0x39933bf0, 0x8d9a1fed, 0xf4a34fcd, 0x7e41b2de, 0xe55879ad, 0x5d504d8e
.word 0xfd084fd6, 0xbfd28d39, 0x91acac79, 0xdc59f721, 0x1bc1a0e8, 0x2b6e2b2a, 0x7ceb298d, 0xb8a646d9
.word 0x35e84606, 0x366fec5b, 0xbf13f8e1, 0x5961486b, 0x844e3e60, 0xb98804f0, 0x3ea5c982, 0x2ae4646c
.word 0x2a87dfde, 0xfd813d51, 0x04019cb5, 0x85e81d0a, 0x637330a7, 0x1fe17bbc, 0xa5dd0cf5, 0x65ec1701
.word 0xfe61629a, 0xaf1c3e84, 0x8e6b3abd, 0x2a5d2875, 0x0e565930, 0xe60da403, 0xd3edc4f3, 0x6bb0a0b8
.word 0xaefc8283, 0x383a275e, 0x840b4d03, 0x0128ebd3, 0xb55d1afb, 0x1d7ab934, 0x0cb4863c, 0xe5901f75
.word 0xe740f13a, 0x1215422c, 0x094697f2, 0xaf059bf8, 0xafc668cf, 0x2298e465, 0x69f33c91, 0xe718afb5
.word 0xf1f08877, 0x5024074f, 0x9a013670, 0x3678c280, 0xb0ea3bb8, 0xb625ee58, 0x74eeebfb, 0x6cf8eedc
.word 0x8e3005f9, 0xe9f30824, 0x213e0c05, 0x939115f5, 0x117a8651, 0x6ecd00ab, 0x747064c8, 0xd4667c96
.word 0xf740c9ac, 0xa2f9f2e7, 0x6b4dc7a0, 0xc2cc04d3, 0x2bdd0875, 0xd5fcc184, 0xba36babf, 0xfe0854c5
.word 0x828789a1, 0xf5da0739, 0x6fb5dbd3, 0xc7483da9, 0x40f160fb, 0x066d7768, 0x2d491ecc, 0x1347b02b
.word 0x75b5590c, 0x94b59a05, 0xf77409f2, 0x462f9735, 0xc4267818, 0x21212f75, 0xf9de11a1, 0x6e8bdca3
.word 0xbb98fb8d, 0xe236088b, 0xebf78719, 0x74df54ec, 0x4c37cff8, 0xe48a771a, 0xd355d80b, 0x196b6e50
.word 0x8f34d4d0, 0x17777a7c, 0xc76c3339, 0x55c543e8, 0x9b85c405, 0xf7c4abf0, 0xe0e48dd3, 0x4baeb3af
.word 0x87ae7c36, 0xce85b50c, 0x39ca74ad, 0xafa11499, 0xf43ccb1c, 0xcb68d467, 0x866cf40c, 0x0be4bc52
.word 0x4651f8f9, 0x008bf549, 0xb55c4ff3, 0x26611608, 0x32479767, 0x7e233f39, 0x798146c9, 0xfe7b092d
.word 0x0def2cd7, 0xeeb10152, 0xc5bf1026, 0x42c12aed, 0xe71a6b2b, 0x60a40e4e, 0x9681a767, 0x873bef7e
.word 0xa98bbb85, 0xfbeb828e, 0xd3ccb142, 0x9a588468, 0xf2b271fa, 0x5abbdb81, 0x304be6ee, 0x78043f6d
.word 0x5389d27e, 0x94e9ba33, 0x95fd7d92, 0xe99f0ed7, 0x192176eb, 0xfe3278e6, 0xfb2586b8, 0x5672d412
.word 0xd6d36c7c, 0x55427397, 0x4e9bc94a, 0x08e051d9, 0xbb24966d, 0xb01cca6c, 0x56f327e3, 0x5970a9fe
.word 0xac7d8512, 0x7daf2bf8, 0xf69f9ab6, 0xfc5b5316, 0x09f14503, 0x0a2f1246, 0xcfd598e0, 0xcd98eb0d
.word 0xf800fa85, 0x6d11301c, 0x3651a673, 0x53ecb617, 0xb0d4543d, 0xed1bd82e, 0xa8cb382b, 0xd3a0d2e4
.word 0x2645b56e, 0xefbc8df8, 0xdec9bd56, 0xe50bedc9, 0x88f16a8f, 0x2e3b2157, 0x7bf554ac, 0xdd3fd26b
.word 0x6e2db924, 0xde34146c, 0xeda7f3a0, 0xa3ae8310, 0x4f4fd1a4, 0x815f28f7, 0x14267a86, 0x3b0a108a
.word 0xd4470499, 0x02a2df56, 0x9920665d, 0xd8a57f8a, 0x4962e746, 0x9204e3f2, 0x1321bde3, 0x781809cc
.word 0xa6133222, 0xcad195a9, 0x6e41ba62, 0x6cde6da1, 0x62e3c5ad, 0x54b09a6f, 0x835cee9f, 0x9a77ad0b
.word 0xc4385a38, 0x597ff629, 0x92dea23c, 0x9e16b9ac, 0x2705c1aa, 0x05df5c1e, 0x98f5a45b, 0x36ae215b
.word 0x8cd9c467, 0xbbcce663, 0xd30b02c4, 0x6c2af9a7, 0x2ae1b047, 0x22442846, 0x028b5285, 0x1a234087
.word 0x8129360b, 0x50d8a630, 0xa93cf832, 0xda3d7efe, 0x67e27a43, 0x8f4f0390, 0xaff7e566, 0x202ff8fa
.word 0x4c951d8d, 0x922b5421, 0x63188f2c, 0xe8d4bdb3, 0x2067b5dd, 0x168d1b60, 0x28a749a4, 0x5fef9e5e
.word 0xf19506a1, 0xd6f74051, 0xa6d25af5, 0xfbfc3f0e, 0x2f83c59d, 0x43cb69b5, 0xcc506cd1, 0xac3aa339
.word 0xf526ef1a, 0xace10bd9, 0x634187f5, 0xe4592902, 0x7a069966, 0x86f083b9, 0x6ad7c6ce, 0x2ee05494
.word 0x23817bee, 0x93abcbf0, 0x4aa779fd, 0x322770b8, 0xdc62f2ca, 0x94ed689f, 0x548b6523, 0x3564b6a8
.word 0xf866da5b, 0x83ae461a, 0xd612fc62, 0xd0728e5f, 0xd9e4a6dd, 0xfb6626e9, 0xd9525ac9, 0xe164b623
.word 0x4f3d4372, 0x25a60db6, 0x65594eb4, 0xfb4a1d1e, 0xf81604f4, 0x816481ce, 0x593ce6b1, 0xbfa2384c
.word 0x96403348, 0x33a89f1e, 0x1aa5035e, 0x34510a03, 0x1089865f, 0x6718f249, 0xe9be40fb, 0xad7b2d48
.word 0xda0a3bdd, 0xd65fda89, 0x17221154, 0x6700a36c, 0x9dfbf8ad, 0x4cdbcc0f, 0x3fcb41d1, 0x76de8b28
.word 0x0a36bbfe, 0x6c3190d7, 0x27cf6303, 0x2cfbdfaf, 0x3595a7ae, 0xae2de410, 0x6714dd77, 0x184ae246
.word 0xc999f2df, 0x1db8c90b, 0x7417e362, 0x8c346653, 0xb104330d, 0x6c9036bf, 0x18aedc4d, 0x71c80901
.word 0xb9f3ca89, 0x4686d7ab, 0xc1536203, 0xba74233d, 0x4bcbeb06, 0x3b4850a1, 0xaf12cc5e, 0xd044b01e
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 4999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
