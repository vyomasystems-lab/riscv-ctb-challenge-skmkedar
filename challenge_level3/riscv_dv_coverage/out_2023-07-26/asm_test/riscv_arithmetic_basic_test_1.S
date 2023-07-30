.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 1
                  csrw 0x305, x12 # MTVEC

mepc_setup:       
                  la x12, init
                  csrw 0x341, x12

init_machine_mode:
                  li x12, 0x1a00
                  csrw 0x300, x12 # MSTATUS
                  li x12, 0x0
                  csrw 0x304, x12 # MIE
                  mret
init:             
                  li x0, 0x8
                  li x1, 0xf
                  li x2, 0x1
                  li x3, 0x1
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0x7
                  li x7, 0x0
                  li x8, 0x6
                  li x9, 0xfed762d9
                  li x10, 0x5c79eae0
                  li x11, 0x4
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x15, 0x843ca4a6
                  li x16, 0xf791440d
                  li x17, 0x4
                  li x18, 0x0
                  li x19, 0xc
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0xff3c072f
                  li x23, 0xa9c6437
                  li x24, 0x32c8cc77
                  li x25, 0x0
                  li x26, 0xff0de69a
                  li x28, 0x7d4ef23f
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x1
                  la x27, user_stack_end
main:             li         t6, 0x1 #start riscv_int_numeric_corner_stream_0
                  li         a2, 0x1
                  li         t2, 0x1159b2e5
                  li         t5, 0x7f06f656
                  li         t4, 0x467bf8d6
                  li         ra, 0x46140027
                  li         t3, 0x1
                  li         s9, 0x0
                  li         s10, 0x1
                  li         s5, 0x0
                  addi        tp, s2, -1141
                  add         sp, a1, t6
                  nop
                  lui         a1, 913991
                  sub         s9, s11, a7
                  lui         s10, 948827
                  addi        a3, t1, -353
                  addi        t1, s1, 852
                  lui         zero, 439822
                  add         s6, s0, t0
                  addi        zero, s1, -616
                  nop
                  nop
                  nop
                  nop
                  add         a1, gp, tp
                  lui         gp, 89764
                  lui         t2, 768969
                  addi        t0, s5, 1719
                  addi        t2, s11, 1516
                  addi        s9, zero, 897
                  addi        s0, a1, 616
                  addi        s9, t0, 1296
                  addi        t5, s9, 1650
                  lui         zero, 807638
                  add         s3, a6, s6
                  lui         s3, 727342 #end riscv_int_numeric_corner_stream_0
                  li         t6, 0xd0f75f4 #start riscv_int_numeric_corner_stream_5
                  li         t5, 0x1
                  li         t4, 0x4fd2c623
                  li         tp, 0x0
                  li         s5, 0x0
                  li         t3, 0x0
                  li         t0, 0x29a62ea5
                  li         s3, 0x5b60e689
                  li         s4, 0x3434a6cc
                  li         a3, 0x67018cff
                  addi        s6, s7, -1899
                  add         s10, a4, s2
                  sub         t2, s9, s4
                  lui         s7, 1004715
                  sub         gp, s5, s0
                  nop
                  sub         s10, s3, tp
                  addi        t5, s0, 1513
                  nop
                  add         t3, sp, sp
                  lui         a3, 962634
                  add         s1, s3, s7
                  nop
                  nop
                  sub         zero, tp, s2 #end riscv_int_numeric_corner_stream_5
                  li         s9, 0x0 #start riscv_int_numeric_corner_stream_2
                  li         t6, 0x58fa192a
                  li         s0, 0x6c48d40d
                  li         t5, 0x1
                  li         t4, 0x1
                  li         t3, 0x72df9612
                  li         a0, 0x0
                  li         a2, 0x1
                  li         s8, 0x1
                  li         tp, 0x0
                  add         s4, t2, a2
                  lui         a2, 440630
                  addi        s5, t5, 1441
                  add         zero, tp, a2
                  sub         a3, t6, s1
                  add         s10, t2, zero
                  add         s7, a1, t4
                  nop
                  nop
                  sub         zero, s1, s3
                  sub         gp, s2, a6
                  lui         s10, 818711
                  nop
                  lui         zero, 985691
                  sub         a6, a1, t5
                  sub         zero, t5, s10
                  lui         s1, 700104
                  add         s10, a4, a7
                  nop
                  sub         gp, t0, a4
                  add         s6, s1, a1
                  lui         zero, 432577
                  lui         a2, 690949 #end riscv_int_numeric_corner_stream_2
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_6
                  li         t5, 0x0
                  li         s6, 0x1
                  li         s10, 0x0
                  li         t4, 0x2f293b1
                  li         t1, 0x1
                  li         s9, 0x0
                  li         a2, 0x236d011d
                  li         t2, 0x1
                  li         tp, 0x0
                  nop
                  sub         s4, sp, zero
                  lui         s6, 386402
                  lui         t2, 948865
                  addi        zero, s7, -1376
                  sub         t0, zero, s4
                  add         zero, ra, a2
                  sub         sp, s8, t1
                  addi        zero, t5, -1508
                  sub         a7, s1, s1
                  add         t1, t3, s11
                  addi        zero, a3, -782
                  addi        a7, s4, 918
                  add         s6, s9, s6
                  lui         zero, 961007
                  add         s5, a4, tp
                  lui         s2, 455436
                  sub         a6, s0, a6
                  addi        s9, s1, -223
                  nop
                  addi        ra, sp, 1325
                  lui         s4, 220387
                  sub         s8, a2, t6
                  sub         sp, t1, gp
                  addi        a1, a6, -1535
                  add         s0, a4, zero
                  addi        t6, s6, 118
                  nop
                  sub         t0, gp, a3 #end riscv_int_numeric_corner_stream_6
                  xori        zero, t2, -744
                  and         s8, t6, t3
                  auipc       a7, 621451
                  or          t5, ra, a2
                  add         s0, t2, s4
                  and         s3, a0, s5
                  lui         sp, 791752
                  slli        zero, s6, 10
                  auipc       gp, 463559
                  xor         a3, s4, tp
                  sll         s5, a1, a0
                  bne         a7, a7, 18f
                  slli        zero, s0, 4
                  bge         s2, a6, 14f
14:               srli        a7, gp, 1
                  addi        a3, gp, -162
                  blt         t2, s10, 22f
                  bgeu        s5, s0, 30f
18:               blt         zero, s7, 23f
                  auipc       zero, 402061
                  andi        s4, tp, -2026
                  slt         s6, gp, a5
22:               bne         s3, t2, 26f
23:               srli        sp, s2, 23
                  slt         a6, s1, s7
                  sra         zero, t1, sp
26:               or          s9, sp, s9
                  bge         a1, t2, 44f
                  add         t3, a4, s4
                  addi        a2, s8, 1938
30:               bge         a2, s4, 36f
                  addi        gp, s3, 1054
                  xori        s9, a7, 262
                  lui         s1, 344348
                  xori        a2, t6, -284
                  xor         zero, s4, s11
36:               srai        a7, s2, 10
                  sll         a7, s6, s3
                  lui         a3, 511628
                  and         sp, gp, s6
                  bgeu        t0, s6, 48f
                  and         zero, a7, t5
                  auipc       s7, 435351
                  sub         sp, tp, a0
44:               xori        t0, t5, -765
                  slt         s3, s1, tp
                  bge         gp, s11, 60f
                  andi        s2, ra, -1749
48:               bgeu        gp, gp, 60f
                  or          a6, s2, s8
                  srai        zero, s1, 30
                  slli        t5, s11, 28
                  addi        s7, t1, 176
                  slli        t5, a0, 7
                  andi        s10, a3, -134
                  sltiu       t4, t0, -1365
                  add         s8, a5, s8
                  xor         s10, t0, s5
                  ori         zero, gp, -776
                  sra         t2, t0, t1
60:               addi        s6, t6, -951
                  lui         t0, 813610
                  sltu        t6, a7, s7
                  or          a7, s6, s1
                  slt         s4, s10, s0
                  lui         zero, 243317
                  or          s1, s0, a4
                  slti        s10, s4, 1355
                  bgeu        tp, s3, 78f
                  sll         s2, t4, s1
                  slli        t5, s3, 5
                  xori        a7, s4, -717
                  add         a0, a1, a7
                  slt         t5, t2, ra
                  and         zero, zero, t3
                  xori        t1, t4, 391
                  auipc       a0, 1009589
                  nop
78:               ori         s0, s5, -350
                  add         a1, t0, s6
                  andi        a0, s10, -727
                  sub         t3, t0, s6
                  blt         s2, t3, 98f
                  bge         t3, sp, 102f
                  sra         s8, sp, a7
                  xori        ra, t0, -588
                  sltiu       s2, s0, -1871
                  srli        a0, s4, 8
                  beq         s4, s1, 99f
                  slt         t2, s1, a2
                  beq         a6, t4, 110f
                  blt         s0, a7, 107f
                  xori        s4, s6, -748
                  xor         zero, s10, s6
                  lui         s3, 1031982
                  slt         s6, t3, gp
                  xori        s5, s10, -1644
                  nop
98:               or          t6, s1, t3
99:               auipc       t2, 267821
                  bgeu        s8, t5, 114f
                  and         t1, a7, s7
102:              add         s5, a5, s8
                  nop
                  sltu        a3, gp, s3
                  srli        s8, t5, 17
                  slli        t6, tp, 24
107:              nop
                  slti        t6, a5, 586
                  lui         t0, 264028
110:              sra         t4, t2, t1
                  srl         s10, tp, a1
                  xor         ra, tp, a2
                  sub         a2, s10, t6
114:              bgeu        a6, a1, 122f
                  srl         t1, a7, s4
                  bltu        s9, ra, 124f
                  or          s8, a4, s2
                  ori         s10, s4, 1051
                  ori         s2, a7, 1686
                  blt         s6, s0, 125f
                  slli        a2, t0, 30
122:              srai        zero, a3, 23
                  bltu        s8, s6, 130f
124:              and         a6, a5, ra
125:              srl         s6, s7, t1
                  addi        s3, s11, -1318
                  beq         a4, a4, 138f
                  nop
                  addi        s7, s0, 120
130:              slli        zero, a1, 4
                  sltiu       s5, ra, -1411
                  srli        t2, t1, 17
                  xori        a0, s10, -1914
                  sltiu       tp, s1, 607
                  addi        s2, a1, -656
                  auipc       a1, 739322
                  sltu        t5, tp, t1
138:              sltiu       t1, s0, 1633
                  srl         a2, s2, s2
                  beq         a3, s5, 155f
                  slli        t5, s3, 8
                  ori         zero, s8, 1157
                  blt         tp, a6, 150f
                  and         a1, a2, t0
                  auipc       a7, 204295
                  bne         a0, s1, 163f
                  srli        t0, ra, 4
                  bgeu        s1, a2, 167f
                  beq         a5, a1, 155f
150:              and         t1, a1, a4
                  andi        s3, t6, 1243
                  sltu        a0, a4, t1
                  slti        s7, a3, 1436
                  bge         sp, a7, 174f
155:              bgeu        s2, a0, 173f
                  xor         t1, zero, a0
                  sll         s7, t5, s8
                  bne         t0, zero, 173f
                  bge         s8, sp, 173f
                  sltu        t0, t2, a6
                  srli        a1, s9, 27
                  bge         t2, a0, 170f
163:              bltu        zero, a3, 167f
                  bge         zero, a1, 170f
                  slti        s10, t0, -882
                  xor         s0, a2, t1
167:              sll         t5, s7, ra
                  addi        a3, t0, 1511
                  nop
170:              blt         t1, s6, 171f
171:              bgeu        s5, t4, 183f
                  slli        s2, a4, 26
173:              bgeu        t6, s11, 179f
174:              beq         t2, s2, 190f
                  bltu        a3, a7, 183f
                  nop
                  ori         s4, s1, -1848
                  bltu        t5, s11, 195f
179:              lui         ra, 505268
                  and         s3, a2, s1
                  andi        s4, s7, 280
                  srli        t1, t1, 11
183:              slli        t5, s9, 25
                  bltu        zero, a0, 204f
                  xor         a2, t0, a7
                  blt         s5, s11, 206f
                  srli        a7, s1, 27
                  addi        s6, t4, 1035
                  srai        s3, s8, 5
190:              andi        t4, s2, 1408
                  xor         s7, a3, s5
                  and         s8, s8, s4
                  sra         s2, s4, s1
                  sll         zero, a6, s4
195:              ori         s8, ra, 283
                  bltu        s1, a7, 203f
                  slt         zero, s0, a1
                  srai        s2, sp, 12
                  sra         s10, s4, s7
                  lui         zero, 543421
                  bne         t0, a2, 212f
                  slt         zero, a0, a3
203:              lui         a1, 919291
204:              sub         s10, t3, ra
                  auipc       a1, 380761
206:              andi        s2, t4, 1816
                  lui         t6, 472110
                  srl         ra, a0, gp
                  bge         a3, a7, 226f
                  srl         t1, t6, s3
                  or          s3, t6, s4
212:              nop
                  sub         s6, t1, gp
                  sub         a2, t3, s11
                  xor         a0, t6, s3
                  sra         s0, gp, a3
                  auipc       s1, 939858
                  sll         zero, t5, tp
                  andi        zero, gp, -502
                  sub         s10, s2, a1
                  and         a2, t3, s11
                  and         s3, s5, s7
                  bge         tp, s5, 233f
                  xor         t6, sp, s11
                  slti        s10, ra, -752
226:              slli        s8, s1, 1
                  slti        tp, t1, 399
                  srli        s3, gp, 20
                  blt         s11, a4, 248f
                  sltiu       a2, t4, 1104
                  srai        t3, t5, 14
                  slli        ra, t6, 11
233:              srli        t2, a6, 22
                  nop
                  sub         s7, t0, ra
                  bne         t5, t6, 249f
                  sll         s6, tp, t6
                  bltu        sp, sp, 256f
                  slt         tp, s9, s9
                  xori        s2, s0, 1797
                  sltiu       t3, a3, 1194
                  add         s4, a3, a3
                  srai        a7, s5, 16
                  andi        t3, s5, -729
                  slti        s7, t4, 1871
                  addi        tp, a2, -672
                  beq         tp, s5, 254f
248:              srai        t0, s4, 19
249:              xori        a1, t2, 1033
                  beq         s7, a5, 255f
                  lui         s1, 81651
                  blt         s6, sp, 257f
                  ori         ra, a3, 1583
254:              bne         a5, tp, 268f
255:              xor         a3, s6, a1
256:              or          s4, a5, tp
257:              andi        a0, s3, 337
                  bge         t4, a0, 266f
                  bge         a2, s8, 278f
                  bltu        a2, a4, 267f
                  slti        zero, s0, 483
                  addi        t2, s5, 918
                  slti        a7, s8, -871
                  slti        a1, sp, 265
                  add         t1, tp, s6
266:              and         a2, s3, s11
267:              sltiu       t6, a4, -207
268:              xor         zero, s6, s11
                  add         s0, gp, zero
                  ori         s0, s9, 83
                  bltu        s5, a7, 277f
                  nop
                  bgeu        s1, s1, 289f
                  sra         s6, a5, s2
                  andi        tp, gp, -1113
                  srli        zero, s9, 19
277:              slt         zero, s2, s10
278:              andi        sp, s10, -1721
                  sra         s0, a7, t1
                  sltu        tp, a3, a4
                  bltu        s3, a1, 292f
                  srli        s10, a5, 2
                  blt         s7, a6, 303f
                  bgeu        ra, a1, 289f
                  xor         s3, a4, t2
                  lui         zero, 130898
                  and         s8, zero, a4
                  add         t3, zero, s9
289:              xor         s5, s3, t0
                  addi        zero, s4, -1196
                  sub         t0, a5, s11
292:              slt         zero, sp, t4
                  sub         t6, tp, t0
                  nop
                  sltiu       t0, sp, 329
                  sra         zero, t4, t0
                  bne         sp, zero, 315f
                  srli        a6, tp, 13
                  sll         s3, a2, s9
                  bne         t4, a3, 306f
                  slti        t2, ra, -1575
                  bge         s4, a4, 309f
303:              slti        a7, t2, -1273
                  add         s1, t4, a7
                  srli        zero, gp, 20
306:              bltu        t5, a3, 317f
                  sll         sp, ra, s10
                  add         t5, a3, sp
309:              bne         s11, s0, 314f
                  sll         t6, s8, s5
                  sll         s3, s2, gp
                  slt         t4, a0, ra
                  bltu        s1, s11, 321f
314:              xori        s8, s8, 1505
315:              bltu        a3, s9, 329f
                  bge         zero, t0, 322f
317:              andi        zero, t2, -1038
                  blt         sp, a1, 322f
                  andi        gp, s1, 527
                  slli        s0, s0, 0
321:              add         t1, t4, s1
322:              blt         sp, s0, 339f
                  sub         s5, s1, a4
                  lui         t4, 619314
                  lui         t6, 270514
                  slli        s2, ra, 6
                  bne         s5, s3, 342f
                  sub         t4, a4, zero
329:              sra         s1, t1, s1
                  sltiu       s9, s5, 256
                  lui         t0, 454892
                  srli        zero, s2, 1
                  srli        t1, a4, 7
                  bne         s9, s3, 353f
                  bltu        t0, sp, 349f
                  li         a2, 0x0 #start riscv_int_numeric_corner_stream_3
                  li         t6, 0x0
                  li         t3, 0xf3004a8
                  li         t5, 0x0
                  li         t4, 0x0
                  li         s5, 0x1
                  li         s4, 0x0
                  li         s9, 0x45f3ff7f
                  li         t0, 0x0
                  li         s0, 0x0
                  nop
                  lui         ra, 431382
                  sub         zero, t4, s4
                  sub         ra, gp, s1
                  lui         a2, 101217
                  add         s2, s10, t6
                  nop
                  addi        a7, t0, -64
                  lui         a7, 112993
                  addi        sp, s9, 1626
                  lui         s7, 798971
                  addi        tp, s3, -1737
                  lui         s7, 33931
                  addi        s4, sp, 1888
                  lui         sp, 45666
                  sub         t1, s3, s3
                  sub         tp, a3, s5
                  lui         s9, 53302
                  add         a1, s2, tp
                  addi        a1, gp, 1629
                  nop
                  nop
                  sub         a6, a5, t1
                  nop
                  lui         s8, 78953
                  sub         s2, s7, s2
                  lui         t5, 504437
                  addi        t6, t0, -1398
                  add         a3, gp, s1
                  addi        t6, zero, -1727 #end riscv_int_numeric_corner_stream_3
                  beq         s6, t6, 344f
                  bltu        a4, s0, 348f
                  sub         tp, s0, t5
339:              beq         a0, t3, 346f
                  sltu        t6, s2, a4
                  ori         t4, tp, 1993
342:              add         s1, t3, t1
                  slt         s4, gp, t0
344:              sub         tp, a7, t5
                  bltu        t0, a2, 362f
346:              xor         a0, s2, t5
                  slti        sp, t3, -40
348:              sll         a7, gp, s1
349:              srl         s3, s6, s8
                  xor         t2, s5, t2
                  bgeu        a4, s4, 361f
                  nop
353:              xori        zero, a7, 183
                  slli        s10, a5, 18
                  beq         tp, s10, 374f
                  srli        t6, s10, 17
                  or          t4, tp, t3
                  srai        zero, ra, 27
                  bgeu        s1, a6, 360f
360:              xor         s4, t1, s1
361:              lui         zero, 311789
362:              beq         a5, s1, 369f
                  sltiu       s0, s8, -1652
                  add         zero, sp, a0
                  addi        t2, ra, 829
                  slti        zero, t5, -1999
                  xori        t5, t5, -1497
                  and         gp, tp, s1
369:              srl         s8, a5, s11
                  lui         s8, 393621
                  xor         s5, s5, t2
                  srl         ra, a1, a7
                  sltiu       s1, t3, -1747
374:              and         t4, s2, s9
                  bgeu        s8, a4, 383f
                  bge         t1, gp, 382f
                  auipc       s9, 2321
                  beq         s1, a5, 398f
                  auipc       tp, 255318
                  slli        a6, a2, 26
                  ori         s7, ra, -814
382:              sub         a1, a5, s2
383:              lui         s10, 297281
                  blt         s8, zero, 400f
                  bgeu        t1, s6, 398f
                  lui         s9, 910350
                  srai        t6, sp, 3
                  blt         s6, t3, 400f
                  bne         t0, t3, 405f
                  andi        a3, a3, 2012
                  blt         a6, a3, 410f
                  srli        s6, s7, 16
                  add         sp, tp, s8
                  bltu        s11, s5, 402f
                  blt         t5, gp, 413f
                  srl         a3, a6, s5
                  sll         a0, t2, s2
398:              bge         zero, s7, 406f
                  nop
400:              addi        s10, a5, 1581
                  add         a7, t2, ra
402:              blt         s4, s2, 408f
                  srai        s7, a0, 22
                  sra         a2, t6, a6
405:              slt         zero, t0, s0
406:              slt         a6, s7, s7
                  lui         t2, 40795
408:              srl         s7, t0, s2
                  slt         s6, t4, t5
410:              sltu        s6, gp, a4
                  xor         sp, tp, a5
                  bltu        s3, t2, 429f
413:              slli        t0, sp, 15
                  srai        t1, a5, 30
                  slli        s8, a4, 21
                  bltu        t1, t5, 431f
                  nop
                  slt         t5, s1, s4
                  sll         s8, a0, t5
                  slli        a3, t1, 1
                  xori        sp, a4, 81
                  blt         t0, s6, 436f
                  slti        zero, t6, 1953
                  slli        s4, a2, 13
                  srli        a6, s0, 6
                  srli        t0, a7, 6
                  slti        a6, sp, -1051
                  bltu        a5, a4, 435f
429:              sub         zero, a3, s3
                  sltu        zero, t0, s3
431:              addi        s1, a2, -290
                  bltu        s10, s7, 442f
                  nop
                  sltu        s0, t2, s2
435:              slti        s0, t3, 405
436:              srli        t5, a0, 15
                  sra         zero, t6, t2
                  srai        s3, gp, 9
                  bltu        a4, a5, 440f
440:              bltu        t5, a3, 447f
                  bgeu        a4, a3, 460f
442:              auipc       a1, 33833
                  bgeu        tp, a0, 449f
                  slti        t3, t5, 804
                  slti        a3, a0, -897
                  slt         gp, t3, t3
447:              beq         a6, t1, 460f
                  auipc       s5, 289442
449:              auipc       s0, 590517
                  bgeu        zero, gp, 457f
                  lui         s6, 168596
                  srl         zero, t3, a0
                  or          zero, sp, s10
                  xori        s0, ra, -1438
                  auipc       a1, 835798
                  auipc       s5, 914046
457:              or          t0, t3, a3
                  bge         ra, a0, 469f
                  bltu        a6, s6, 475f
460:              srli        gp, zero, 16
                  slli        t6, s4, 6
                  sra         t5, sp, t0
                  nop
                  xori        gp, s5, -760
                  srl         a0, a0, ra
                  slt         ra, a2, tp
                  xor         zero, t6, s1
                  add         s5, t1, a3
469:              andi        a3, a3, 1803
                  andi        a7, t6, 1221
                  bge         t1, t1, 483f
                  auipc       a1, 759249
                  srl         s8, a5, t1
                  srai        t6, s7, 11
475:              andi        s0, s7, -1609
                  bne         t3, s4, 481f
                  srai        s4, s10, 21
                  xor         t2, a7, s6
                  nop
                  and         s0, a5, s10
481:              sltu        s1, s3, s3
                  slt         s4, a6, s5
483:              blt         s4, a0, 494f
                  addi        s8, sp, 13
                  bgeu        s8, s3, 505f
                  bge         a4, s8, 500f
                  srl         t4, sp, t6
                  bgeu        t5, s10, 496f
                  xori        ra, s4, 114
                  andi        zero, s7, 1971
                  xori        a2, a0, -1948
                  xor         s2, s5, t3
                  srai        s2, a4, 0
494:              sll         a6, a6, gp
                  and         s2, s6, a2
496:              or          s2, a0, gp
                  lui         s4, 809021
                  and         t5, s6, t0
                  nop
500:              andi        s9, a3, 118
                  and         t3, a4, tp
                  srli        t1, s9, 26
                  bgeu        t1, s5, 507f
                  add         zero, s8, a5
505:              and         zero, s5, s5
                  add         a6, s2, a4
507:              srl         t3, t6, a0
                  blt         t6, t0, 513f
                  slt         a6, gp, s4
                  srli        t0, tp, 31
                  sub         s6, a7, s8
                  bne         s0, s11, 528f
513:              lui         sp, 179421
                  slti        s2, ra, 1317
                  bgeu        a2, a6, 521f
                  nop
                  sll         a3, s2, a0
                  ori         s10, s5, 104
                  auipc       s2, 783131
                  beq         s6, t4, 540f
521:              srai        t3, s11, 5
                  sll         zero, s5, tp
                  or          t5, s2, s11
                  lui         t0, 395833
                  slli        sp, s1, 11
                  srai        s0, s6, 18
                  slli        sp, s8, 22
528:              srai        tp, a3, 4
                  addi        t0, t1, -1296
                  blt         s4, s2, 547f
                  xor         s4, s6, tp
                  sltu        t5, s11, a0
                  bltu        s6, gp, 547f
                  andi        s10, s5, -255
                  or          a6, gp, s9
                  beq         s1, s8, 551f
                  bne         a7, s11, 538f
538:              lui         zero, 133553
                  and         s10, gp, s5
540:              bltu        a6, a3, 548f
                  addi        s7, s6, -1143
                  and         t4, t2, t1
                  srai        t1, a0, 9
                  bgeu        t2, t6, 555f
                  or          zero, a3, s10
                  ori         t0, gp, 1795
547:              bge         sp, s2, 553f
548:              sltu        s6, s7, t2
                  add         s7, a1, sp
                  slti        t6, a3, -1316
551:              add         t3, a4, gp
                  bltu        t3, s1, 563f
553:              bgeu        tp, a1, 561f
                  blt         gp, a0, 560f
555:              sub         gp, ra, t6
                  slli        a3, s0, 31
                  srai        a2, s10, 8
                  srl         a3, a7, ra
                  or          a6, t1, s4
560:              add         s10, s0, s7
561:              sll         a6, s7, s5
                  addi        s5, t2, 1630
563:              xor         gp, s8, a0
                  sltiu       a6, a1, -698
                  or          s8, a0, s3
                  andi        s8, t3, -1513
                  addi        t1, t0, 1026
                  andi        gp, s7, -1917
                  slti        zero, a7, 1241
                  sra         a6, sp, zero
                  auipc       a6, 72756
                  bgeu        gp, s2, 588f
                  sll         s8, sp, t4
                  bltu        s5, sp, 592f
                  or          t2, s8, ra
                  srai        tp, s9, 25
                  xor         t3, s1, a0
                  auipc       t4, 76176
                  add         t3, t5, a2
                  bge         zero, zero, 599f
                  add         zero, s2, s1
                  srl         s5, s7, s4
                  xor         s0, s3, t6
                  xor         t2, s3, t3
                  srl         t4, a3, tp
                  andi        a7, t2, -1994
                  beq         a7, s0, 595f
588:              or          s7, a0, t5
                  slli        gp, zero, 15
                  srl         zero, a7, a7
                  slt         t4, ra, s5
592:              srl         zero, a0, a3
                  xor         s6, a1, s8
                  slt         t5, s6, ra
595:              sub         s3, ra, s8
                  bge         a3, a2, 602f
                  slli        a7, a2, 13
                  addi        s7, t6, -97
599:              ori         t4, s10, -1063
                  ori         zero, s2, 27
                  slli        zero, tp, 0
602:              nop
                  srli        a1, a6, 11
                  sltiu       t6, s2, -185
                  sra         zero, s8, s2
                  bgeu        s8, t1, 610f
                  slti        t1, s4, -1758
                  add         t1, a4, a4
                  sll         a6, s0, t0
610:              bltu        a6, s6, 630f
                  or          s10, s10, a2
                  srai        t3, t3, 14
                  add         s1, s3, s1
                  andi        zero, t5, -788
                  auipc       s4, 4686
                  sltu        s0, t0, t1
                  lui         a6, 594907
                  andi        a6, s10, -1649
                  bltu        gp, tp, 638f
                  bgeu        s10, a0, 625f
                  slt         s0, a3, a3
                  bge         s6, a2, 639f
                  sra         gp, a7, a1
                  sra         a1, s6, s4
625:              or          zero, s7, zero
                  beq         s8, a5, 639f
                  bltu        s1, s3, 632f
                  bge         a3, t0, 640f
                  sub         s4, a1, sp
630:              beq         a4, s3, 646f
                  lui         gp, 873378
632:              auipc       a7, 142009
                  bgeu        s2, s10, 653f
                  lui         zero, 3777
                  slti        t4, a3, -2028
                  sub         t3, t0, t5
                  sltu        t3, a7, ra
638:              sub         a2, s1, s0
639:              xor         gp, s10, a3
640:              blt         zero, a7, 647f
                  sra         zero, s2, t4
                  andi        t1, t1, -1884
                  auipc       s5, 794002
                  bgeu        t2, a0, 661f
                  xori        s10, s0, -749
646:              blt         a7, s4, 660f
647:              lui         sp, 1027094
                  lui         tp, 823618
                  srai        t6, t4, 11
                  sra         s6, s0, ra
                  or          s4, t2, t6
                  xor         s6, s11, a1
653:              addi        s3, s4, 870
                  and         gp, t6, gp
                  xor         s2, s7, zero
                  blt         t3, a6, 663f
                  addi        zero, tp, 1429
                  ori         s7, s8, 990
                  srl         zero, t3, s9
660:              bne         s6, s9, 670f
661:              bne         a2, a0, 668f
                  bltu        gp, zero, 681f
663:              sra         a0, s6, a1
                  sltu        s8, a1, s4
                  bgeu        t5, s9, 673f
                  addi        a2, a1, 1166
                  sub         s5, a7, s4
668:              andi        t2, t4, 1190
                  sltiu       a0, t1, -1091
670:              slti        t0, s2, 1471
                  bgeu        s8, s0, 677f
                  blt         s2, tp, 691f
673:              slli        sp, s10, 3
                  sltu        s3, a5, gp
                  sll         a6, t4, a0
                  or          tp, t1, s9
677:              slti        s5, a3, -2026
                  sltiu       t5, t6, -1756
                  or          zero, tp, a1
                  xori        t5, s5, 603
681:              slli        t2, a6, 24
                  slt         t2, a3, a6
                  auipc       t2, 373076
                  slti        a1, t1, 1191
                  andi        zero, s0, 1175
                  sltu        zero, a4, sp
                  sltu        sp, t2, t0
                  bltu        ra, a6, 695f
                  and         s3, a2, t2
                  and         t0, s10, t5
691:              nop
                  bne         a0, s4, 700f
                  sll         gp, a3, s9
                  lui         s8, 902936
695:              or          s1, a1, s6
                  slt         a7, ra, a2
                  blt         t6, a4, 702f
                  bge         s8, t1, 706f
                  xor         t1, a2, s2
700:              sll         s10, a1, sp
                  srl         a3, a4, tp
702:              nop
                  beq         s4, a2, 720f
                  beq         t2, t3, 720f
                  nop
706:              blt         s2, ra, 726f
                  blt         a2, s0, 714f
                  xor         ra, a6, t1
                  or          s7, gp, tp
                  add         zero, t3, tp
                  sub         a1, s11, ra
                  and         a7, t2, sp
                  srai        tp, t6, 2
714:              ori         gp, a7, -1729
                  sll         t0, s1, a6
                  slti        a3, s0, -1594
                  sll         t2, s0, s6
                  sll         t6, a7, a1
                  sltu        t0, t0, t2
720:              xor         t5, a2, s7
                  nop
                  bge         a7, s4, 729f
                  andi        s4, s5, -1554
                  sll         s9, a7, t6
                  addi        t3, zero, 235
726:              sub         zero, s8, a7
                  or          a2, zero, s8
                  bgeu        s10, s8, 733f
729:              andi        zero, s10, -289
                  xori        zero, a2, -531
                  slli        sp, t1, 21
                  blt         s7, sp, 742f
733:              srl         a1, a7, s10
                  sll         s9, t3, t0
                  and         s6, s1, tp
                  xor         s2, a0, s7
                  slti        zero, s7, -1221
                  bgeu        sp, ra, 754f
                  slli        t0, a7, 3
                  sltiu       sp, a3, -1419
                  auipc       t6, 275920
742:              bgeu        t0, ra, 759f
                  auipc       t3, 794620
                  auipc       zero, 54673
                  srai        sp, ra, 7
                  bgeu        a1, s9, 760f
                  nop
                  and         t3, a0, s1
                  ori         s0, t5, -1628
                  nop
                  bltu        s7, s3, 766f
                  sll         s10, s0, s3
                  beq         s11, s0, 767f
754:              slti        gp, s6, 1254
                  sra         t5, s1, s4
                  srai        a1, t2, 21
                  bge         s1, a0, 775f
                  addi        t1, t0, 676
759:              bgeu        s11, a5, 760f
760:              srli        gp, s6, 7
                  slti        t0, a6, -1378
                  ori         gp, a3, -1422
                  sra         t6, s2, s11
                  xor         s5, s0, a1
                  xori        ra, s8, -1883
766:              bltu        a6, sp, 779f
767:              sltu        s7, a4, a3
                  beq         s1, a6, 779f
                  blt         t3, s5, 780f
                  sltu        s6, ra, a6
                  slti        s3, gp, -556
                  sll         a6, s0, a1
                  slti        s2, ra, -1420
                  ori         s4, s0, -634
775:              blt         t5, s3, 795f
                  xori        a0, a2, -808
                  sltiu       a3, t4, 1135
                  bge         a0, sp, 784f
779:              srli        t3, t4, 20
780:              ori         gp, t3, -447
                  blt         s1, a7, 787f
                  beq         a3, ra, 794f
                  auipc       a2, 1024500
784:              srl         t3, a5, s1
                  bne         a5, s9, 789f
                  ori         zero, a6, 2038
787:              ori         t6, s5, 1768
                  blt         s0, t4, 804f
789:              bne         a0, s8, 805f
                  and         a2, a3, s5
                  bne         ra, s1, 810f
                  xori        a1, zero, 1292
                  sltiu       zero, a2, -496
794:              sra         s7, zero, ra
795:              slli        s7, a1, 14
                  or          a7, gp, s8
                  beq         s8, s8, 804f
                  sltu        zero, s5, s9
                  sub         a6, a4, s5
                  srli        zero, s5, 31
                  or          t5, tp, tp
                  andi        s3, ra, 1124
                  lui         a0, 284002
804:              sra         t5, t1, t3
805:              slli        s9, a3, 24
                  andi        zero, t3, 1179
                  ori         zero, a6, -469
                  srl         t3, sp, t2
                  bltu        s0, a5, 816f
810:              bltu        s4, s7, 828f
                  and         s7, tp, zero
                  bne         t0, s6, 827f
                  and         t5, sp, a0
                  sra         zero, a7, t6
                  srli        s2, s0, 20
816:              bgeu        s8, s11, 835f
                  slt         s1, a2, zero
                  bge         s4, a6, 822f
                  srl         s5, s3, t2
                  lui         s7, 746396
                  slli        zero, gp, 31
822:              bgeu        zero, a2, 828f
                  nop
                  sub         zero, a4, t3
                  srl         s4, s8, t0
                  bne         s4, s6, 840f
827:              sltiu       s6, a3, -693
828:              sra         s4, s11, s3
                  andi        t5, ra, 1582
                  or          t2, tp, ra
                  bgeu        a6, gp, 837f
                  ori         zero, zero, -243
                  beq         a2, t1, 844f
                  nop
835:              nop
                  nop
837:              slt         zero, t2, s9
                  bltu        t4, s9, 846f
                  sltiu       a0, s6, 221
840:              sll         a3, ra, t6
                  or          zero, t4, a2
                  add         a1, s3, a5
                  auipc       t5, 715109
844:              sll         a6, ra, s7
                  blt         t1, t4, 859f
846:              xor         s8, t3, t1
                  sll         a2, tp, s0
                  blt         a4, s6, 865f
                  sll         s2, t2, a6
                  sub         t3, t4, t2
                  auipc       t5, 240989
                  lui         t1, 862403
                  xori        s5, s4, 1353
                  bltu        s10, a0, 874f
                  bltu        t1, t4, 865f
                  xor         zero, s2, s5
                  sra         a1, sp, s6
                  add         zero, s5, ra
859:              xor         s6, s1, a3
                  srai        t1, s10, 5
                  and         t2, t0, t1
                  slti        a2, ra, 1948
                  sub         a0, s0, t6
                  slt         s5, s7, s2
865:              xori        t4, t1, 1215
                  slt         sp, t0, t4
                  ori         t0, s10, 263
                  slli        a3, t0, 26
                  sll         s7, a1, a5
                  lui         a1, 474685
                  beq         a1, a3, 876f
                  slli        a0, s8, 25
                  srai        a7, t1, 30
874:              slli        t1, t0, 14
                  xor         s4, t4, s8
876:              ori         t0, a6, -734
                  slt         gp, s10, t0
                  auipc       s3, 467267
                  blt         t5, s3, 892f
                  bgeu        t0, a0, 888f
                  bge         t5, t6, 887f
                  sltu        s2, a5, t3
                  xor         a0, s8, a4
                  srl         a0, a3, sp
                  nop
                  srl         zero, t2, a5
887:              or          t5, a5, s7
888:              sltu        zero, s7, s2
                  sltiu       a7, t4, 1538
                  bgeu        t3, t3, 898f
                  andi        s5, tp, 1854
892:              xori        s1, s10, 1431
                  srli        s3, t6, 22
                  blt         a5, sp, 905f
                  nop
                  sll         a7, s1, s1
                  add         t3, s7, t4
898:              sltu        a3, a5, s0
                  sub         ra, s2, gp
                  blt         s9, s2, 907f
                  bgeu        s7, a1, 906f
                  slt         s8, s10, a3
                  sub         sp, ra, ra
                  sltiu       s7, s5, -839
905:              bge         a1, t3, 917f
906:              add         t1, s10, tp
907:              bgeu        t1, t1, 927f
                  xori        zero, t2, -1608
                  slt         s4, s5, t4
                  bgeu        a5, gp, 927f
                  auipc       a1, 501243
                  sltiu       t4, zero, 505
                  add         a3, t3, t3
                  xor         t5, a4, a3
                  and         zero, t6, t4
                  ori         gp, t4, 1889
917:              lui         t6, 61859
                  srl         s4, a4, s4
                  bltu        t5, a7, 920f
920:              beq         gp, s2, 927f
                  bltu        a1, t3, 939f
                  srai        s5, s7, 2
                  sub         a7, s1, t0
                  and         a2, s11, t6
                  addi        t6, s11, -1696
                  bgeu        t3, s4, 945f
927:              bge         t3, s2, 944f
                  bne         sp, a5, 939f
                  bne         s6, t0, 930f
930:              slli        s1, s10, 11
                  xori        s5, zero, -1283
                  bne         t4, t0, 939f
                  lui         s4, 78153
                  bltu        ra, a3, 948f
                  slt         s3, sp, a2
                  sltiu       zero, s2, -1688
                  xor         t0, tp, a1
                  sltu        s3, s4, a2
939:              sltu        s3, t3, a4
                  addi        s4, a6, -721
                  add         s4, t2, a7
                  srai        a1, s8, 4
                  bgeu        t0, s8, 962f
944:              bge         gp, s8, 952f
945:              andi        ra, a6, 201
                  li         t6, 0x0 #start riscv_int_numeric_corner_stream_4
                  li         t5, 0x0
                  li         t1, 0x1
                  li         a0, 0x0
                  li         a3, 0x0
                  li         s0, 0x517ec600
                  li         a1, 0x0
                  li         t3, 0x0
                  li         s4, 0x0
                  li         s6, 0x0
                  addi        s10, a5, -1518
                  add         s6, a3, ra
                  nop
                  lui         s8, 246298
                  add         t6, t2, a2
                  addi        t2, s4, -1964
                  addi        ra, a6, 1278
                  addi        s5, tp, -833
                  add         gp, s6, s4
                  sub         s0, a2, s7
                  addi        t3, s1, 100
                  add         sp, t5, s1
                  lui         zero, 323682
                  add         a2, t4, a7
                  add         s1, s5, s9
                  nop
                  addi        a0, ra, 1624
                  nop
                  sub         t6, s11, s7 #end riscv_int_numeric_corner_stream_4
                  bge         a0, a7, 954f
                  ori         s0, s3, 1783
948:              bne         t2, zero, 953f
                  ori         a2, s1, 516
                  sra         a2, t1, t5
                  add         s5, s11, tp
952:              addi        t0, ra, 914
953:              srli        s2, t0, 26
954:              bge         s11, s6, 961f
                  beq         t1, gp, 967f
                  andi        s8, gp, 868
                  slt         s1, sp, s3
                  bge         t3, a0, 973f
                  sll         t3, a7, s4
                  sll         t6, tp, ra
961:              and         t2, s3, s10
962:              slt         zero, s6, s1
                  slti        t2, t1, -679
                  srai        a2, s9, 12
                  srli        s8, s1, 7
                  and         gp, a5, tp
967:              add         zero, s0, sp
                  xori        zero, zero, -1007
                  xor         s8, t6, a4
                  auipc       t6, 249845
                  andi        s7, t3, -1889
                  and         t3, tp, a4
973:              beq         a3, a7, 977f
                  bge         a0, s2, 988f
                  beq         s6, s6, 981f
                  auipc       s9, 267238
977:              slt         sp, s9, s8
                  xori        ra, a4, 351
                  slli        s10, t3, 22
                  srai        t0, a7, 6
981:              or          a2, a1, a1
                  slt         t6, s4, s11
                  add         zero, zero, s8
                  sll         t0, t0, a2
                  bne         sp, s11, 991f
                  slti        s9, t6, -2018
                  and         zero, ra, s10
988:              srai        s10, a6, 15
                  sltu        t5, a1, s7
                  bgeu        a5, t6, 1003f
991:              srai        t3, ra, 5
                  srli        a2, s3, 3
                  lui         a0, 416936
                  sub         s7, t3, s8
                  bne         t3, sp, 1003f
                  blt         s5, s9, 1012f
                  slt         a3, a6, a3
                  ori         zero, t3, -186
                  bltu        s7, s11, 1015f
                  andi        s7, t6, 386
                  nop
                  bgeu        s11, s10, 1022f
1003:             lui         s2, 489071
                  sltu        s8, ra, t0
                  bgeu        a7, sp, 1022f
                  lui         t0, 23636
                  add         zero, a5, t6
                  srli        s6, s0, 28
                  slli        a2, a3, 23
                  srl         s2, s8, a5
                  srai        a3, s2, 15
1012:             ori         s7, a6, -1999
                  sltiu       s2, s11, 871
                  bge         zero, t6, 1020f
1015:             nop
                  blt         a1, a0, 1027f
                  or          s2, s3, a1
                  sra         s7, s9, ra
                  xori        s7, a0, 759
1020:             slli        zero, gp, 8
                  sra         t1, a6, tp
1022:             srl         t5, sp, t5
                  ori         zero, t2, -117
                  blt         t1, t3, 1034f
                  or          zero, zero, s10
                  xori        zero, s3, 310
1027:             srli        s10, a7, 21
                  bgeu        s7, s11, 1033f
                  sltiu       gp, a2, 836
                  andi        s4, t0, -756
                  beq         s4, t1, 1051f
                  srai        zero, s11, 5
1033:             add         a6, tp, tp
1034:             sltiu       zero, zero, 1317
                  or          s2, s9, t0
                  bne         t5, a5, 1041f
                  lui         t2, 703346
                  xori        t0, s11, -99
                  sra         s6, gp, a3
                  bgeu        s0, ra, 1056f
1041:             and         zero, t3, t2
                  slli        t4, s11, 31
                  bltu        s10, a7, 1059f
                  bne         s3, a1, 1051f
                  slli        gp, s6, 15
                  sll         s3, s2, s10
                  auipc       s7, 789107
                  sltiu       s0, ra, 646
                  xori        t0, t4, -1236
                  ori         s9, a0, -1232
1051:             srai        a0, a3, 22
                  lui         a7, 198809
                  sltu        s10, s4, a7
                  andi        s0, s10, -850
                  srl         s9, s5, s4
1056:             bge         t0, t3, 1060f
                  and         s2, s1, a2
                  srl         a1, s1, t2
1059:             bge         gp, a7, 1066f
1060:             nop
                  bge         s1, a5, 1067f
                  sltiu       a2, a6, 340
                  bne         a3, a2, 1075f
                  auipc       s5, 534541
                  bge         t5, a1, 1073f
1066:             sub         t6, s0, a5
1067:             nop
                  sltu        s7, s9, s11
                  andi        a2, t0, 1256
                  xor         a2, zero, zero
                  add         t5, ra, a4
                  slli        tp, s6, 19
1073:             bne         s1, s11, 1083f
                  sltiu       s9, tp, -2013
1075:             add         s4, s1, s2
                  srl         zero, s2, s7
                  beq         s11, t5, 1088f
                  xori        ra, s7, 1017
                  bne         a0, a0, 1084f
                  sltu        t6, gp, gp
                  srai        t6, s0, 29
                  slt         a0, a1, t2
1083:             or          a0, s2, s3
1084:             blt         s2, t3, 1098f
                  slli        gp, tp, 19
                  bge         s11, a1, 1092f
                  or          t6, s2, a0
1088:             xori        a1, t4, 1853
                  bgeu        s4, a3, 1104f
                  sra         s10, sp, s4
                  slt         zero, s2, s8
1092:             blt         a1, a7, 1109f
                  srl         a0, zero, a4
                  srl         t0, s1, sp
                  nop
                  auipc       t4, 718252
                  srli        gp, a2, 26
1098:             addi        t0, a4, -1244
                  bgeu        t4, t1, 1106f
                  sll         ra, a0, a6
                  srl         a2, a4, ra
                  and         a3, a3, a4
                  or          a6, ra, t6
1104:             srli        a1, a5, 12
                  addi        ra, t0, 1629
1106:             bltu        t2, t3, 1117f
                  lui         s8, 339897
                  blt         s11, t5, 1122f
1109:             srai        sp, a4, 22
                  sub         s5, s9, t1
                  slt         s10, t4, tp
                  sltiu       zero, s7, -211
                  xor         s3, t2, a3
                  sltiu       zero, t5, -133
                  srl         gp, s1, a2
                  xori        zero, t4, 1487
1117:             nop
                  add         s7, gp, s3
                  addi        s3, ra, 817
                  lui         zero, 864045
                  andi        s0, gp, -1173
1122:             xori        a1, tp, -1215
                  and         gp, s11, gp
                  bltu        t0, s1, 1132f
                  bne         a2, s4, 1138f
                  xor         a6, s7, a7
                  sll         t6, t5, s9
                  xori        sp, s4, -1252
                  sltu        t2, s11, t0
                  nop
                  srai        zero, t5, 24
1132:             srai        s2, s5, 30
                  blt         s10, a2, 1150f
                  sll         a2, ra, zero
                  or          t0, s2, s2
                  bge         s11, s1, 1156f
                  auipc       t2, 357416
1138:             andi        s5, tp, -1289
                  sub         s10, zero, a1
                  sltu        zero, s2, t0
                  bge         a6, s4, 1159f
                  beq         s4, a5, 1150f
                  sub         zero, sp, a1
                  srai        t2, s7, 21
                  andi        s10, tp, -111
                  xori        t4, a1, -314
                  sub         t0, s5, ra
                  beq         a2, gp, 1167f
                  xor         zero, t4, a5
1150:             nop
                  ori         a6, a6, 1683
                  bgeu        s8, a0, 1172f
                  nop
                  sra         s6, t3, a6
                  srl         s5, t2, a6
1156:             auipc       a7, 252413
                  sra         zero, t2, gp
                  lui         s3, 314299
1159:             or          t6, a6, t0
                  blt         a2, t2, 1161f
1161:             ori         s6, a3, -159
                  bne         s6, s10, 1168f
                  srai        t0, t5, 24
                  bltu        t2, s3, 1183f
                  add         a2, ra, s6
                  srli        s8, s11, 19
1167:             lui         t3, 778110
1168:             sra         tp, s6, t0
                  slli        a2, a7, 21
                  sll         tp, a7, a5
                  andi        t2, t6, 1680
1172:             srli        s6, s7, 22
                  bne         t4, t2, 1185f
                  srli        a0, gp, 24
                  and         gp, s10, s5
                  sltiu       a1, t3, -750
                  addi        a3, a0, -1831
                  sub         zero, t6, s0
                  sub         s3, t1, s8
                  sltiu       t2, t0, 531
                  lui         t0, 670882
                  auipc       a3, 662951
1183:             lui         s6, 821101
                  bgeu        ra, tp, 1198f
1185:             srai        a0, a5, 14
                  lui         t1, 708222
                  lui         a3, 471625
                  lui         a6, 261023
                  andi        a2, ra, 223
                  or          gp, a2, t3
                  and         sp, t1, s8
                  slt         ra, a1, s3
                  bne         t2, s4, 1204f
                  srli        gp, tp, 20
                  srli        zero, s4, 28
                  srli        t2, a4, 14
                  sra         s8, a0, a5
1198:             addi        a0, t3, 283
                  xori        a7, a6, 152
                  bgeu        tp, s7, 1204f
                  srai        s8, s10, 20
                  sltu        a7, s8, s3
                  ori         t3, t3, -1023
1204:             auipc       ra, 381252
                  lui         a3, 155587
                  srl         s4, t0, sp
                  sub         a2, t3, s2
                  andi        t0, s7, 263
                  sub         s6, s6, sp
                  srai        tp, s2, 19
                  bge         s11, a2, 1218f
                  srai        tp, t2, 3
                  sll         a0, sp, s9
                  sltu        s3, t5, t6
                  auipc       a7, 142394
                  andi        s7, a3, 1269
                  slt         s4, s10, gp
1218:             sra         s3, t0, s4
                  sra         a6, t5, s5
                  bgeu        sp, a2, 1225f
                  sra         s4, s2, t0
                  or          a3, a5, s5
                  addi        zero, s0, 1796
                  xori        t2, a4, 1626
1225:             beq         a1, s0, 1245f
                  add         zero, a7, t6
                  blt         s9, s9, 1240f
                  slli        t6, s1, 6
                  addi        zero, s9, 778
                  beq         s3, t3, 1246f
                  sub         a1, zero, t3
                  blt         s10, t0, 1239f
                  add         s10, a3, s6
                  xori        zero, s7, -488
                  nop
                  slt         s1, zero, t3
                  ori         a0, s6, -244
                  andi        a2, a6, 283
1239:             sub         zero, sp, a6
1240:             bgeu        a3, zero, 1248f
                  srl         s2, s2, t3
                  or          gp, s5, s2
                  sra         t1, s11, t3
                  sra         gp, zero, s5
1245:             srai        a3, t3, 28
1246:             addi        s7, s8, 1207
                  beq         zero, a5, 1255f
1248:             bgeu        s5, t4, 1265f
                  auipc       t3, 543654
                  and         a6, s1, s2
                  bne         s10, s7, 1268f
                  xori        a3, t0, 1746
                  sltu        zero, a7, t1
                  auipc       s9, 211994
1255:             srli        zero, a3, 29
                  sra         s1, s4, t6
                  or          t0, t6, a7
                  xor         s4, s7, a7
                  sra         t6, s4, t5
                  sltu        s3, s1, a6
                  add         t2, t3, t6
                  bne         t3, sp, 1272f
                  and         s9, a3, ra
                  ori         a2, s0, 1691
1265:             blt         t5, t3, 1271f
                  lui         zero, 1028897
                  xori        s1, a0, -1573
1268:             slli        s1, s8, 0
                  blt         a2, s4, 1274f
                  xor         zero, s11, t3
1271:             sra         s7, s0, s0
1272:             andi        t5, a5, 1470
                  srl         zero, s3, sp
1274:             nop
                  bltu        zero, a4, 1293f
                  lui         s6, 708528
                  xor         a3, ra, s7
                  sltu        t0, zero, s6
                  xor         a0, s1, s4
                  auipc       s4, 262212
                  xor         a2, s4, s5
                  and         t0, s6, s11
                  ori         zero, s2, -98
                  xor         a6, s1, s1
                  srli        s6, t0, 18
                  xor         s9, s8, t4
                  andi        s9, a6, -853
                  sub         s4, gp, s9
                  bne         t3, ra, 1305f
                  srli        zero, a3, 28
                  and         gp, s9, s0
                  slti        a6, s0, -1984
1293:             srli        tp, t4, 19
                  nop
                  xor         s10, s8, t5
                  bne         s2, gp, 1297f
1297:             bgeu        t2, s10, 1303f
                  xori        a7, s6, 1662
                  srli        s9, a2, 6
                  slt         t0, a5, tp
                  andi        a3, s8, 1463
                  slti        sp, s4, -2027
1303:             blt         s8, zero, 1318f
                  sltu        zero, s2, t1
1305:             addi        zero, tp, -313
                  bge         t0, t3, 1317f
                  beq         s1, a7, 1315f
                  ori         s6, s10, -1561
                  sra         s5, a5, t0
                  xor         s4, s11, t5
                  srl         s9, s10, s6
                  srai        s8, ra, 18
                  addi        s7, t6, 1944
                  srli        gp, a6, 29
1315:             sltu        zero, s3, t3
                  beq         a1, ra, 1323f
1317:             sltu        gp, s0, zero
1318:             slli        s0, s2, 28
                  sub         gp, t1, s5
                  blt         s4, s5, 1339f
                  andi        a6, a7, 1449
                  sltu        t3, sp, t3
1323:             and         gp, a2, tp
                  addi        s7, s5, -857
                  lui         a3, 983484
                  sub         t5, a1, gp
                  add         a7, s0, s2
                  slti        zero, t2, -522
                  sltu        s1, tp, ra
                  and         zero, s2, t5
                  bgeu        s2, gp, 1351f
                  bltu        t6, a4, 1351f
                  slli        s1, a5, 24
                  bge         s9, s7, 1348f
                  sub         s3, sp, a7
                  bgeu        s1, a1, 1342f
                  srli        t4, s6, 17
                  sll         t0, zero, s11
1339:             sub         tp, s8, s11
                  auipc       t3, 365039
                  xori        zero, t6, 221
1342:             beq         a2, a0, 1356f
                  add         s1, a0, t3
                  auipc       t5, 337297
                  slti        s1, t3, 352
                  sra         t5, a5, t6
                  bltu        t1, t5, 1365f
1348:             sll         s3, ra, t0
                  sra         t6, a6, a0
                  ori         gp, s0, -847
1351:             bge         t6, s4, 1364f
                  sub         s2, a4, s8
                  and         t5, a3, tp
                  sltu        s2, t4, t1
                  bge         tp, gp, 1366f
1356:             slti        zero, gp, -16
                  or          t2, a5, s1
                  slli        t0, t1, 16
                  srli        t3, a2, 2
                  and         a6, a4, t1
                  add         s8, a5, s9
                  lui         a2, 582026
                  bne         s7, s10, 1379f
1364:             sll         t4, s8, s11
1365:             sltiu       zero, a6, -403
1366:             sltu        ra, s3, ra
                  srli        t5, sp, 7
                  sra         sp, s6, sp
                  blt         t2, t4, 1377f
                  bne         ra, tp, 1377f
                  xori        a6, t3, 100
                  srli        s10, gp, 5
                  bltu        a4, s5, 1381f
                  srai        a7, t0, 11
                  or          a0, sp, s10
                  auipc       ra, 533223
1377:             beq         sp, s8, 1397f
                  and         s1, a3, s11
1379:             addi        zero, s3, 1204
                  and         ra, s5, s8
1381:             addi        t2, tp, 95
                  srli        a6, t3, 31
                  bne         a1, t2, 1391f
                  slli        t4, a0, 23
                  xori        s8, t6, 836
                  sltiu       s3, s4, 1185
                  slti        t6, s7, -1940
                  or          s1, s7, t2
                  srli        zero, a2, 26
                  srl         gp, s8, s3
1391:             bgeu        t6, t6, 1398f
                  sub         t2, tp, ra
                  bge         t4, a7, 1398f
                  slti        s7, a1, -820
                  addi        a6, s8, 1991
                  add         a2, s1, t3
1397:             ori         a2, s2, -1338
1398:             slt         a1, t2, a1
                  srl         s10, a7, tp
                  xor         s6, a0, t6
                  lui         s9, 558348
                  slt         t4, s8, t2
                  blt         t5, tp, 1417f
                  auipc       s5, 382651
                  or          s1, s3, a2
                  lui         s4, 611845
                  xor         t0, a0, a1
                  add         t6, t0, s5
                  sll         a6, a1, t6
                  blt         t0, a4, 1425f
                  sltu        t4, a4, t5
                  bne         tp, gp, 1413f
1413:             bgeu        s0, t4, 1423f
                  srai        t6, gp, 29
                  and         gp, s2, sp
                  andi        s6, t2, 1165
1417:             slti        zero, t1, -133
                  addi        s10, t2, 1715
                  slli        s10, a6, 13
                  lui         a7, 60441
                  srli        zero, a1, 10
                  slti        t4, a3, -589
                  li         t6, 0x1 #start riscv_int_numeric_corner_stream_1
                  li         t5, 0x0
                  li         s1, 0x0
                  li         s9, 0x0
                  li         t4, 0x1
                  li         a3, 0x0
                  li         t3, 0x0
                  li         s5, 0x0
                  li         a2, 0x0
                  li         s7, 0x1
                  sub         t3, s10, s9
                  addi        a2, s8, 181
                  sub         zero, a0, t4
                  add         t6, s8, s3
                  nop
                  add         a7, a4, t1
                  lui         a6, 606757
                  lui         ra, 816618
                  add         s4, s2, s4
                  add         a2, t1, a2
                  sub         t5, s4, sp
                  sub         tp, a4, s3
                  addi        zero, t6, -1589
                  sub         a3, sp, t0
                  add         a7, a5, s5 #end riscv_int_numeric_corner_stream_1
1423:             addi        ra, s8, -1769
                  bltu        s2, s6, 1441f
1425:             srai        zero, t2, 16
                  beq         a2, t3, 1431f
                  lui         t0, 439805
                  slti        s2, a2, 57
                  ori         s1, tp, -936
                  sltiu       s9, t5, 1141
1431:             bgeu        t3, ra, 1437f
                  srli        gp, ra, 18
                  srli        a0, t1, 8
                  add         a0, t6, s6
                  bge         a2, sp, 1441f
                  bltu        s5, t0, 1455f
1437:             beq         s2, a0, 1457f
                  addi        s1, ra, -736
                  slt         s2, tp, s7
                  beq         s6, s1, 1457f
1441:             or          s9, s5, s6
                  and         zero, gp, a5
                  lui         tp, 1022652
                  bltu        sp, t1, 1451f
                  andi        sp, t5, -88
                  bltu        t4, s9, 1462f
                  srli        sp, a6, 19
                  srl         s9, gp, t6
                  xori        zero, t1, -935
                  xor         a2, t1, sp
1451:             beq         t5, t5, 1462f
                  bgeu        a7, s2, 1471f
                  bne         s8, s4, 1465f
                  addi        a6, s8, 1864
1455:             bne         zero, a3, 1459f
                  xori        tp, a0, -186
1457:             sub         t3, s2, s0
                  srl         s7, s8, t3
1459:             slt         zero, t5, s2
                  ori         t3, t6, -1829
                  and         zero, s10, s9
1462:             slli        s1, s11, 24
                  bge         s10, s7, 1469f
                  nop
1465:             sub         s0, ra, a0
                  srli        a1, s7, 3
                  bge         s1, a3, 1472f
                  blt         s10, a6, 1473f
1469:             bge         a0, a4, 1480f
                  slli        s4, gp, 25
1471:             bne         t3, a2, 1479f
1472:             slli        gp, tp, 11
1473:             sra         t1, a0, tp
                  auipc       t6, 417816
                  add         t2, s7, a7
                  xori        sp, t0, 1000
                  srai        zero, s4, 10
                  nop
1479:             andi        s4, gp, 1328
1480:             ori         s10, zero, -1374
                  bne         t0, t3, 1489f
                  slti        s0, s11, -1280
                  and         t5, s9, s11
                  blt         s8, s10, 1504f
                  beq         t4, a4, 1498f
                  xor         zero, t0, s8
                  srl         s6, a1, a0
                  addi        s9, a2, -495
1489:             or          s2, ra, t0
                  xor         t5, t3, s7
                  andi        zero, a2, 1190
                  bge         t0, s2, 1499f
                  slli        zero, sp, 12
                  slt         a2, a4, gp
                  sll         zero, s5, s1
                  ori         t4, s4, -823
                  slti        s7, s1, 419
1498:             srli        a7, a7, 7
1499:             sll         zero, s2, a1
                  nop
                  bne         a0, t3, 1520f
                  beq         s3, s7, 1512f
                  auipc       s4, 929480
1504:             slli        gp, s9, 20
                  sub         t3, s3, s3
                  srai        a0, tp, 23
                  or          s6, a0, t4
                  bltu        gp, a2, 1512f
                  nop
                  xori        ra, s10, -872
                  bgeu        s7, s11, 1526f
1512:             sll         tp, s4, tp
                  slt         ra, gp, t6
                  add         s3, s7, t4
                  xori        s9, tp, 171
                  beq         s2, t6, 1535f
                  sub         t0, s10, t0
                  andi        t6, s1, 1744
                  sltiu       a0, s0, -1663
1520:             auipc       t2, 40087
                  bltu        zero, s4, 1537f
                  and         a3, s10, gp
                  andi        a2, a2, 126
                  slli        s4, t1, 21
                  beq         t4, s2, 1531f
1526:             beq         t1, s9, 1533f
                  and         a7, s11, gp
                  auipc       ra, 355077
                  sll         zero, a1, s9
                  auipc       s2, 596262
1531:             bge         t6, s9, 1547f
                  auipc       t5, 191748
1533:             or          s1, s7, a3
                  slti        tp, a3, -71
1535:             bgeu        s10, sp, 1543f
                  beq         s8, s7, 1550f
1537:             auipc       tp, 535221
                  ori         s6, gp, -244
                  srl         a6, sp, zero
                  xori        a6, t0, 1145
                  slti        ra, a7, 222
                  bne         t6, s4, 1554f
1543:             blt         s11, a3, 1549f
                  and         t4, zero, t4
                  slli        a2, s11, 25
                  add         s10, s6, sp
1547:             nop
                  xor         t2, ra, s8
1549:             add         s6, s1, t1
1550:             andi        sp, t1, -926
                  auipc       a7, 731697
                  nop
                  xor         t4, s10, a3
1554:             lui         s10, 782682
                  add         s2, a1, a4
                  lui         t4, 377792
                  slt         t3, t2, tp
                  sltiu       s5, s7, 1870
                  srai        s0, s8, 19
                  slli        s7, a7, 14
                  nop
                  srai        t4, t4, 21
                  srl         t3, a0, s11
                  bgeu        s4, t2, 1571f
                  ori         s5, s0, 44
                  xori        a6, t4, 207
                  slt         t4, a0, s11
                  addi        s5, a5, 1938
                  andi        zero, t4, 870
                  addi        s5, t2, -22
1571:             sltu        s6, t5, sp
                  xori        t2, a5, -1597
                  srl         t6, s1, s8
                  sub         s9, a7, a6
                  bltu        t4, sp, 1586f
                  bgeu        gp, s7, 1582f
                  bge         t2, t1, 1597f
                  auipc       s5, 474897
                  and         t2, a4, zero
                  sra         a6, a2, t6
                  slli        s4, s9, 8
1582:             ori         ra, a2, -853
                  slli        a0, s11, 11
                  bne         a5, a7, 1601f
                  bne         zero, t5, 1586f
1586:             bge         t5, t3, 1604f
                  srai        a7, s10, 11
                  blt         s11, a4, 1605f
                  and         s8, s6, ra
                  slt         a0, a6, t5
                  bge         s10, a1, 1605f
                  xori        t5, gp, -1351
                  bgeu        t4, a6, 1610f
                  slti        t1, s3, 232
                  sra         s4, s5, a4
                  bgeu        t6, t5, 1602f
1597:             xori        s2, s7, -104
                  xori        t2, a0, -851
                  slli        s7, a4, 31
                  srai        s0, a0, 10
1601:             slli        s8, gp, 3
1602:             blt         t2, gp, 1607f
                  sltu        s6, a0, t0
1604:             sll         s10, ra, a2
1605:             srai        s2, s11, 25
                  sltiu       tp, sp, -544
1607:             slli        s3, t3, 0
                  xor         t4, t2, s10
                  bltu        gp, ra, 1625f
1610:             or          t4, s1, s11
                  sltiu       t2, s2, -410
                  auipc       t5, 786706
                  addi        s9, a7, -756
                  sra         s5, s10, gp
                  and         s8, s10, ra
                  sltiu       t5, s6, -1059
                  srli        s2, s11, 4
                  nop
                  bne         a3, s11, 1626f
                  sub         s0, a7, s11
                  sltu        s9, t3, a2
                  ori         zero, s1, 458
                  srli        s0, a0, 5
                  xori        t3, gp, -600
1625:             bltu        a1, sp, 1643f
1626:             bgeu        a4, s4, 1633f
                  slt         zero, s4, t2
                  slti        zero, s2, -775
                  andi        t6, t6, 1062
                  or          zero, a2, sp
                  sltiu       a3, a0, 1850
                  bgeu        s10, s1, 1652f
1633:             blt         s11, zero, 1639f
                  ori         t0, t4, -1613
                  bltu        ra, s0, 1651f
                  blt         t0, ra, 1647f
                  slt         a7, a6, t6
                  bge         sp, ra, 1658f
1639:             xori        a1, t2, 197
                  bge         a2, s4, 1648f
                  slt         s8, t4, s4
                  beq         a1, t0, 1661f
1643:             auipc       s5, 1011271
                  auipc       zero, 306128
                  andi        t0, a0, -888
                  srli        a3, s8, 14
1647:             bgeu        tp, a3, 1662f
1648:             srai        t5, gp, 28
                  sub         s0, t0, s4
                  srl         zero, gp, s7
1651:             bgeu        s11, a1, 1663f
1652:             lui         sp, 1047603
                  sltiu       s2, a4, 75
                  xori        t2, t2, 1219
                  ori         t6, s6, 1698
                  sub         tp, a7, zero
                  ori         zero, s9, 1902
1658:             auipc       a7, 462192
                  nop
                  sltiu       tp, a7, -253
1661:             sra         s8, s0, s4
1662:             and         s4, a7, t5
1663:             ori         s5, s2, 801
                  sub         s9, t2, s11
                  ori         zero, s4, 1524
                  slt         s10, s3, a1
                  and         sp, a1, tp
                  xor         zero, a7, s7
                  xor         gp, t6, a5
                  or          zero, tp, sp
                  sltiu       s7, sp, 1030
                  andi        t4, a1, -113
                  lui         zero, 1016633
                  beq         s9, t2, 1688f
                  bltu        a2, tp, 1681f
                  sll         s6, s5, s3
                  bne         t2, a3, 1678f
1678:             bne         s4, s11, 1682f
                  add         sp, zero, zero
                  bge         a7, ra, 1699f
1681:             and         a2, s2, a4
1682:             beq         s1, s10, 1690f
                  auipc       t4, 545371
                  slt         s5, t3, zero
                  or          a2, s1, s9
                  slli        s2, a7, 10
                  lui         gp, 110090
1688:             slt         t6, a5, s10
                  sltu        s1, tp, ra
1690:             xori        zero, t3, 1543
                  slt         a2, a2, s1
                  lui         t0, 816057
                  add         s0, gp, s4
                  bgeu        s5, a3, 1705f
                  andi        a7, zero, 462
                  auipc       s7, 914405
                  add         t4, s8, s5
                  auipc       zero, 6082
1699:             addi        s5, a7, 1098
                  nop
                  and         t4, a1, s0
                  ori         s0, a6, -1067
                  bgeu        ra, t1, 1716f
                  srl         zero, t5, a3
1705:             bge         s0, a4, 1710f
                  bge         s4, t1, 1720f
                  and         zero, s9, s9
                  addi        zero, s9, 710
                  slli        s9, t0, 17
1710:             andi        s3, s5, -445
                  ori         s2, a0, 237
                  auipc       s2, 1014660
                  srli        gp, a7, 1
                  nop
                  sll         s8, s5, s9
1716:             xori        s10, sp, -1176
                  blt         s0, tp, 1727f
                  sltiu       t0, t6, 291
                  lui         ra, 693625
1720:             lui         tp, 161645
                  andi        a0, zero, 490
                  xori        ra, s5, 374
                  sltiu       s0, t1, -61
                  sra         t0, a0, t1
                  addi        zero, t5, 402
                  and         t4, tp, a0
1727:             sra         s4, a1, a0
                  xori        a2, s5, 718
                  srl         zero, t1, a6
                  andi        sp, s9, 1518
                  xor         s5, s10, s2
                  bge         a1, zero, 1740f
                  nop
                  or          sp, a2, s10
                  beq         a3, s7, 1742f
                  addi        s2, gp, -488
                  sub         t6, a2, a0
                  slli        s5, a0, 0
                  addi        tp, s11, 24
1740:             bgeu        tp, a4, 1757f
                  sll         s1, ra, s1
1742:             sra         a3, t4, a0
                  lui         gp, 780660
                  bge         t6, a3, 1749f
                  beq         s2, gp, 1753f
                  blt         s2, sp, 1766f
                  andi        t3, a1, 337
                  or          s1, a6, t2
1749:             sub         s2, s1, s6
                  bltu        a1, s6, 1766f
                  andi        a6, s2, -28
                  add         t4, t6, t2
1753:             and         zero, a2, tp
                  slti        t3, t6, 241
                  sltu        zero, a0, s6
                  andi        s6, a7, 1949
1757:             slli        s8, s5, 15
                  slli        t0, t0, 11
                  srai        t3, s9, 7
                  and         zero, s0, zero
                  sra         a6, a2, t2
                  ori         s1, ra, 92
                  sltu        s5, gp, s6
                  sltiu       a3, s8, -1485
                  slt         gp, s3, t3
1766:             nop
                  la x15, test_done
                  jalr x0, x15, 0
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
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_2:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_3:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_4:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_5:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_6:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_7:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_8:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_9:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_10:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_11:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_12:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_13:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_14:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_15:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

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
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
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
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x31, 0xb # ECALL_MMODE
                  beq x12, x31, ecall_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x12, _start
                  sw x0, 0(x12)
                  sw x1, 4(x12)
                  sw x2, 8(x12)
                  sw x3, 12(x12)
                  sw x4, 16(x12)
                  sw x5, 20(x12)
                  sw x6, 24(x12)
                  sw x7, 28(x12)
                  sw x8, 32(x12)
                  sw x9, 36(x12)
                  sw x10, 40(x12)
                  sw x11, 44(x12)
                  sw x12, 48(x12)
                  sw x13, 52(x12)
                  sw x14, 56(x12)
                  sw x15, 60(x12)
                  sw x16, 64(x12)
                  sw x17, 68(x12)
                  sw x18, 72(x12)
                  sw x19, 76(x12)
                  sw x20, 80(x12)
                  sw x21, 84(x12)
                  sw x22, 88(x12)
                  sw x23, 92(x12)
                  sw x24, 96(x12)
                  sw x25, 100(x12)
                  sw x26, 104(x12)
                  sw x27, 108(x12)
                  sw x28, 112(x12)
                  sw x29, 116(x12)
                  sw x30, 120(x12)
                  sw x31, 124(x12)
                  la x15, write_tohost
                  jalr x0, x15, 0

illegal_instr_handler:
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
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
                  add x14, x27, zero
                  csrrw x27, 0x340, x27
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
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
                  add x14, x27, zero
                  csrrw x27, 0x340, x27
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
