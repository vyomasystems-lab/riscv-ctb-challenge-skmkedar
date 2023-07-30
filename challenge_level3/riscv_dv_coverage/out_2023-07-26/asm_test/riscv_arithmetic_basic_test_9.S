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
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 1
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

init_machine_mode:
                  li x27, 0x1a00
                  csrw 0x300, x27 # MSTATUS
                  li x27, 0x0
                  csrw 0x304, x27 # MIE
                  mret
init:             
                  li x0, 0xf
                  li x1, 0x80000000
                  li x2, 0xff12373f
                  li x3, 0xf
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0xf3ce7a80
                  li x7, 0xb
                  li x8, 0xffcc9b2c
                  li x9, 0xfba59a02
                  li x10, 0xf
                  li x11, 0x0
                  li x12, 0xf11d21d6
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0xe
                  li x16, 0xf15a84d8
                  li x17, 0x1e6c747c
                  li x18, 0xe
                  li x19, 0xd
                  li x20, 0xfbb3b3bf
                  li x21, 0xfde42b25
                  li x22, 0xf786545b
                  li x23, 0x2c063695
                  li x24, 0x0
                  li x25, 0xa219d7f0
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x0
                  li x31, 0xd0d2cc72
                  la x26, user_stack_end
main:             li         t4, 0x0 #start riscv_int_numeric_corner_stream_7
                  li         a6, 0x0
                  li         s6, 0x0
                  li         t3, 0x5f68d5fc
                  li         s11, 0x0
                  li         s9, 0x2138591d
                  li         s1, 0x6a6a43d
                  li         s3, 0x0
                  li         s7, 0x0
                  li         s2, 0x1
                  add         s1, sp, s10
                  addi        ra, s2, -570
                  addi        s0, t0, -1000
                  addi        t0, t4, -496
                  addi        s5, s8, 1547
                  sub         zero, s3, a1
                  lui         zero, 369607
                  sub         a1, s11, t2
                  lui         t2, 433501
                  addi        t4, s8, 1827
                  add         zero, a7, s6
                  sub         s3, s5, t2
                  add         sp, t3, s1
                  nop
                  sub         s9, a0, sp #end riscv_int_numeric_corner_stream_7
                  li         a3, 0x0 #start riscv_int_numeric_corner_stream_4
                  li         sp, 0x0
                  li         s9, 0x1
                  li         s0, 0x1
                  li         a6, 0x21a96a60
                  li         s11, 0x1
                  li         s8, 0x0
                  li         s1, 0x5725ffea
                  li         a2, 0x1
                  li         s4, 0x0
                  lui         zero, 814832
                  addi        a3, t2, 1954
                  nop
                  addi        t0, zero, 1481
                  addi        a2, tp, -1195
                  lui         t3, 820000
                  nop
                  lui         s9, 797594
                  addi        a6, s6, -1969
                  nop
                  sub         a7, s11, t0
                  sub         s4, s8, a7
                  nop
                  nop
                  nop
                  sub         s6, s8, ra
                  addi        s3, zero, -1734
                  sub         zero, s1, ra
                  nop
                  lui         s0, 972
                  sub         sp, t5, tp
                  lui         t2, 341822
                  sub         zero, s6, t1
                  addi        s11, s4, -1651
                  nop
                  sub         gp, s9, s8
                  sub         tp, a7, s3
                  lui         a3, 519172
                  sub         tp, tp, s3
                  lui         a5, 202695 #end riscv_int_numeric_corner_stream_4
                  li         t3, 0x0 #start riscv_int_numeric_corner_stream_5
                  li         t4, 0x0
                  li         ra, 0x3707c351
                  li         s11, 0x0
                  li         a1, 0x0
                  li         s9, 0x1
                  li         a5, 0x1
                  li         s1, 0x516901b6
                  li         s3, 0x0
                  li         s8, 0x653b875f
                  add         a7, t5, s11
                  nop
                  nop
                  addi        zero, sp, -1474
                  nop
                  addi        s8, sp, -22
                  lui         a0, 846885
                  add         s0, gp, a0
                  nop
                  addi        zero, t0, 1976
                  lui         s1, 586194
                  add         s9, gp, s2
                  addi        s9, zero, 717
                  lui         t1, 1036131
                  add         s5, s6, t2
                  nop
                  add         zero, s4, s0
                  lui         a2, 915422
                  add         zero, a7, gp
                  nop
                  sub         gp, tp, t0
                  nop
                  addi        a7, s6, 93
                  sub         s7, t0, t2
                  nop
                  add         a7, s2, t6
                  lui         a0, 444630
                  add         gp, t3, ra
                  nop
                  sub         sp, t4, s7 #end riscv_int_numeric_corner_stream_5
                  li         sp, 0x0 #start riscv_int_numeric_corner_stream_9
                  li         a1, 0x1
                  li         t4, 0x0
                  li         t3, 0x1
                  li         a4, 0x0
                  li         s8, 0x0
                  li         s4, 0x58ddc9af
                  li         a2, 0x0
                  li         s3, 0x0
                  li         s11, 0x1
                  nop
                  addi        a2, s9, -1764
                  sub         a7, a2, s10
                  nop
                  addi        zero, t2, -2040
                  addi        a3, t5, 705
                  lui         a1, 849992
                  add         zero, ra, a7
                  lui         s11, 791391
                  sub         s6, sp, tp
                  sub         t2, sp, t5
                  add         zero, a4, zero
                  lui         zero, 342691
                  nop
                  sub         s4, a4, s11
                  lui         t4, 371236 #end riscv_int_numeric_corner_stream_9
                  xori        a5, s2, 1678
                  ori         a1, a3, 553
                  auipc       t0, 67916
                  sltu        s0, ra, t5
                  bne         a3, tp, 23f
                  beq         t0, s6, 24f
                  bge         a6, a2, 25f
                  slt         a1, a5, t5
                  bgeu        s3, a6, 14f
                  bltu        t2, s9, 25f
                  and         a5, t0, gp
                  bltu        t6, ra, 12f
12:               add         s6, zero, s1
                  ori         t4, s3, 948
14:               ori         t0, s0, 215
                  ori         a4, t0, 245
                  auipc       a1, 457255
                  bne         gp, t5, 18f
18:               add         a0, t5, a3
                  slli        sp, t1, 4
                  srl         a7, s11, a7
                  bltu        a0, t2, 24f
                  slti        sp, a2, -2
23:               srai        s7, a3, 28
24:               or          sp, s11, t6
25:               addi        s2, ra, -467
                  bne         s0, t2, 41f
                  slt         s3, t3, s4
                  slli        zero, s2, 24
                  slli        zero, a0, 17
                  slt         a0, gp, t3
                  srl         s3, a2, a1
                  xor         s8, gp, t2
                  slti        t2, t4, -612
                  beq         sp, s6, 48f
                  lui         s7, 898178
                  srai        s8, s3, 23
                  sltiu       a0, s7, -1026
                  and         t3, ra, s3
                  beq         zero, a4, 41f
                  andi        a5, s10, -646
41:               lui         a1, 232792
                  beq         zero, s8, 61f
                  ori         a6, gp, -1085
                  auipc       t2, 536444
                  bgeu        sp, a0, 54f
                  add         s2, s4, t5
                  bge         ra, tp, 51f
48:               bgeu        s11, a4, 50f
                  sra         a7, s3, a5
50:               lui         zero, 360353
51:               bltu        a5, s7, 70f
                  and         t1, gp, s8
                  bge         t4, s4, 67f
54:               sltu        a1, s3, s3
                  srl         s5, t1, tp
                  sra         a2, a4, s9
                  sltu        zero, a7, s8
                  addi        zero, s2, 1519
                  beq         a6, s11, 71f
                  sra         s7, t2, tp
61:               bne         ra, tp, 63f
                  sub         zero, s9, s4
63:               lui         a4, 59492
                  addi        a4, gp, -1886
                  bgeu        a3, s9, 69f
                  ori         s5, a4, -556
67:               bltu        a1, s7, 75f
                  xori        zero, s0, 1236
69:               auipc       sp, 741478
70:               add         gp, a2, a5
71:               srai        s4, s1, 5
                  bne         s3, s8, 79f
                  sub         zero, s0, s1
                  slt         s0, a1, a1
75:               beq         t2, a5, 90f
                  ori         s3, s8, 323
                  lui         s1, 669146
                  slli        zero, s5, 9
79:               bge         a1, t3, 80f
80:               slt         a6, t5, a5
                  slti        ra, s0, -221
                  sll         sp, a7, t5
                  lui         s4, 536077
                  srl         s2, t5, s6
                  bge         a4, s3, 100f
                  srl         s3, gp, a1
                  auipc       a4, 119697
                  slt         a4, a7, t2
                  ori         sp, s5, 418
90:               xori        zero, s11, 1840
                  nop
                  andi        t3, a6, -640
                  bltu        s5, t3, 107f
                  sltu        s2, s5, t2
                  srl         s2, s4, t2
                  sltu        a0, a1, s0
                  bne         t0, zero, 104f
                  beq         s11, s8, 114f
                  sltiu       a2, t2, 1464
100:              bltu        a6, a1, 117f
                  and         zero, t1, s11
                  sra         s5, gp, s3
                  bltu        s11, t3, 113f
104:              beq         s9, a7, 106f
                  sra         sp, t3, a3
106:              bne         s6, t3, 108f
107:              bltu        ra, s3, 122f
108:              andi        s5, a3, -2024
                  slti        s7, t3, -1541
                  slt         s1, s3, a0
                  xor         s3, t5, a2
                  sra         tp, a7, s11
113:              addi        ra, a0, 1128
114:              srli        a0, s8, 28
                  sub         s6, s10, ra
                  srli        t4, ra, 31
117:              srl         sp, t2, t0
                  bgeu        ra, s0, 124f
                  slt         s9, s7, s6
                  or          s9, t1, zero
                  xori        tp, s8, -1673
122:              addi        s1, t1, -1023
                  addi        s4, t4, -307
124:              and         a1, gp, s3
                  sll         tp, a4, ra
                  add         t3, a6, s2
                  sltu        a3, s1, t4
                  srai        a7, s4, 28
                  xor         s6, tp, a5
                  slli        zero, t4, 13
                  auipc       t0, 712191
                  xori        t0, sp, 790
                  slli        a5, s10, 3
                  sll         a4, a0, a6
                  auipc       zero, 313537
                  or          gp, t2, t0
                  andi        s11, t3, 44
                  bgeu        s7, s3, 152f
                  or          s4, a2, s9
                  sltiu       s5, s10, 110
                  xor         a4, a7, gp
                  xor         zero, a0, a1
                  ori         a3, ra, -1383
                  lui         s2, 442869
                  sltiu       a7, a5, -2015
                  slti        a1, t2, -1753
                  bgeu        s5, t4, 161f
                  sub         s5, s2, a3
                  slli        zero, s6, 18
                  auipc       t2, 688359
                  srli        gp, s0, 28
152:              srai        zero, t2, 10
                  bltu        tp, s0, 161f
                  xori        s0, s11, 1954
                  blt         t1, a4, 156f
156:              nop
                  sll         s2, t1, a0
                  and         s7, s2, s11
                  or          t1, s3, t3
                  blt         zero, zero, 161f
161:              sltiu       s7, t4, 1975
                  sub         s2, s4, s1
                  srai        a0, s4, 1
                  andi        ra, s6, -790
                  beq         a4, s1, 184f
                  andi        s7, s1, 686
                  srli        gp, s11, 7
                  sub         zero, a6, t1
                  nop
                  bgeu        a7, t5, 171f
171:              and         tp, s9, a2
                  addi        sp, s4, -585
                  or          a2, s0, a2
                  srli        a7, s2, 1
                  sltiu       s6, s1, -1323
                  sra         tp, a5, s11
                  sltu        zero, zero, a6
                  lui         zero, 613992
                  or          s4, gp, s0
                  blt         a3, gp, 195f
                  blt         t5, s11, 200f
                  bne         s2, a5, 198f
                  bgeu        a5, a2, 200f
184:              slti        zero, t6, 263
                  sltu        s0, s11, s9
                  andi        zero, a0, -842
                  andi        a3, a1, -1638
                  blt         s11, a7, 203f
                  nop
                  slt         a6, t6, s0
                  bgeu        s8, a1, 205f
                  bltu        t4, a0, 199f
                  srli        zero, zero, 22
                  sll         a7, s11, sp
195:              sub         a7, s6, tp
                  or          s4, gp, t2
                  lui         a1, 585110
198:              lui         s5, 921547
199:              sra         s9, a4, tp
200:              add         a0, s9, a6
                  srl         a2, s9, a3
                  lui         s11, 154946
203:              andi        a4, a4, -983
                  or          a7, t4, t2
205:              sltu        s2, a4, s10
                  addi        s2, tp, 1277
                  addi        t1, t1, -1344
                  bne         t0, t0, 227f
                  andi        zero, s0, -409
                  slti        s4, s2, -1764
                  slli        a6, s9, 7
                  bge         t0, ra, 231f
                  bgeu        s0, ra, 220f
                  or          s11, s1, t6
                  or          s4, t6, tp
                  and         s9, t1, gp
                  bge         t2, s7, 221f
                  add         s6, s9, s9
                  sll         a0, a0, s8
220:              bge         s10, s4, 222f
221:              beq         tp, s2, 231f
222:              srl         s5, tp, tp
                  bne         s5, s2, 239f
                  or          zero, t4, tp
                  bgeu        t0, a6, 244f
                  xor         t2, a7, t6
227:              bltu        t6, a2, 230f
                  add         sp, tp, s4
                  beq         gp, s3, 233f
230:              srai        a0, s1, 23
231:              slt         a1, s0, ra
                  bltu        a0, t1, 244f
233:              beq         t3, a2, 242f
                  sub         t3, a3, s2
                  xori        s7, t2, -1036
                  addi        zero, s11, -175
                  nop
                  xor         s2, t0, a4
239:              bltu        s1, t6, 248f
                  sll         s8, s3, t4
                  slt         t2, a2, s4
242:              add         s6, s8, a7
                  bge         gp, gp, 257f
244:              sltu        t0, sp, s2
                  slti        sp, s2, -785
                  add         a3, s11, a2
                  auipc       a4, 701761
248:              xor         sp, a6, sp
                  bge         tp, s4, 251f
                  bge         t2, t6, 269f
251:              slti        s7, s9, 1352
                  slti        s4, a3, -1950
                  andi        a2, s9, -1839
                  nop
                  or          s11, t5, s7
                  bgeu        s0, s8, 264f
257:              beq         a6, t3, 276f
                  addi        s5, a6, 383
                  srl         s1, t0, a3
                  slti        t3, zero, 735
                  blt         s10, s5, 273f
                  slli        s8, t2, 13
                  auipc       ra, 897494
264:              ori         a1, t1, 1391
                  addi        zero, s7, -911
                  lui         t0, 9844
                  slt         zero, s8, t0
                  add         ra, zero, t2
269:              nop
                  slti        a6, s10, 1982
                  slli        sp, s4, 24
                  slti        a2, s7, 725
273:              srl         a5, s5, s7
                  slt         zero, a4, a1
                  blt         t5, s3, 277f
276:              blt         s2, s8, 282f
277:              bgeu        a7, a0, 291f
                  xor         zero, zero, s10
                  xor         a6, s11, s2
                  blt         s4, s3, 281f
281:              ori         a1, a6, 898
282:              slt         a4, s4, s1
                  bgeu        gp, gp, 287f
                  slli        a2, t3, 1
                  nop
                  or          a5, a4, a2
287:              xor         a1, a7, a7
                  sltu        zero, t6, s3
                  srli        a4, s11, 2
                  sltiu       a7, t5, -1346
291:              auipc       a5, 9033
                  ori         t1, s11, 746
                  lui         a5, 113556
                  bgeu        zero, s1, 301f
                  sltiu       s11, a1, 376
                  sub         a6, s3, s0
                  bne         a7, a1, 312f
                  srl         zero, t1, tp
                  xor         s7, s4, s2
                  bltu        tp, s4, 317f
301:              sub         a3, s7, t6
                  and         zero, a4, t4
                  slli        a7, s4, 16
                  sub         a2, t5, t5
                  sltu        s0, s5, s1
                  xor         s1, ra, s0
                  andi        a7, s10, -419
                  add         a0, gp, s0
                  blt         tp, s1, 310f
310:              bge         ra, s1, 329f
                  slti        s1, t2, -1102
312:              bne         t3, s11, 314f
                  sll         s5, t1, a4
314:              xori        zero, s9, -1100
                  bltu        a4, a6, 325f
                  ori         a0, a2, 375
317:              xor         a4, t3, a1
                  sltiu       sp, t1, 981
                  beq         s3, s1, 334f
                  or          zero, t1, t3
                  slt         a4, s9, a1
                  sub         a4, a3, a0
                  xor         s9, t1, t6
                  or          t1, tp, s6
325:              sltiu       s1, t3, 470
                  srl         zero, t1, s7
                  bne         s5, s6, 328f
328:              add         a6, t4, t6
329:              sltiu       t1, t3, 970
                  sra         s2, gp, t2
                  blt         s0, a3, 350f
                  or          t4, s5, tp
                  bgeu        a2, s4, 352f
334:              xor         zero, a6, zero
                  addi        t1, a6, -32
                  add         tp, s7, t0
                  lui         a0, 806323
                  addi        t3, s6, 1188
                  auipc       a5, 589570
                  addi        a0, a0, -1477
                  sltu        s11, s1, s5
                  bgeu        a2, s3, 358f
                  sltu        a7, a3, t1
                  lui         s0, 1041607
                  or          zero, tp, a7
                  slti        s7, s7, -8
                  bge         a3, t5, 362f
                  add         s6, a7, sp
                  lui         s7, 730741
350:              bne         s0, tp, 354f
                  and         s6, s2, s7
352:              ori         gp, ra, -1147
                  bgeu        t6, s5, 367f
354:              bge         t6, a6, 370f
                  bgeu        a4, s11, 358f
                  srai        a3, tp, 4
                  bgeu        s9, s10, 364f
358:              blt         t4, ra, 372f
                  bne         gp, a5, 375f
                  sra         a4, s2, a3
                  slti        a4, t6, -1118
362:              slli        tp, s9, 9
                  andi        a6, a6, -2037
364:              sltu        t4, gp, a0
                  sltiu       t0, s9, -565
                  bgeu        t3, a4, 378f
367:              sll         s6, s2, s3
                  addi        zero, s4, 1234
                  bgeu        a0, t5, 371f
370:              ori         a1, a3, 740
371:              bge         s11, t2, 385f
372:              bgeu        a7, t0, 379f
                  slti        a0, s2, -447
                  bge         t5, s2, 380f
375:              or          t2, a2, t1
                  bltu        t6, s3, 383f
                  bge         gp, t0, 396f
378:              or          ra, a2, s8
379:              sra         a1, ra, t6
380:              slti        t4, a2, -712
                  ori         s7, a7, -150
                  sub         a4, s11, s6
383:              and         tp, s10, a7
                  srai        zero, a0, 17
385:              bge         zero, t5, 389f
                  sub         s6, t1, t1
                  li         t2, 0x0 #start riscv_int_numeric_corner_stream_0
                  li         t4, 0x1feff2f0
                  li         t3, 0x0
                  li         s5, 0x1
                  li         t0, 0x0
                  li         s8, 0x1
                  li         s9, 0x10b3aa1
                  li         s11, 0x1
                  li         a7, 0x1
                  li         a5, 0x1
                  sub         a4, s3, s9
                  lui         s0, 780078
                  nop
                  sub         s1, t1, s10
                  nop
                  addi        s0, t6, -1361
                  sub         sp, a1, t2
                  nop
                  addi        a0, a1, -1980
                  sub         sp, sp, s5
                  lui         t3, 218198
                  addi        s5, a6, -2032
                  add         s8, s2, a6
                  lui         s8, 637401
                  lui         t3, 1004865
                  sub         a4, s8, s9
                  nop
                  add         s4, a4, s9
                  nop #end riscv_int_numeric_corner_stream_0
                  srai        ra, s11, 11
                  auipc       s11, 681970
389:              bge         s6, t6, 405f
                  xori        zero, a0, -459
                  add         a7, s4, s8
                  slti        s2, t4, 36
                  and         s8, s5, tp
                  andi        zero, s6, -353
                  nop
396:              bne         s10, zero, 397f
397:              sltu        zero, s1, s7
                  slt         s0, s9, t3
                  nop
                  bgeu        a1, a0, 408f
                  sltiu       a5, a3, -1191
                  blt         a5, a6, 417f
                  and         s3, a4, s4
                  andi        t3, ra, 1588
405:              andi        gp, s5, -226
                  add         t0, ra, a0
                  xori        a3, a0, 314
408:              slti        a2, tp, -65
                  bge         gp, ra, 428f
                  bne         a7, a5, 429f
                  sltu        a4, s6, s3
                  srai        sp, a4, 9
                  sll         s0, s0, s11
                  slli        a1, t0, 19
                  xor         a7, s9, s7
                  add         a6, a2, t2
417:              auipc       sp, 757591
                  beq         tp, a4, 435f
                  srai        s8, ra, 9
                  andi        t3, gp, -918
                  bltu        sp, ra, 431f
                  auipc       t2, 898782
                  or          a5, t2, s1
                  auipc       t3, 477900
                  xori        t3, s5, 32
                  auipc       a6, 295800
                  sub         zero, t1, a4
428:              lui         s4, 868290
429:              xori        s1, s0, -346
                  srl         s1, t4, s10
431:              blt         a2, s8, 433f
                  bgeu        a0, gp, 441f
433:              andi        a1, a7, 834
                  and         s8, s3, gp
435:              add         tp, a1, s1
                  lui         a0, 416183
                  xori        zero, t6, -1514
                  sra         s11, s5, a3
                  ori         tp, a4, -491
                  auipc       ra, 335871
441:              sltiu       s1, s8, -54
                  srai        a2, s2, 2
                  nop
                  nop
                  beq         s1, a2, 464f
                  slt         ra, s4, t2
                  bgeu        s10, s7, 462f
                  bgeu        sp, t5, 451f
                  blt         t5, s0, 464f
                  bge         s9, s7, 452f
451:              slti        s6, s7, -1082
452:              bgeu        t6, sp, 453f
453:              nop
                  ori         t0, a7, 1200
                  and         a6, a5, t1
                  xori        a3, t5, 37
                  srli        ra, s9, 14
                  bltu        s6, a2, 477f
                  bgeu        s9, t0, 463f
                  sltu        a4, s8, a3
                  blt         ra, s4, 462f
462:              or          s8, s9, s11
463:              add         t1, s1, s5
464:              srai        a4, zero, 11
                  srai        a7, s5, 19
                  and         ra, s10, ra
                  ori         a6, t0, 1444
                  slli        a0, a2, 21
                  srl         zero, s5, s1
                  srli        t2, a7, 31
                  lui         s7, 751122
                  blt         s4, tp, 486f
                  srl         zero, t5, s2
                  bgeu        a2, a7, 493f
                  and         zero, s1, a1
                  sub         s7, t0, s4
477:              slti        t4, s7, 1141
                  xor         zero, a5, a4
                  beq         gp, a4, 498f
                  lui         t3, 534023
                  bne         a1, s5, 498f
                  slli        t0, s3, 28
                  lui         a7, 385004
                  bne         a2, s5, 488f
                  srai        zero, s8, 19
486:              xori        tp, t0, -925
                  addi        s5, t2, 1893
488:              beq         s2, a1, 491f
                  ori         s2, s2, 195
                  xori        tp, zero, -1946
491:              and         s11, zero, t4
                  addi        s3, tp, 680
493:              sll         t0, a4, tp
                  sltu        t4, s7, t0
                  beq         a3, s10, 509f
                  sltiu       ra, t2, -1024
                  ori         s5, tp, 546
498:              ori         a7, t2, 2007
                  ori         t3, s3, -2024
                  bge         s3, t5, 501f
501:              auipc       a0, 769155
                  sltiu       a1, t1, -1534
                  xori        s3, s8, 1424
                  bgeu        a4, t0, 520f
                  bgeu        ra, s8, 519f
                  slti        a1, s2, -1802
                  sltu        s5, t6, s1
                  andi        a1, ra, -77
509:              bltu        t4, s3, 518f
                  srl         a3, a2, t0
                  addi        gp, t0, 1870
                  and         s4, a4, s11
                  blt         a1, a4, 528f
                  slti        s5, a4, 1810
                  add         s4, a3, s1
                  blt         a1, gp, 531f
                  ori         a2, tp, -1547
518:              srl         zero, s4, ra
519:              slti        s1, a3, -471
520:              sub         t3, a2, t0
                  xor         s11, a4, s11
                  xori        s0, s9, 536
                  and         a5, s4, s5
                  sll         t0, a3, s7
                  srli        t0, tp, 6
                  bltu        s8, s6, 545f
                  bne         s5, t2, 529f
528:              or          zero, t4, a0
529:              beq         a1, a6, 545f
                  lui         zero, 311811
531:              sltiu       a2, s6, 1682
                  sub         gp, s7, t0
                  sltiu       zero, s2, 911
                  andi        a5, a3, 999
                  nop
                  xori        s8, tp, 1912
                  add         s2, zero, s0
                  ori         s6, a4, -1285
                  lui         a3, 586638
                  sltiu       zero, tp, 269
                  sub         t0, s2, s10
                  sltu        t0, t0, s9
                  xor         s2, s9, s8
                  srli        s5, s11, 31
545:              slli        a7, a7, 25
                  slli        s1, s1, 24
                  srl         a7, a6, t5
                  bne         tp, s9, 563f
                  add         a0, a2, tp
                  sll         zero, a4, s8
                  bltu        s6, sp, 558f
                  slt         sp, s6, a6
                  xori        s7, gp, 1474
                  beq         t5, a7, 564f
                  and         a1, t3, a0
                  add         t4, ra, t5
                  and         a2, a4, a2
558:              auipc       s9, 968409
                  srai        t3, s0, 30
                  sra         t2, t0, gp
                  bgeu        s8, gp, 575f
                  lui         a6, 547928
563:              add         s5, a6, s2
564:              sub         t4, a1, t3
                  and         s4, s8, s10
                  blt         s11, a1, 574f
                  slt         t3, s8, t5
                  ori         s5, a3, -1392
                  srl         a5, a3, s0
                  auipc       s11, 173107
                  srl         s6, s2, a3
                  bge         t4, a2, 584f
                  beq         a7, t6, 580f
574:              lui         zero, 655705
575:              slt         ra, gp, a3
                  blt         s11, t5, 595f
                  bge         a0, a7, 578f
578:              xori        t4, t0, -51
                  add         s9, s2, a2
580:              xori        t0, s2, 292
                  slt         tp, s3, s1
                  beq         t1, s9, 583f
583:              xor         s4, sp, t5
584:              bgeu        ra, s6, 586f
                  bltu        s3, t3, 589f
586:              andi        zero, a2, 1718
                  ori         s1, t5, 531
                  sra         gp, a6, s6
589:              slli        a6, s11, 19
                  sub         s6, s5, zero
                  auipc       s2, 812634
                  srli        s0, a0, 2
                  slt         s7, gp, sp
                  srai        t4, t3, 18
595:              sltu        t3, s2, t2
                  auipc       s2, 992648
                  srli        t0, s1, 31
                  nop
                  bgeu        s3, s11, 601f
                  slli        t3, s10, 2
601:              bne         t3, t6, 620f
                  andi        t0, tp, -1506
                  sub         a2, a5, a4
                  lui         ra, 373885
                  bne         a6, t4, 611f
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_11
                  li         t3, 0x0
                  li         s11, 0x0
                  li         gp, 0x45f9cf9a
                  li         t0, 0x1290c7fa
                  li         a1, 0x4ec6ecbe
                  li         sp, 0x1
                  li         a5, 0x0
                  li         s7, 0x1
                  li         s9, 0x4dbe47a6
                  add         t0, s6, a5
                  lui         s5, 102274
                  add         s9, a6, s6
                  addi        t0, s9, -973
                  nop
                  nop
                  addi        ra, s9, 1693
                  nop
                  addi        s7, s8, -1515
                  add         gp, t2, a5
                  sub         s3, sp, s0
                  sub         zero, t1, a5
                  add         tp, t1, s4
                  addi        t0, sp, -115
                  sub         sp, s6, a3
                  lui         gp, 601623
                  lui         a4, 702847
                  addi        a7, a6, 514
                  sub         a5, s7, t0
                  nop
                  nop
                  nop
                  add         tp, zero, s0
                  addi        a3, a3, -1137
                  lui         a1, 463810
                  sub         t0, a2, t5
                  addi        s11, ra, 1479
                  addi        s6, ra, -376
                  addi        zero, s2, -27 #end riscv_int_numeric_corner_stream_11
                  sub         a3, s6, t1
                  slt         tp, a4, ra
                  slti        t0, tp, 303
                  bne         a7, a5, 611f
                  sltu        a1, a6, s6
611:              slti        tp, a3, 1995
                  andi        zero, s3, 1016
                  bge         s2, t6, 625f
                  and         s7, s6, a5
                  auipc       a5, 184534
                  addi        zero, a4, -649
                  bge         gp, s1, 618f
618:              bltu        t2, t2, 633f
                  slli        zero, ra, 24
620:              bge         a7, ra, 639f
                  auipc       gp, 95787
                  bltu        t1, s2, 639f
                  sra         t3, s4, t5
                  nop
625:              auipc       s0, 178079
                  srl         a4, tp, t0
                  sub         zero, s5, t0
                  srli        zero, s11, 30
                  xori        s6, ra, -1227
                  or          ra, a5, s8
                  auipc       s9, 783294
                  slli        a4, s4, 2
633:              sll         zero, s3, sp
                  sub         a6, a3, s5
                  slt         zero, s11, t5
                  slt         t1, s8, sp
                  xori        s5, s5, 1235
                  bltu        zero, ra, 645f
639:              xor         sp, t5, s7
                  sra         s1, s7, a0
                  slti        s4, a2, -93
                  sltu        s2, s4, s10
                  nop
                  blt         zero, a5, 660f
645:              beq         gp, s5, 647f
                  sra         s7, t2, t6
647:              sub         a0, ra, s5
                  ori         s1, gp, 875
                  srl         s4, s10, a5
                  nop
                  bgeu        t5, s11, 670f
                  slt         a0, sp, t2
                  slli        ra, a0, 8
                  bne         tp, tp, 664f
                  xori        zero, zero, 1499
                  srl         a3, s7, t4
                  slti        a0, s0, 1771
                  bgeu        s6, s9, 673f
                  sub         a5, zero, s10
660:              slli        a5, sp, 5
                  bltu        s10, t1, 662f
662:              and         a7, a6, s5
                  slt         a1, t2, s2
664:              srai        s6, a2, 9
                  xori        a4, s3, 1333
                  addi        s4, sp, 1622
                  sltu        t4, t6, t4
                  srl         a0, t1, t5
                  ori         s5, s9, -476
670:              nop
                  ori         a0, a6, 1085
                  slli        s6, s9, 8
673:              sll         s5, s7, sp
                  andi        sp, a1, 419
                  add         s11, s1, a1
                  bge         zero, s11, 690f
                  slt         gp, a5, s9
                  ori         t3, s3, 359
                  sltu        t4, s3, a6
                  sll         gp, s1, zero
                  lui         zero, 256697
                  slli        s8, a7, 14
                  addi        sp, t3, -165
                  or          tp, a4, a1
                  slt         gp, s0, s10
                  add         a4, a4, s8
                  ori         zero, t4, 1439
                  slti        a1, s7, 1244
                  add         ra, zero, zero
690:              bne         s4, t1, 704f
                  addi        a7, a0, 2001
                  bne         a1, sp, 694f
                  ori         sp, ra, -1925
694:              slli        t2, ra, 2
                  slti        zero, t1, -54
                  and         a7, a6, t6
                  nop
                  beq         a7, s3, 717f
                  sltu        a6, a0, a3
                  or          a1, a6, tp
                  bltu        gp, s2, 709f
                  sll         a2, s6, zero
                  or          zero, a1, sp
704:              xori        a1, s7, -1975
                  add         s11, s2, s6
                  sltiu       a5, s8, -2046
                  and         zero, gp, tp
                  srli        s5, a6, 24
709:              xori        s6, gp, 639
                  and         s7, sp, t5
                  xori        zero, t5, -1243
                  sltiu       gp, s3, 854
                  sltu        a3, s5, a1
                  nop
                  sub         s1, s4, t0
                  ori         sp, t5, -791
717:              addi        zero, s1, -1544
                  bne         a7, ra, 719f
719:              xor         sp, a0, s6
                  sltu        zero, a0, sp
                  bge         a6, ra, 724f
                  nop
                  sub         zero, s7, t2
724:              andi        gp, a5, -868
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_1
                  li         t3, 0x4ecec756
                  li         s8, 0x0
                  li         a1, 0x1
                  li         a0, 0x0
                  li         gp, 0x1
                  li         s11, 0x6d3a2d99
                  li         s1, 0x0
                  li         s3, 0x754295d0
                  li         s9, 0x1
                  lui         a5, 14524
                  lui         s5, 893381
                  addi        t0, t5, -199
                  lui         a4, 610133
                  addi        zero, s11, 420
                  nop
                  add         s6, zero, a4
                  addi        t0, s11, 1270
                  nop
                  sub         sp, t4, s7
                  sub         a5, s5, tp
                  sub         tp, a5, s5
                  add         s6, a7, a1
                  sub         a7, s1, a2
                  lui         a7, 379
                  sub         s0, s2, s2
                  add         s7, a2, t0
                  addi        t0, s2, 374
                  nop
                  sub         s5, s4, a7
                  addi        ra, a3, -1972
                  addi        s2, s9, -1228
                  add         sp, a5, t6
                  lui         t2, 871445
                  nop
                  add         a4, s6, s2
                  add         zero, t3, s6
                  nop
                  lui         sp, 510832
                  lui         a4, 314487 #end riscv_int_numeric_corner_stream_1
                  srli        a2, sp, 27
                  andi        a0, a7, 62
                  and         a1, a5, s5
                  srai        zero, s8, 2
                  addi        s6, a1, 40
                  sll         s6, a0, zero
                  beq         s10, s1, 735f
                  andi        a7, gp, 30
                  slti        zero, s9, -1587
                  auipc       s2, 605925
735:              lui         s7, 833613
                  bge         s0, gp, 742f
                  sltiu       a0, s6, -731
                  auipc       a7, 910277
                  sub         t4, a0, gp
                  add         ra, zero, t2
                  bltu        t1, s10, 745f
742:              srl         a4, ra, s5
                  nop
                  andi        t4, t1, 689
745:              srai        zero, a1, 18
                  slti        s8, t5, -1930
                  bltu        s8, s1, 763f
                  nop
                  beq         a0, a2, 763f
                  bltu        t6, s10, 769f
                  sub         a4, s0, s9
                  blt         sp, s8, 767f
                  nop
                  and         t1, t2, a4
                  bge         s4, t4, 764f
                  slt         tp, sp, s2
                  or          s8, a6, s0
                  and         gp, s0, a3
                  slt         zero, a1, a5
                  bge         s10, t6, 767f
                  xori        s0, t2, 1413
                  ori         s7, t6, 829
763:              srl         gp, a3, a3
764:              lui         s6, 770169
                  bltu        t4, zero, 784f
                  auipc       a4, 324749
767:              add         t1, a0, s4
                  srl         s0, t0, ra
769:              sll         zero, s7, s10
                  sll         sp, s9, a7
                  slli        zero, a4, 12
                  beq         s1, t5, 786f
                  sltiu       zero, s4, 562
                  bltu        s4, s7, 781f
                  blt         s3, a7, 783f
                  bltu        a1, s3, 795f
                  slli        ra, s3, 26
                  li         t4, 0x7952cb3f #start riscv_int_numeric_corner_stream_8
                  li         t3, 0x0
                  li         s0, 0x0
                  li         s11, 0x0
                  li         a1, 0x0
                  li         s9, 0x5c8993d5
                  li         s1, 0x0
                  li         a7, 0x0
                  li         s5, 0x0
                  li         ra, 0x0
                  addi        zero, t3, 975
                  nop
                  lui         s9, 854020
                  nop
                  lui         t0, 480196
                  add         a5, sp, a4
                  add         a5, sp, tp
                  sub         ra, a5, a2
                  add         s2, a0, a4
                  nop
                  addi        s2, tp, -1761
                  addi        t1, t3, 1019
                  add         a3, a5, a5
                  nop
                  nop
                  addi        s3, a7, -1024
                  nop
                  sub         s4, s5, s8
                  lui         s6, 203080
                  sub         a0, s10, a1
                  lui         sp, 662673
                  sub         s6, sp, s11
                  add         s2, a6, a4
                  nop
                  addi        s6, t3, -1164
                  nop
                  add         a2, s2, zero
                  addi        s3, zero, -1662
                  addi        a7, ra, -1777
                  lui         s3, 892011 #end riscv_int_numeric_corner_stream_8
                  lui         ra, 183453
                  add         s9, s8, a3
                  sltiu       zero, s11, 1960
781:              blt         zero, gp, 795f
                  sll         s11, ra, s9
783:              nop
784:              sra         t0, a7, a3
                  add         s0, t5, a2
786:              bgeu        s3, t6, 788f
                  srl         s4, a6, t3
788:              srli        s5, s7, 3
                  srai        t4, s2, 18
                  add         t2, t2, s7
                  beq         t4, s10, 792f
792:              lui         ra, 633222
                  slti        sp, a7, 1318
                  sra         a6, t4, a5
795:              and         s9, t5, a6
                  lui         a7, 363854
                  ori         a6, gp, 681
                  sub         gp, s1, a5
                  sub         s11, gp, s1
                  or          t0, gp, tp
                  sltiu       zero, s1, 392
                  add         s1, s11, s3
                  nop
                  andi        s3, s9, -1942
                  nop
                  srli        t3, s5, 5
                  and         t3, a0, s5
                  sltiu       s7, t2, -553
                  sra         zero, t0, s10
                  sra         zero, s11, t1
                  and         a4, t4, t5
                  bltu        a5, t2, 831f
                  slt         t0, s7, a4
                  srai        s0, s0, 11
                  bge         s8, t0, 831f
                  slti        a4, s5, 1535
                  or          ra, zero, a4
                  add         tp, a4, a3
                  bge         s5, s3, 835f
                  bne         a3, s0, 839f
                  and         a0, a7, ra
                  lui         s7, 486962
                  nop
                  sll         zero, s4, t6
                  or          a2, s11, s8
                  blt         a7, s0, 836f
                  sra         gp, a7, a0
                  xor         a5, t5, t4
                  xori        a5, tp, -439
                  srli        t1, a3, 22
831:              slti        s7, s4, -2004
                  srai        a7, s9, 7
                  srli        tp, s4, 9
                  bgeu        sp, s8, 851f
835:              slt         zero, s11, s3
836:              sub         s7, s10, s3
                  bltu        t0, a1, 841f
                  sub         zero, s2, gp
839:              and         a0, a2, a6
                  srl         s6, gp, a3
841:              lui         s6, 307561
                  slli        gp, s2, 25
                  srai        s2, t4, 23
                  ori         s4, t6, 1226
                  srli        tp, a0, 22
                  bne         s2, s2, 848f
                  beq         a1, ra, 848f
848:              bgeu        t5, s7, 862f
                  beq         s3, a6, 856f
                  slti        zero, s11, -1371
851:              bne         gp, sp, 870f
                  slli        sp, a2, 13
                  sltiu       s7, s2, 779
                  lui         s1, 306224
                  lui         tp, 948864
856:              bne         a5, t4, 858f
                  sub         tp, s11, a2
858:              and         a7, s5, t4
                  bne         s11, s9, 878f
                  srli        t2, s0, 2
                  sra         s9, s4, t2
862:              slt         a5, t6, a2
                  slti        s6, t3, -1812
                  sra         sp, s6, s6
                  auipc       a7, 20018
                  add         gp, a1, ra
                  bltu        t0, s3, 882f
                  addi        a3, s6, 273
                  srai        t1, ra, 1
870:              xori        zero, a6, 1118
                  bne         t0, s3, 875f
                  add         zero, s10, s2
                  slti        sp, s11, -308
                  andi        s0, a3, 364
875:              xor         s0, t2, s11
                  bge         gp, s2, 882f
                  xori        s1, a4, -742
878:              sltiu       a7, s6, -1499
                  addi        tp, t0, -1888
                  slt         ra, s11, gp
                  bge         zero, t3, 882f
882:              srl         zero, s0, t0
                  addi        a0, t4, 1768
                  xori        zero, a4, -810
                  bge         a7, t3, 897f
                  and         s2, ra, t2
                  nop
                  addi        zero, a7, 1063
                  or          a3, a7, ra
                  addi        s9, a1, -795
                  nop
                  lui         s3, 215877
                  bne         s8, t2, 902f
                  sll         a1, a0, a0
                  srl         zero, t3, sp
                  bltu        a0, t1, 911f
897:              or          a1, tp, a3
                  nop
                  slti        s4, s2, -81
                  bne         t3, a1, 903f
                  add         sp, s11, s8
902:              slti        s2, t4, -1058
903:              or          s3, t3, t1
                  addi        t1, s0, -337
                  srl         s9, t5, zero
                  bltu        t3, a5, 921f
                  sltu        gp, t1, t1
                  and         tp, s8, s4
                  srl         zero, s6, t6
                  sub         s0, gp, t6
911:              nop
                  bltu        t0, a0, 927f
                  or          a1, a0, a0
                  ori         a5, t2, -1714
                  add         a7, a1, t2
                  srl         zero, sp, s3
                  sltiu       a3, s2, 136
                  srl         s6, zero, s11
                  slti        t3, s7, 718
                  srli        a1, ra, 29
921:              xor         tp, a7, s7
                  sll         a0, zero, s9
                  nop
                  or          s3, s0, s10
                  auipc       a2, 390705
                  sltiu       t4, s3, 1437
927:              sll         s6, s9, t6
                  ori         gp, s10, 1036
                  slt         s1, s10, a4
                  xori        a1, s7, 1717
                  bgeu        s7, t0, 948f
                  ori         gp, s0, 1467
                  bltu        s9, a0, 941f
                  srl         a1, gp, t6
                  nop
                  ori         s2, a2, 58
                  auipc       ra, 405887
                  srli        zero, s7, 8
                  xor         a2, t2, s1
                  sltiu       a6, s8, -249
941:              nop
                  bne         s8, t4, 961f
                  beq         a2, s8, 946f
                  srai        a6, t6, 27
                  sll         zero, s0, a7
946:              beq         t4, sp, 953f
                  bge         sp, a4, 948f
948:              nop
                  add         ra, a7, gp
                  sltiu       a1, s11, -1238
                  sltiu       t4, gp, -628
                  auipc       s9, 791092
953:              ori         a0, a6, -1982
                  and         a0, t0, a3
                  add         s9, s0, a1
                  srli        zero, a0, 21
                  srl         s1, s5, s0
                  slt         s0, s3, a2
                  or          a0, t1, t0
                  and         a2, s0, sp
961:              blt         t4, t5, 977f
                  srl         s8, gp, t0
                  auipc       a4, 1021188
                  srli        s1, sp, 16
                  sub         a7, s4, ra
                  srli        s0, a6, 1
                  slt         s8, s0, a1
                  sltu        zero, s4, zero
                  sub         zero, s11, gp
                  sltu        t3, s8, t2
                  and         a6, a7, zero
                  xor         a5, a1, s0
                  slt         a1, a3, t2
                  addi        a1, s1, -1153
                  sltu        t0, a4, a2
                  or          t3, s8, gp
977:              ori         zero, t0, -842
                  slt         a2, s2, s1
                  bltu        tp, t5, 981f
                  nop
981:              nop
                  sra         a4, gp, a6
                  sra         a1, gp, s8
                  bne         s4, a1, 986f
                  add         zero, s9, t5
986:              xor         s7, t5, zero
                  bge         a7, t1, 1006f
                  xori        t0, a2, 1202
                  bltu        s0, s1, 1003f
                  beq         t2, s4, 994f
                  slli        ra, s10, 6
                  srai        t4, s1, 30
                  ori         zero, s6, -1674
994:              sltiu       a4, s7, 1400
                  andi        tp, s6, 1901
                  and         zero, a3, a2
                  bne         s5, s11, 1016f
                  slli        t4, a7, 27
                  auipc       a0, 259375
                  blt         a5, a3, 1007f
                  xori        ra, s6, 69
                  srai        a5, s6, 15
1003:             bltu        t6, t0, 1015f
                  slli        s6, s3, 2
                  slt         s2, t3, s4
1006:             sltu        s11, s7, s3
1007:             sll         a2, s0, gp
                  sltiu       t2, t0, 923
                  sltu        tp, t2, t2
                  srli        a4, a5, 20
                  slti        a4, a5, -411
                  nop
                  sll         s9, t6, s1
                  slt         t2, s1, s7
1015:             beq         s0, a2, 1029f
1016:             and         zero, a3, a6
                  bgeu        s4, s3, 1032f
                  nop
                  andi        a7, a5, 1306
                  bltu        s4, t0, 1022f
                  bgeu        ra, a6, 1040f
1022:             bgeu        s3, s1, 1026f
                  bne         a0, sp, 1024f
1024:             bgeu        t3, s4, 1034f
                  slti        sp, a5, 702
1026:             sra         a6, gp, a3
                  slti        a5, sp, 718
                  add         s2, s3, s7
1029:             bge         s7, a3, 1048f
                  bge         t3, s8, 1045f
                  ori         sp, s6, -1172
1032:             xor         s8, a3, s8
                  bne         t0, s4, 1047f
1034:             sra         a4, a3, s4
                  xori        t1, a6, -1055
                  add         s9, zero, s11
                  beq         t0, s6, 1046f
                  blt         s5, s11, 1054f
                  srl         a7, t1, a0
1040:             andi        s9, s8, -1031
                  slli        s5, t1, 11
                  beq         t3, t6, 1043f
1043:             srai        zero, t1, 10
                  bge         a2, s1, 1050f
1045:             or          s2, t1, a7
1046:             xori        a4, a6, -1740
1047:             bgeu        a6, s9, 1048f
1048:             bltu        a6, a2, 1063f
                  xori        tp, s1, 1133
1050:             srl         tp, t5, gp
                  xori        t4, gp, -482
                  slti        gp, a1, -1407
                  bgeu        s11, s1, 1057f
1054:             sltu        s3, a2, s2
                  slt         t1, a5, t1
                  add         t1, s1, s3
1057:             xor         a4, s11, tp
                  sra         t3, s6, t2
                  sub         zero, t5, a5
                  ori         s9, a4, 364
                  beq         t6, s1, 1076f
                  ori         zero, a6, 706
1063:             bne         s2, s1, 1071f
                  or          zero, s7, s11
                  sltiu       ra, t0, 2031
                  slli        tp, s6, 0
                  addi        a0, a6, 154
                  andi        sp, s5, 88
                  addi        t2, s10, -1967
                  andi        s8, a3, 1500
1071:             add         a0, s5, ra
                  beq         s4, a4, 1074f
                  add         sp, t3, tp
1074:             add         gp, s11, s4
                  sltiu       s3, t5, 539
1076:             xor         s2, tp, a7
                  auipc       t2, 190136
                  nop
                  sltiu       a0, s10, 814
                  bne         t4, t1, 1084f
                  xor         ra, s8, s5
                  andi        zero, t6, 1446
                  add         a3, a0, s10
1084:             xori        a7, s6, -1314
                  slti        gp, ra, 716
                  sra         tp, t1, s8
                  srl         ra, s10, a7
                  addi        a4, t1, -717
                  slli        s0, s1, 7
                  xor         s3, a3, s8
                  bge         ra, s9, 1092f
1092:             slli        s6, a1, 0
                  and         t2, ra, t0
                  nop
                  and         t2, a6, s0
                  srai        s6, t6, 14
                  sltu        s2, gp, sp
                  slt         s5, ra, a5
                  slli        t1, gp, 13
                  ori         t2, a6, 932
                  srli        t3, a5, 14
                  sll         s7, s5, s6
                  ori         s2, a2, 1185
                  srli        a7, t0, 30
                  sra         s3, a1, t0
                  bltu        s11, t3, 1109f
                  nop
                  or          s0, s8, gp
1109:             xor         a4, t0, s1
                  li         t4, 0x5186aea6 #start riscv_int_numeric_corner_stream_3
                  li         s3, 0x1
                  li         t3, 0x0
                  li         s0, 0x283b02e2
                  li         s11, 0x0
                  li         a0, 0x0
                  li         a7, 0x0
                  li         s5, 0x251f74f6
                  li         s7, 0x0
                  li         a1, 0x0
                  sub         t1, a6, zero
                  nop
                  sub         s0, s4, a0
                  lui         s4, 882823
                  sub         a0, s2, a7
                  add         s4, sp, ra
                  addi        zero, s10, 1319
                  nop
                  lui         gp, 99880
                  add         a6, tp, t0
                  add         s9, zero, sp
                  lui         gp, 121152
                  addi        a7, t2, 963
                  add         s11, s5, a5
                  sub         sp, s2, gp
                  add         tp, sp, a6
                  sub         s2, s2, a5
                  nop
                  add         ra, s7, s11
                  sub         tp, s2, s5
                  addi        t4, t0, 1891
                  sub         a3, t6, ra
                  nop
                  sub         a1, a5, s3 #end riscv_int_numeric_corner_stream_3
                  lui         a1, 685960
                  sltu        t2, s11, s9
                  slt         t1, a7, tp
                  srli        a3, ra, 28
                  srai        a3, a4, 20
                  xor         s1, a5, s3
                  bge         a0, ra, 1122f
                  sll         gp, s9, s6
                  xori        s7, tp, 1754
                  slt         tp, tp, t6
                  and         s6, s10, s7
                  bne         t5, gp, 1131f
1122:             beq         s3, s7, 1141f
                  sll         zero, s10, tp
                  sra         zero, s5, t0
                  addi        s7, s10, -261
                  slt         t2, a0, zero
                  andi        a5, s11, -883
                  srli        zero, s1, 13
                  auipc       s4, 772126
                  xori        t4, s0, -1572
1131:             beq         t3, s6, 1145f
                  slt         s3, s7, a5
                  bge         ra, a0, 1135f
                  addi        s9, a3, -1916
1135:             sll         a5, s10, a2
                  add         a4, s2, t1
                  auipc       s11, 177055
                  srai        a2, a2, 4
                  bltu        s11, sp, 1140f
1140:             slti        a4, a7, -1898
1141:             srl         a1, s4, a2
                  andi        a4, s0, -753
                  ori         s1, s10, -1136
                  and         t4, t4, s1
1145:             lui         s0, 874233
                  beq         t3, s11, 1148f
                  srai        zero, a7, 12
1148:             xori        tp, tp, 670
                  srli        gp, a1, 7
                  sll         a1, a4, a6
                  slli        a4, tp, 15
                  auipc       s4, 131932
                  nop
                  sra         a5, t2, s0
                  xor         a7, a3, s7
                  bge         s1, s5, 1175f
                  sltu        t4, t2, s5
                  bne         a7, t0, 1177f
                  sltiu       zero, s1, -769
                  sltu        t0, t3, s2
                  lui         t0, 232907
                  slti        t3, a5, -1741
                  srl         gp, t4, a0
                  addi        a7, s9, 481
                  andi        a3, gp, -1027
                  srli        a4, a3, 4
                  and         ra, s7, a5
                  blt         s1, sp, 1185f
                  sub         a5, s10, s11
                  bge         s8, gp, 1177f
                  sltu        gp, s0, t3
                  xori        s8, s2, 465
                  add         a7, a4, t5
                  slt         a0, a2, t2
1175:             slli        s2, zero, 7
                  xori        t3, s10, -117
1177:             add         ra, a5, gp
                  sra         a7, t3, s3
                  bge         t6, s11, 1194f
                  sltu        a0, s4, a7
                  sra         a2, s6, t4
                  sltiu       t4, gp, 1022
                  add         t4, s7, s10
                  lui         ra, 651179
1185:             sltiu       s8, a5, -1558
                  slt         s9, ra, t4
                  bgeu        t3, gp, 1206f
                  nop
                  sltiu       ra, a3, 883
                  auipc       zero, 685135
                  bge         ra, s4, 1203f
                  slt         t3, s5, tp
                  ori         s9, t0, 429
1194:             beq         s10, gp, 1210f
                  add         s8, a6, s0
                  xori        ra, a3, -559
                  nop
                  srli        s3, a4, 26
                  andi        t1, t5, -1324
                  xor         s7, s10, t3
                  lui         tp, 600317
                  sltiu       a2, a0, -498
1203:             bge         t4, s2, 1222f
                  sltu        a1, sp, s2
                  addi        s11, t0, 1861
1206:             srli        a4, s4, 22
                  blt         s5, s10, 1216f
                  srli        t3, a4, 15
                  blt         t1, s4, 1223f
1210:             addi        s1, s6, -1680
                  sra         gp, zero, a4
                  auipc       gp, 729625
                  xor         s8, a0, t2
                  nop
                  auipc       t3, 846317
1216:             slt         s11, s6, s9
                  sub         a7, t3, zero
                  sltiu       t1, s1, 1413
                  add         a3, s2, s7
                  add         a7, s0, s9
                  ori         zero, t2, 1166
1222:             and         zero, s10, s2
1223:             srl         t4, s5, a3
                  addi        a7, t0, 817
                  ori         s4, a1, 477
                  blt         a1, s10, 1240f
                  sub         s4, t4, a4
                  bge         t6, s9, 1235f
                  sltiu       t0, t4, 557
                  nop
                  sll         s2, a2, s1
                  blt         a6, gp, 1248f
                  nop
                  bge         a7, t3, 1244f
1235:             bgeu        zero, t2, 1242f
                  srl         s5, t5, t3
                  xori        t0, zero, 1001
                  add         a3, ra, a4
                  lui         a5, 645274
1240:             beq         s9, gp, 1243f
                  bne         s8, t4, 1257f
1242:             slt         s1, s4, s10
1243:             slli        s11, s0, 22
1244:             auipc       s1, 160354
                  xor         zero, ra, s9
                  blt         a3, a0, 1263f
                  sltu        tp, t0, t0
1248:             andi        s6, s10, -1377
                  addi        a1, ra, 1057
                  nop
                  sll         a4, s11, a3
                  and         a1, s8, s9
                  sltiu       zero, s4, -1271
                  or          zero, s8, t3
                  or          a7, t3, t3
                  bne         t3, gp, 1275f
1257:             sub         s7, sp, t6
                  slt         a1, gp, sp
                  xori        a6, a1, 988
                  lui         t2, 925929
                  srl         a6, s3, t1
                  srl         a6, t6, s2
1263:             ori         zero, t5, -1245
                  srl         a0, a5, t0
                  nop
                  nop
                  bge         t4, s10, 1286f
                  lui         s7, 457474
                  ori         a4, s3, -204
                  sltiu       t4, t2, 1598
                  xor         s5, s0, s6
                  nop
                  add         zero, a2, t0
                  sltu        s2, s2, t5
1275:             auipc       tp, 338749
                  sub         zero, s5, a5
                  andi        zero, a1, -1450
                  srl         a4, t1, a7
                  and         t1, t4, ra
                  xori        s0, a4, -1743
                  bge         s5, s2, 1283f
                  beq         a7, t6, 1301f
1283:             slt         t2, sp, s2
                  bgeu        s11, a1, 1293f
                  xori        a5, s6, 185
1286:             bne         t3, a2, 1290f
                  sll         gp, a2, s10
                  sub         t1, s10, s9
                  bgeu        s8, tp, 1296f
1290:             srli        zero, a0, 23
                  beq         a0, s9, 1305f
                  nop
1293:             addi        s2, ra, 1375
                  addi        s0, t2, -1193
                  bltu        s8, gp, 1310f
1296:             sra         zero, s0, a4
                  xori        gp, s6, -1198
                  bltu        t3, a4, 1317f
                  andi        s6, s3, 726
                  bne         t3, a3, 1302f
1301:             or          ra, a7, t5
1302:             srli        s8, a2, 25
                  sll         t0, a4, s1
                  xori        s2, s7, 767
1305:             bltu        s2, t1, 1311f
                  and         a4, t6, t2
                  slli        a1, t2, 10
                  slti        t4, ra, 1898
                  sra         a0, s8, tp
1310:             blt         tp, t5, 1312f
1311:             sltu        s7, a7, a6
1312:             lui         s2, 236353
                  bge         t1, tp, 1328f
                  blt         a6, s10, 1328f
                  srli        a3, a1, 11
                  slti        a3, ra, -1194
1317:             slti        t4, a7, -1391
                  ori         a7, a7, -1396
                  lui         s1, 1003352
                  bge         a2, t6, 1321f
1321:             blt         t1, s11, 1336f
                  bne         s8, t1, 1334f
                  bgeu        a3, a3, 1324f
1324:             bgeu        a3, a4, 1328f
                  auipc       a4, 984080
                  auipc       s9, 748125
                  blt         s7, s10, 1341f
1328:             sltu        s5, a4, s2
                  bltu        a6, t1, 1348f
                  addi        s7, s0, 633
                  auipc       s7, 43051
                  sll         a6, s4, s8
                  and         gp, a5, zero
1334:             sub         a7, a1, a6
                  slti        a2, t3, -2018
1336:             srl         gp, t2, s1
                  lui         s9, 415641
                  slt         s3, s8, s1
                  sltiu       s8, s1, 1332
                  bne         t2, s2, 1348f
1341:             slt         s2, a6, sp
                  slli        a1, s4, 18
                  bge         t3, s2, 1344f
1344:             and         s8, sp, t6
                  beq         t6, tp, 1361f
                  sll         s1, ra, t2
                  srli        a1, t0, 0
1348:             sltu        s7, s10, zero
                  srli        t2, a5, 0
                  xor         t1, s6, t4
                  xor         s0, s11, s10
                  nop
                  xori        s5, sp, 1928
                  blt         sp, s9, 1366f
                  slt         t3, s9, s3
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_12
                  li         s5, 0x635a38e2
                  li         t3, 0x0
                  li         s11, 0x0
                  li         gp, 0x0
                  li         t0, 0x54399b96
                  li         s9, 0x1
                  li         a0, 0x0
                  li         s8, 0x1
                  li         a1, 0x47eae907
                  sub         s0, ra, s2
                  nop
                  lui         s4, 370156
                  add         s0, a4, s8
                  addi        a2, t2, -381
                  sub         s7, tp, s2
                  nop
                  sub         s11, a3, t5
                  sub         s11, s5, a5
                  addi        s3, a2, -588
                  sub         ra, s2, s0
                  addi        gp, gp, -1572
                  addi        a5, s6, -1890
                  lui         a4, 485775
                  lui         a1, 756169
                  lui         gp, 929323
                  add         a1, s4, s9 #end riscv_int_numeric_corner_stream_12
                  sltiu       a0, a3, 885
                  sltiu       sp, s2, -1727
                  add         ra, a4, s9
                  or          s9, zero, s8
                  sltu        a1, t6, s8
1361:             sltu        tp, a6, a0
                  bgeu        s9, t0, 1363f
1363:             blt         s7, ra, 1367f
                  lui         s3, 846101
                  bne         a7, sp, 1375f
1366:             sub         t0, t3, s11
1367:             beq         a7, s4, 1368f
1368:             xor         s6, s5, a3
                  or          s0, tp, s8
                  bgeu        sp, t1, 1379f
                  bltu        s2, a7, 1390f
                  auipc       zero, 271039
                  xori        tp, t5, 111
                  or          a7, t0, t2
1375:             ori         t3, s2, -558
                  xor         zero, zero, tp
                  or          a1, s8, t5
                  xori        t2, sp, -1616
1379:             bltu        s6, a5, 1395f
                  ori         a7, a5, -1389
                  addi        s7, a5, -1905
                  add         s3, a7, a3
                  sltu        t2, a5, s0
                  andi        ra, s0, -1978
                  bltu        a5, sp, 1399f
                  sub         a0, a4, a1
                  slt         a7, a5, t3
                  sra         a3, a6, s10
                  bgeu        s5, sp, 1403f
1390:             slti        a2, sp, 18
                  xori        tp, a2, -847
                  srli        s2, s5, 30
                  slti        tp, ra, -636
                  slti        a3, t2, 616
1395:             bltu        t0, tp, 1414f
                  or          s8, a1, s3
                  addi        tp, a7, -31
                  xor         s9, tp, s6
1399:             nop
                  slt         t2, a4, t4
                  ori         t3, tp, -739
                  srl         s9, a7, t2
1403:             bge         s10, s11, 1404f
1404:             sltu        a1, a0, s1
                  bltu        gp, s7, 1412f
                  sltu        a2, s0, t5
                  and         ra, s11, s5
                  sub         a4, s5, s9
                  or          s6, s3, t6
                  add         s4, s7, a3
                  addi        t4, gp, 1618
1412:             sub         a4, s1, s3
                  or          ra, t2, s3
1414:             ori         a3, s9, -948
                  slt         a2, a7, ra
                  sltu        s9, s5, s8
                  sltu        a2, a1, a7
                  sub         zero, s7, tp
                  bltu        tp, t2, 1426f
                  sub         s11, a4, s8
                  nop
                  slt         gp, s5, ra
                  addi        s3, sp, 481
                  beq         s7, s5, 1439f
                  slli        s2, s3, 5
1426:             srl         a1, s1, tp
                  sra         gp, t4, a1
                  nop
                  sltu        s11, t5, s8
                  srli        s1, tp, 16
                  xori        a3, s5, 365
                  ori         a6, s2, -954
                  nop
                  slli        t0, t5, 29
                  auipc       a0, 391496
                  xori        s0, s0, -1910
                  sra         s1, t4, a4
                  xor         s3, s4, t0
1439:             srl         zero, a6, sp
                  slti        s1, sp, 1653
                  and         a2, gp, a5
                  nop
                  lui         a1, 736472
                  slti        sp, t1, -810
                  bgeu        s1, t0, 1451f
                  sltiu       s1, a3, 25
                  xor         s6, t3, s9
                  xor         a4, s1, t3
                  beq         a5, t6, 1453f
                  bltu        tp, gp, 1452f
1451:             or          s7, a7, sp
1452:             add         s0, a3, s9
1453:             bgeu        a7, s0, 1461f
                  beq         sp, ra, 1469f
                  or          t0, t3, gp
                  bge         a2, t5, 1470f
                  sra         zero, a4, t0
                  bne         zero, a3, 1477f
                  nop
                  slti        s3, s5, 1425
1461:             bne         s4, a1, 1464f
                  sltu        s5, s7, s8
                  beq         s11, a3, 1480f
1464:             addi        s2, a7, 465
                  bge         s3, a5, 1467f
                  addi        s9, gp, -964
1467:             slti        t0, a3, 1358
                  ori         s4, ra, 1549
1469:             sub         sp, a3, s8
1470:             andi        s8, gp, 24
                  bgeu        a2, gp, 1490f
                  sltu        t1, a1, a3
                  auipc       sp, 404774
                  sra         zero, s7, gp
                  bgeu        sp, t2, 1491f
                  srli        s1, a7, 6
1477:             bltu        s8, gp, 1492f
                  xori        tp, a3, -599
                  slti        s3, a1, -1778
1480:             and         s7, s0, s0
                  sltu        t2, s8, s5
                  slli        s5, a4, 2
                  beq         t5, a1, 1485f
                  slt         s6, t6, t4
1485:             bne         a7, a0, 1504f
                  auipc       a2, 35064
                  sll         a6, a1, t6
                  blt         a7, a7, 1502f
                  srai        gp, t6, 0
1490:             slt         sp, s7, s3
1491:             sltu        s2, zero, a5
1492:             auipc       zero, 156628
                  bge         a2, t0, 1505f
                  or          t2, a3, tp
                  and         a1, a6, s8
                  sub         s5, s8, s7
                  srai        s8, s9, 2
                  srl         s2, t0, a5
                  sltu        s2, a1, a0
                  ori         zero, t2, 1628
                  beq         s8, t3, 1505f
1502:             slli        a2, s7, 26
                  and         t2, s9, a4
1504:             bgeu        t5, t2, 1506f
1505:             and         tp, a7, s5
1506:             blt         gp, s1, 1522f
                  bltu        s1, s10, 1513f
                  sltu        zero, t0, s4
                  add         zero, sp, a2
                  sub         s4, a4, s2
                  srli        s9, tp, 2
                  andi        s6, s11, -1268
1513:             sll         gp, gp, sp
                  slt         s5, s0, a0
                  bge         s2, a7, 1517f
                  bgeu        a1, t3, 1532f
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_10
                  li         t3, 0x0
                  li         s11, 0x56c6d0df
                  li         a0, 0x0
                  li         s1, 0x0
                  li         gp, 0x0
                  li         s9, 0x0
                  li         sp, 0x1
                  li         s8, 0x1ea563bd
                  li         s0, 0x0
                  lui         a2, 727979
                  add         a3, s11, a6
                  nop
                  sub         s1, a0, s7
                  nop
                  sub         t4, a5, sp
                  lui         zero, 954013
                  addi        tp, s10, 688
                  lui         sp, 469022
                  add         zero, s8, ra
                  nop
                  add         s6, a6, s1
                  nop
                  add         s6, a1, a1
                  lui         a0, 766671
                  sub         zero, a7, s4
                  sub         zero, s7, tp
                  sub         s6, gp, t2
                  sub         a5, s6, a4
                  sub         sp, a6, s7
                  add         t3, a0, gp
                  nop
                  addi        s7, t1, -923
                  nop
                  sub         t3, s9, s8
                  nop
                  sub         zero, s3, s1
                  sub         s0, s10, s11
                  addi        s7, gp, 1689
                  add         s3, t5, a1 #end riscv_int_numeric_corner_stream_10
1517:             bltu        a6, s0, 1536f
                  srl         s0, t2, a4
                  bltu        t0, t3, 1526f
                  slti        sp, s6, 483
                  sltu        a7, t3, a6
1522:             sll         a7, s6, t6
                  sub         s7, s0, s11
                  xor         a3, tp, a3
                  slti        s6, s9, 505
1526:             slti        zero, s0, 899
                  srai        zero, s7, 0
                  nop
                  srai        gp, sp, 17
                  and         tp, a7, s11
                  blt         t4, a2, 1550f
1532:             sltu        s0, t2, s6
                  and         s5, s0, gp
                  xor         s0, a3, a6
                  ori         tp, s5, 1444
1536:             addi        s6, a1, -136
                  sltiu       a0, s4, 924
                  andi        gp, t2, 17
                  add         a6, s9, a2
                  lui         a7, 671667
                  bltu        gp, a6, 1549f
                  blt         t0, t0, 1552f
                  srl         s9, s10, gp
                  slli        t3, t5, 29
                  sll         s6, gp, tp
                  or          zero, t5, t2
                  sltiu       zero, s9, -748
                  bge         a7, t1, 1562f
1549:             bge         s8, t1, 1552f
1550:             sltu        a5, s1, s11
                  srli        s6, s8, 26
1552:             bgeu        t5, sp, 1553f
1553:             and         s9, a5, s2
                  or          a2, a2, a6
                  ori         a5, t6, 306
                  nop
                  slti        a1, zero, -236
                  sltu        gp, ra, t0
                  bge         a0, s10, 1578f
                  xor         s5, s0, s0
                  ori         a1, zero, 1904
1562:             bge         ra, a4, 1571f
                  sltiu       s9, s4, -1655
                  slt         t4, t6, a3
                  add         zero, a4, tp
                  and         s6, zero, a5
                  sltiu       a7, t2, -473
                  add         s9, s3, s10
                  xor         zero, t1, a5
                  sub         zero, s8, s3
1571:             bltu        s7, s5, 1586f
                  slt         t0, s9, s10
                  bne         sp, t5, 1575f
                  xori        ra, t3, 300
1575:             auipc       a7, 84094
                  sub         zero, s5, t2
                  addi        a5, a0, -779
1578:             bne         s4, tp, 1585f
                  slli        t4, sp, 2
                  slt         a7, s7, a7
                  addi        s2, s8, 1050
                  sub         t2, s6, a0
                  andi        t2, s7, -311
                  nop
1585:             srli        gp, a2, 0
1586:             beq         ra, ra, 1605f
                  sll         s9, s2, s4
                  andi        a6, s6, -870
                  nop
                  slti        zero, t4, -8
                  sltiu       s11, a6, -155
                  bltu        a5, zero, 1596f
                  slli        s2, zero, 15
                  srai        a1, s5, 23
                  addi        a7, a6, -857
1596:             nop
                  sll         tp, t3, s1
                  or          s4, a5, s5
                  blt         a3, a3, 1614f
                  sltiu       a3, s5, 1438
                  sll         a2, s6, zero
                  sltiu       a3, sp, -1938
                  beq         s2, a3, 1604f
1604:             xor         s6, s0, t5
1605:             sll         s9, t6, s1
                  slti        a4, t3, -1266
                  srai        s6, ra, 21
                  srai        t1, a1, 6
                  slli        s9, a1, 15
                  bge         zero, s10, 1629f
                  xor         s5, t0, gp
                  sltu        gp, t5, t0
                  blt         a7, t3, 1628f
1614:             blt         s3, zero, 1631f
                  lui         zero, 316027
                  addi        a3, ra, 506
                  or          a7, zero, s6
                  auipc       tp, 998757
                  auipc       t2, 1008897
                  slli        s11, s2, 23
                  add         s7, a3, a5
                  xori        t3, t2, -351
                  slti        t4, a7, -1725
                  sub         s0, s3, s7
                  sltiu       s9, s0, 1431
                  sra         s8, tp, s11
                  srai        s2, t1, 8
1628:             srai        gp, s10, 21
1629:             bne         s0, a1, 1643f
                  slt         s8, a7, t5
1631:             xori        s1, s2, 215
                  sra         a6, a5, a6
                  bgeu        s11, t0, 1634f
1634:             beq         t2, t0, 1636f
                  sltiu       t3, a3, 1410
1636:             and         a0, tp, t1
                  addi        t2, ra, 1094
                  blt         t2, s3, 1657f
                  sltiu       tp, t3, 1153
                  sub         s11, t6, tp
                  bge         ra, s3, 1650f
                  sltu        zero, t3, a7
1643:             nop
                  addi        s2, s2, -1918
                  xori        t0, t5, -1253
                  xori        a6, a7, 774
                  blt         t0, s0, 1648f
1648:             xori        t1, s11, 1583
                  bge         t3, a1, 1650f
1650:             slli        zero, t6, 29
                  srai        t2, a2, 11
                  beq         a7, s2, 1662f
                  sub         a5, s1, s11
                  srli        s4, tp, 28
                  lui         zero, 401928
                  sub         tp, s2, s2
1657:             auipc       a7, 76795
                  bge         sp, s3, 1664f
                  bne         s11, t3, 1674f
                  srli        zero, s4, 13
                  slti        s6, t1, -390
1662:             blt         s4, s1, 1681f
                  xor         t3, t3, t6
1664:             addi        s1, s4, 284
                  bne         t5, tp, 1680f
                  bgeu        tp, s11, 1668f
                  xori        s5, t2, 447
1668:             bltu        a4, a4, 1683f
                  nop
                  sltiu       a3, s8, 988
                  andi        t2, s1, 9
                  slt         s7, tp, s5
                  ori         a0, a1, -686
1674:             bgeu        t1, t0, 1693f
                  slti        s2, a0, 27
                  add         zero, ra, s9
                  bge         t6, a6, 1689f
                  srl         t1, gp, a3
                  blt         s4, s8, 1693f
1680:             sltu        a0, t0, t0
1681:             sltiu       a1, a3, -1225
                  xori        a6, zero, 1558
1683:             and         s5, s9, sp
                  xor         t1, s11, s9
                  and         a7, t1, s1
                  bltu        ra, s9, 1705f
                  sltu        a2, a2, a6
                  sll         s0, t0, a4
1689:             xori        ra, a4, -1671
                  sltu        a0, s10, s3
                  blt         s4, s10, 1705f
                  blt         s1, t5, 1694f
1693:             bltu        s4, gp, 1701f
1694:             sll         a6, a5, tp
                  sltiu       t2, s0, 1578
                  andi        t0, s1, -1729
                  bge         s6, a2, 1701f
                  sra         s9, a4, t4
                  andi        s4, s9, 864
                  ori         t3, a3, -1316
1701:             sltu        t0, tp, a7
                  blt         tp, a3, 1721f
                  add         s3, s0, t2
                  slt         a3, s1, t3
1705:             auipc       a2, 560363
                  srl         a4, s0, tp
                  ori         s7, tp, 807
                  sra         s9, a6, a5
                  xor         a2, s9, s4
                  bne         tp, t2, 1727f
                  bltu        s3, s6, 1718f
                  xor         ra, gp, a4
                  srl         t1, a0, s11
                  blt         a5, s2, 1715f
1715:             blt         t2, s9, 1731f
                  slt         t2, sp, sp
                  add         t1, t6, t3
1718:             srli        zero, a5, 23
                  srli        s1, a6, 22
                  xori        zero, sp, -359
1721:             nop
                  sltiu       a1, s0, 168
                  sltiu       zero, s7, -1808
                  nop
                  beq         s8, sp, 1729f
                  beq         t1, tp, 1742f
1727:             bgeu        s4, t6, 1741f
                  xor         a7, a1, s8
1729:             add         t1, tp, a7
                  srai        ra, a1, 30
1731:             auipc       a3, 628009
                  lui         sp, 661742
                  bge         tp, s3, 1740f
                  sltiu       zero, zero, -1468
                  beq         t4, zero, 1738f
                  and         t2, t0, s7
                  srai        a6, a5, 5
1738:             slt         s2, s3, t4
                  lui         a2, 860219
1740:             auipc       a6, 232464
1741:             add         tp, tp, a6
1742:             srl         zero, ra, a1
                  andi        t0, sp, 1727
                  xor         zero, s5, s6
                  srl         s2, s2, t2
                  srai        s5, a5, 20
                  bge         s6, a7, 1755f
                  beq         a4, t1, 1749f
1749:             bltu        zero, t4, 1753f
                  and         a0, s7, t3
                  bltu        s8, tp, 1770f
                  lui         a0, 440496
1753:             sltu        s7, s5, s4
                  sub         t3, t6, gp
1755:             ori         a3, t3, 1828
                  slti        t3, a4, 1838
                  bne         ra, a5, 1772f
                  lui         a0, 90086
                  sltiu       a7, a1, -151
                  bge         a2, t0, 1770f
                  addi        zero, a4, -1253
                  bltu        t3, a7, 1764f
                  blt         a1, t6, 1777f
1764:             blt         s5, a2, 1767f
                  add         t3, s5, ra
                  slt         a6, s3, t4
1767:             sub         s5, a5, a0
                  sub         tp, tp, a2
                  sra         gp, a7, s6
1770:             andi        s4, s8, 562
                  slt         a0, tp, s7
1772:             bltu        a7, s3, 1791f
                  srli        s3, zero, 21
                  beq         a2, a7, 1781f
                  beq         ra, s8, 1776f
1776:             slti        a7, t6, 68
1777:             xor         zero, s7, t5
                  sltu        t2, sp, tp
                  srli        s3, s7, 6
                  srai        a3, ra, 30
1781:             beq         t4, t0, 1783f
                  bge         s9, a0, 1801f
1783:             srl         t4, a0, t2
                  add         s2, t5, a0
                  srl         s9, s2, sp
                  srli        s7, a6, 6
                  sub         t3, zero, s4
                  srai        s11, ra, 14
                  bne         s1, s10, 1793f
                  lui         s3, 604738
1791:             sll         zero, s5, s0
                  bgeu        s5, gp, 1808f
1793:             slti        s3, s4, -1151
                  or          s0, a2, a7
                  lui         a4, 53607
                  sra         a0, s3, s10
                  auipc       a6, 730290
                  sltiu       t0, s1, 1474
                  auipc       sp, 103559
                  sll         a7, s5, tp
1801:             srl         t0, t1, s1
                  add         s4, t5, t6
                  bge         zero, a0, 1804f
1804:             auipc       gp, 1045692
                  nop
                  nop
                  ori         a7, a2, 1330
1808:             sll         zero, t3, s3
                  nop
                  xori        s6, a0, 1578
                  ori         s4, a1, 1313
                  lui         zero, 963042
                  andi        s9, sp, 680
                  slli        t2, sp, 6
                  srl         tp, s0, a6
                  bne         sp, a4, 1823f
                  xori        gp, s5, -972
                  andi        t1, s3, 1213
                  lui         a4, 849747
                  sll         t1, t4, a1
                  or          a3, ra, sp
                  bge         s4, s4, 1834f
1823:             sltu        s11, t0, a3
                  andi        s9, t3, -1931
                  addi        s3, s3, 1072
                  auipc       s0, 126725
                  bne         s4, s4, 1833f
                  beq         s6, a3, 1842f
                  srai        s7, s8, 17
                  auipc       gp, 13089
                  blt         s0, t2, 1846f
                  add         a6, t0, zero
1833:             addi        gp, s3, 1419
1834:             bge         s2, s6, 1850f
                  lui         t2, 398726
                  beq         a5, a2, 1845f
                  sltiu       s3, tp, -1515
                  nop
                  slli        a5, sp, 17
                  sll         s8, t3, zero
                  and         t4, t2, t4
1842:             bltu        a4, ra, 1856f
                  sub         a4, s8, a3
                  slt         a2, t5, a2
1845:             slli        s6, s6, 1
1846:             srli        zero, s7, 13
                  blt         gp, t2, 1866f
                  sltiu       s4, ra, 670
                  bge         a6, a3, 1868f
1850:             andi        s9, s4, -1892
                  bge         s10, s0, 1868f
                  sll         s6, s5, t6
                  sll         t3, gp, gp
                  sll         a0, ra, t4
                  bltu        ra, a6, 1857f
1856:             sra         s11, ra, a1
1857:             and         s1, a2, t1
                  sll         s7, s3, zero
                  xor         a4, ra, t6
                  bne         s4, s7, 1875f
                  nop
                  bne         t3, s4, 1871f
                  addi        a3, a7, 1749
                  or          s3, t2, zero
                  lui         s5, 112209
1866:             xori        zero, zero, -2015
                  bge         s4, s8, 1883f
1868:             nop
                  bge         s3, t4, 1883f
                  sub         s3, a2, s7
1871:             srl         s2, t3, a4
                  sra         s7, s4, t6
                  xori        t4, a5, -1381
                  sltu        a5, gp, t6
1875:             sltu        s11, sp, gp
                  slli        t3, a5, 8
                  blt         s2, t3, 1896f
                  slli        s1, sp, 22
                  lui         zero, 480463
                  slti        s2, t3, -1177
                  beq         t1, a2, 1885f
                  sltiu       t1, s4, 171
1883:             bgeu        s11, s8, 1898f
                  srai        a0, a3, 31
1885:             bltu        ra, t1, 1887f
                  add         s2, t4, s6
1887:             lui         a7, 574989
                  sll         a2, s7, t1
                  addi        s7, t6, 796
                  bge         a2, ra, 1897f
                  slt         t3, s7, s6
                  slli        s9, s8, 23
                  sll         t2, zero, s2
                  srli        tp, t6, 28
                  sll         gp, t1, s8
1896:             bgeu        t2, s6, 1899f
1897:             slti        s7, a7, -1593
1898:             xor         s4, s7, tp
1899:             blt         s3, s3, 1914f
                  sltu        a5, s6, s5
                  bgeu        a6, t1, 1915f
                  srl         zero, t5, s6
                  and         a4, s9, t3
                  sltu        ra, s10, s4
                  sltu        t4, gp, s0
                  slt         a3, s8, s7
                  andi        a0, s8, 438
                  srai        ra, a4, 24
                  sub         t0, s1, s4
                  srai        s5, ra, 24
                  srli        t1, s2, 25
                  srai        t3, s0, 27
                  and         a3, s1, t2
1914:             sra         s9, a5, gp
1915:             addi        zero, a2, 1852
                  sub         s0, ra, t3
                  auipc       t1, 525196
                  xori        a4, s2, 1244
                  srl         a0, a7, t6
                  add         s6, s10, gp
                  slti        s7, t6, 1702
                  bne         t5, a2, 1941f
                  bne         s11, a3, 1924f
1924:             lui         s7, 501791
                  auipc       s6, 660374
                  slti        s5, ra, 1602
                  nop
                  bge         a6, gp, 1930f
                  slti        s5, a5, -668
1930:             srl         a4, s9, t5
                  bge         a6, t1, 1950f
                  blt         s6, a6, 1947f
                  slti        s8, a0, -1626
                  srai        t4, a5, 6
                  addi        s4, s4, 721
                  xor         a5, s10, s9
                  sub         t2, s2, s2
                  sub         a6, t1, ra
                  sll         s9, t0, s4
                  sll         s1, s8, t3
1941:             auipc       zero, 422376
                  bge         t1, s5, 1954f
                  sub         t2, t0, a2
                  srl         s3, s5, zero
                  sll         a1, a4, s5
                  sra         t1, a4, s0
1947:             sra         a0, t1, t0
                  sltiu       tp, zero, 378
                  beq         s7, a1, 1968f
1950:             bltu        gp, t4, 1957f
                  xor         s1, t6, t6
                  srl         t0, s5, s3
                  bne         t3, t4, 1969f
1954:             slti        s7, t4, 1138
                  xor         a2, s4, s5
                  sltu        s4, t1, a4
1957:             xor         s2, a2, a4
                  bltu        a4, a4, 1972f
                  sub         a0, a4, s11
                  ori         s6, a1, 1620
                  nop
                  slt         a2, t0, tp
                  sub         zero, t6, t6
                  sub         t1, ra, t2
                  sltu        a7, s3, gp
                  bgeu        t3, a1, 1983f
                  lui         s1, 1020213
1968:             sltiu       s2, s11, -1716
1969:             bge         a2, t2, 1975f
                  bge         s7, sp, 1971f
1971:             ori         s5, a1, -564
1972:             slli        s1, sp, 3
                  beq         a6, a6, 1974f
1974:             slt         s4, t6, s4
1975:             beq         t2, s8, 1985f
                  ori         t0, s7, 1933
                  sra         gp, s10, sp
                  xor         s7, s6, gp
                  srl         gp, t2, a1
                  sltiu       a5, s5, 1140
                  srl         s6, a7, s1
                  addi        s11, zero, -1112
1983:             lui         t4, 763888
                  add         t1, s11, s10
1985:             andi        s2, ra, -1913
                  addi        s9, t0, -396
                  lui         a4, 522628
                  sub         s1, s5, a4
                  add         s9, a4, a6
                  xor         gp, a2, tp
                  li         t4, 0x3631b435 #start riscv_int_numeric_corner_stream_2
                  li         gp, 0x2c40192c
                  li         a1, 0x0
                  li         a6, 0x567721fa
                  li         t3, 0x1
                  li         s11, 0x4c26bc3b
                  li         s9, 0x1
                  li         s3, 0x1
                  li         s7, 0x0
                  li         s8, 0x0
                  add         t2, s6, a0
                  sub         gp, ra, s6
                  lui         sp, 194598
                  addi        s6, a1, 1671
                  lui         s11, 388212
                  addi        s1, a2, -1105
                  nop
                  add         a7, gp, s9
                  nop
                  add         zero, a2, a2
                  lui         s11, 594624
                  nop
                  lui         s5, 618971
                  addi        s8, t0, -528
                  lui         t0, 642641
                  add         s2, s4, s9
                  addi        s11, a4, 928
                  addi        s1, ra, 1719
                  addi        s1, ra, -726
                  sub         a0, t5, a5
                  add         t2, s7, t1
                  lui         a0, 1027171
                  sub         a3, t0, sp #end riscv_int_numeric_corner_stream_2
                  or          a4, a6, s5
                  add         gp, s5, a7
                  slli        a0, t0, 21
                  bltu        a7, s8, 2002f
                  sltiu       t2, a5, -1155
                  sra         s9, a3, sp
                  slti        zero, t4, 1848
                  bltu        t0, s7, 2017f
                  slt         t0, a6, sp
                  bltu        t4, zero, 2004f
                  slti        t0, s5, 754
2002:             bltu        t3, a1, 2004f
                  and         a1, s1, a0
2004:             slti        a3, tp, 1192
                  bge         t0, gp, 2020f
                  sltiu       sp, s1, -1449
                  or          s11, s10, t3
                  bge         s6, t5, 2027f
                  bne         s7, ra, 2025f
                  bgeu        a4, s6, 2025f
                  sll         s9, a2, a3
                  addi        t1, s5, -1203
                  sltiu       s8, t4, 197
                  beq         zero, t4, 2015f
2015:             srli        zero, a4, 1
                  auipc       zero, 154580
2017:             sltiu       a3, t3, 2015
                  bltu        s3, s7, 2024f
                  or          t0, s8, s2
2020:             or          a7, sp, t3
                  sub         s2, s9, s10
                  slt         s2, s10, tp
                  ori         s3, s1, 1565
2024:             or          s11, a1, a4
2025:             add         a6, s3, a4
                  slt         a4, s7, t3
2027:             sra         a6, a2, a3
                  add         s7, sp, t0
                  bge         a1, s1, 2043f
                  bge         a4, s9, 2042f
                  and         s5, s1, s8
                  andi        t1, a5, 2001
                  lui         t0, 268314
                  nop
                  or          a4, s6, zero
                  nop
                  xori        s9, s5, 179
                  sltiu       a2, a2, 1771
                  sll         a0, s3, s9
                  lui         s0, 336737
                  nop
2042:             andi        s4, ra, -1867
2043:             and         a3, s9, a1
                  slt         t3, t5, s5
                  srli        sp, a4, 3
                  sll         a6, s0, s3
                  blt         t0, s9, 2051f
                  slli        a7, tp, 25
                  xor         a6, t2, s6
                  sub         a6, s0, a7
2051:             blt         s7, t5, 2052f
2052:             srli        s1, zero, 3
                  sltu        a3, s2, s6
                  sll         t1, a4, s0
                  srai        s0, s2, 12
                  sltiu       s6, sp, -1068
                  sltu        zero, t5, a2
                  andi        a6, a2, 1564
                  or          s0, a3, s7
                  add         s6, s8, s4
                  bltu        a0, s11, 2063f
                  nop
2063:             xori        t4, s0, -599
                  srli        s3, s7, 12
                  bgeu        tp, s6, 2068f
                  andi        a3, t2, -1077
                  xor         s5, ra, s11
2068:             beq         a3, s9, 2082f
                  addi        s2, s1, -1662
                  bgeu        s8, zero, 2089f
                  xor         s11, a3, t6
                  sltu        s6, s5, s5
                  bgeu        s1, s3, 2088f
                  bltu        a0, t3, 2088f
                  and         s0, s6, a0
                  ori         zero, t4, 298
                  andi        s5, s5, -301
                  slli        t2, a6, 6
                  sll         s8, s1, s10
                  add         s9, s5, ra
                  blt         s2, tp, 2100f
2082:             sra         gp, tp, t4
                  sltu        s3, s11, a3
                  beq         a6, t0, 2091f
                  nop
                  addi        ra, a6, 1903
                  sll         tp, s0, t2
2088:             beq         tp, s2, 2107f
2089:             bgeu        a5, gp, 2097f
                  ori         a0, a5, 1468
2091:             sra         tp, s0, t1
                  addi        a2, s4, -1284
                  slli        t0, s8, 12
                  lui         a5, 990685
                  slti        t4, tp, -1451
                  slt         s7, s4, s11
2097:             sltu        a6, s0, a4
                  add         s9, s6, tp
                  ori         ra, a4, -177
2100:             sub         a1, s1, a1
                  slli        tp, gp, 20
                  and         zero, zero, zero
                  add         s5, s1, s9
                  add         a4, a7, s10
                  bne         s7, s4, 2106f
2106:             lui         sp, 103580
2107:             ori         tp, t2, -1337
                  slti        s2, s4, -1961
                  addi        zero, s0, 1995
                  xori        zero, s0, 450
                  srl         a4, t0, s7
                  or          zero, s9, a4
                  srl         s8, s0, ra
                  lui         t3, 861415
                  ori         s3, a6, 14
                  srli        a0, a7, 28
                  slt         t3, s9, s8
                  sub         a7, s5, ra
                  sub         s7, t6, gp
                  bne         sp, t2, 2127f
                  blt         a7, s10, 2123f
                  beq         a5, sp, 2131f
2123:             sltiu       gp, s9, 1572
                  bne         s11, sp, 2126f
                  blt         t3, s1, 2135f
2126:             slti        a5, s4, -1340
2127:             bgeu        a0, s8, 2131f
                  blt         tp, t3, 2145f
                  andi        s2, t5, 674
                  or          t2, s11, t5
2131:             bne         s0, t5, 2150f
                  slti        a5, s7, 1178
                  sll         gp, s1, gp
                  slt         a0, s2, t0
2135:             sltiu       a7, t4, 82
                  srli        s0, a4, 17
                  slt         a0, sp, s10
                  xori        s5, gp, -921
                  or          s2, t5, a3
                  blt         t3, t2, 2156f
                  sltiu       a3, t5, -736
                  srl         zero, s6, t4
                  srl         a0, zero, a1
                  sra         s1, zero, t2
2145:             bgeu        t3, s10, 2155f
                  sltiu       t3, t6, -1803
                  blt         gp, t3, 2161f
                  sltu        s9, a0, t0
                  addi        a2, s7, 1251
2150:             srai        t1, s4, 0
                  sub         s1, zero, a0
                  add         zero, s0, a7
                  slti        s11, a1, 104
                  or          s5, s11, t5
2155:             and         a0, ra, t3
2156:             sltiu       s4, s11, 267
                  xori        s9, a1, 1502
                  sra         t0, s11, tp
                  slt         s4, s5, t0
                  bgeu        t6, a6, 2169f
2161:             ori         s2, t0, -904
                  slti        a7, a7, -807
                  bltu        t4, ra, 2165f
                  sll         s8, a4, ra
2165:             blt         s8, ra, 2172f
                  xor         s8, a6, tp
                  bge         a3, s9, 2171f
                  bne         a0, s6, 2171f
2169:             add         t2, t0, a1
                  nop
2171:             auipc       tp, 524469
2172:             nop
                  sltiu       s6, a5, -632
                  nop
                  slli        zero, gp, 0
                  sltu        a1, a3, s9
                  nop
                  addi        t0, s2, -348
                  andi        ra, a4, -848
                  add         a4, tp, a7
                  slt         a6, s6, t5
                  blt         a7, s8, 2201f
                  srl         t2, t4, zero
                  srli        zero, s9, 12
                  srli        a3, t1, 14
                  bge         s4, s9, 2205f
                  beq         a3, s11, 2206f
                  nop
                  blt         a0, s10, 2191f
                  ori         t2, t5, 272
2191:             bgeu        sp, t6, 2198f
                  slti        s1, s4, 1688
                  srai        s5, s1, 28
                  srl         a0, s11, s4
                  andi        gp, a5, -111
                  addi        s6, a6, 1781
                  sub         t0, t3, s3
2198:             bge         s3, t0, 2213f
                  xori        t3, s7, -459
                  srli        a2, s8, 18
2201:             slt         t3, s10, t6
                  sll         a1, ra, s8
                  sra         zero, tp, t0
                  bne         t5, t3, 2218f
2205:             bgeu        zero, gp, 2217f
2206:             bne         s6, t6, 2220f
                  xori        zero, s9, 856
                  auipc       s1, 476600
                  sll         a5, t0, s4
                  andi        sp, tp, 26
                  sltiu       s1, s11, -1152
                  srai        a6, s3, 18
2213:             sll         a4, a6, t5
                  addi        s0, t0, 1228
                  bgeu        s1, s6, 2219f
                  srai        s7, t6, 7
2217:             slli        a0, t6, 8
2218:             srli        zero, s9, 5
2219:             bltu        sp, t0, 2220f
2220:             add         tp, t4, s9
                  sra         a7, t0, s6
                  sra         a7, s10, s2
                  sltu        s1, tp, s6
                  slti        s8, a0, -297
                  or          a2, s2, t5
                  sltu        a5, a6, s6
                  addi        a6, t0, -1178
                  bgeu        a3, sp, 2236f
                  xori        a4, a4, 87
                  auipc       a5, 571490
                  sra         zero, s0, a1
                  bne         a2, s3, 2233f
2233:             or          t2, zero, zero
                  auipc       s9, 320866
                  andi        zero, t2, -704
2236:             and         s11, s4, t5
                  xor         s11, s6, t3
                  bgeu        t1, s11, 2244f
                  slt         t0, s1, s3
                  add         zero, t2, t0
                  nop
                  bne         s7, t1, 2259f
                  ori         a2, s6, -991
2244:             srai        t4, s9, 9
                  sltu        t4, a3, t4
                  xor         zero, gp, s11
                  sub         a3, s11, a2
                  add         s8, gp, a4
                  sltiu       s4, s4, 816
                  sub         tp, a2, t1
                  slti        t2, a7, 1263
                  slti        zero, t0, 124
                  srli        a3, s5, 22
                  slli        a1, s6, 6
                  bge         t6, t5, 2274f
                  xori        s7, a5, 1741
                  slti        zero, s5, 1665
                  slli        s0, s0, 12
2259:             blt         a5, a4, 2260f
2260:             auipc       ra, 569597
                  sub         t0, s9, t0
                  srli        s6, t0, 16
                  xor         t2, a0, zero
                  nop
                  sll         s5, tp, sp
                  or          a6, t5, a2
                  nop
                  beq         s6, s5, 2284f
                  sltiu       zero, a2, -1337
                  xor         a7, a7, a7
                  srli        gp, s11, 12
                  nop
                  or          a3, t3, a7
2274:             bne         a2, s0, 2293f
                  srai        a0, t1, 10
                  srl         s11, s9, s7
                  auipc       t2, 965213
                  sltu        a2, t5, zero
                  bltu        t5, a4, 2294f
                  sub         a4, t3, sp
                  sub         sp, t4, s9
                  lui         a5, 1020762
                  srli        a7, a5, 17
2284:             xor         a1, t1, t1
                  srai        s7, a0, 23
                  srai        ra, zero, 5
                  sltu        a0, sp, s10
                  or          t3, s4, a2
                  srai        s3, s5, 28
                  sll         t2, s8, s3
                  sub         zero, t4, t0
                  sll         s0, s2, t4
2293:             beq         zero, t5, 2308f
2294:             add         s11, a4, sp
                  sll         a7, a1, s3
                  and         a0, t5, a4
                  auipc       a4, 399601
                  lui         s9, 829963
                  srl         zero, a7, a0
                  bge         s0, a5, 2302f
                  add         t3, s8, s1
2302:             beq         s9, t2, 2318f
                  add         t4, a3, s8
                  sub         s4, a7, s0
                  beq         s0, s6, 2324f
                  srl         a5, s9, sp
                  lui         ra, 14584
2308:             ori         sp, t0, -1724
                  blt         s9, t3, 2310f
2310:             and         s8, s6, t1
                  sra         t2, t1, t3
                  andi        a3, a5, 271
                  bne         t2, s8, 2327f
                  bltu        s11, t0, 2333f
                  sltu        t1, s8, s5
                  add         t2, a1, t6
                  auipc       tp, 496590
2318:             beq         sp, s3, 2320f
                  xor         ra, s11, ra
2320:             srai        a2, s5, 26
                  srl         s1, zero, a2
                  bgeu        t5, a3, 2332f
                  sub         s4, a0, tp
2324:             sub         tp, t4, s8
                  sltu        t2, a0, a2
                  srli        zero, s0, 2
2327:             xor         zero, s5, a0
                  or          t0, t1, s1
                  srl         a1, zero, t1
                  bge         s10, s6, 2347f
                  ori         s8, a5, 1078
2332:             or          t1, a0, a2
2333:             and         zero, t1, s4
                  or          ra, t5, t0
                  or          a0, zero, t6
                  xor         gp, s10, s4
                  sltiu       s8, s8, -2030
                  bgeu        s4, s3, 2347f
                  andi        s4, s8, -2043
                  bltu        s9, s1, 2342f
                  slt         t3, tp, s3
2342:             sll         a7, s0, s2
                  beq         s7, tp, 2358f
                  bne         a6, t0, 2351f
                  bne         a4, s7, 2347f
                  beq         a4, t5, 2350f
2347:             bne         s1, t3, 2353f
                  sub         t1, a7, s6
                  and         s2, a4, s8
2350:             lui         s11, 1041183
2351:             bgeu        s6, s4, 2359f
                  nop
2353:             xor         a4, t5, ra
                  sltu        a6, t2, ra
                  sll         s7, s10, s11
                  lui         s8, 243229
                  beq         a0, t2, 2376f
2358:             sub         gp, s4, s2
2359:             nop
                  sltiu       a3, a7, -11
                  sll         zero, zero, a3
                  sltu        s3, t3, s2
                  bltu        a7, a1, 2377f
                  slli        a6, s8, 22
                  lui         s4, 1022138
                  slti        a0, ra, -1294
                  or          s9, a6, a3
                  ori         s9, s6, 470
                  and         zero, a4, s7
                  xori        a7, a5, 1071
                  srai        s3, t5, 20
                  sub         t3, a2, t0
                  andi        a6, a2, -1888
                  and         s0, a2, a0
                  sub         s5, tp, a2
2376:             bltu        s11, t0, 2380f
2377:             slti        t1, a7, 80
                  srl         s4, s5, t0
                  sll         t0, s2, a4
2380:             slli        gp, s10, 5
                  addi        a5, t5, 1658
                  srai        t1, s4, 5
                  sra         tp, a6, s0
                  srai        zero, a3, 7
                  sltu        a7, t6, s2
                  slti        sp, zero, 212
                  srl         a0, gp, tp
                  sll         s7, a3, t6
                  ori         tp, s10, -1890
                  andi        t4, s8, -1771
                  sltiu       s3, a3, 99
                  auipc       s7, 964311
                  srli        a2, tp, 21
                  and         a6, a0, t0
                  nop
                  nop
                  slti        tp, a2, 1346
                  lui         zero, 656986
                  slli        zero, s4, 7
                  sltiu       sp, t4, -1627
                  srli        t4, s8, 31
                  bge         s2, gp, 2403f
2403:             add         s1, tp, s2
                  srli        zero, s0, 30
                  addi        zero, s2, -240
                  ori         t0, ra, 906
                  bge         a5, t3, 2422f
                  slt         s11, s5, gp
                  sltiu       a2, a0, -852
                  slti        a2, s8, 1245
                  srli        s11, s9, 12
                  xori        a5, a0, -1323
                  add         zero, tp, s2
                  sll         s4, a0, s1
                  add         a1, s4, a6
                  add         s8, s3, s1
                  ori         s9, a2, -136
                  and         s6, s3, a6
                  srai        s2, t2, 24
                  bne         s2, a6, 2439f
                  slli        gp, s2, 10
2422:             xori        s7, s1, 305
                  andi        s6, s3, -1297
                  sltiu       a6, zero, 142
                  blt         s0, ra, 2441f
                  bne         t3, t4, 2438f
                  lui         a7, 842717
                  or          a3, s6, s9
                  bne         s3, a3, 2436f
                  beq         sp, s2, 2445f
                  beq         a7, zero, 2450f
                  addi        t4, a1, -941
                  andi        a6, t2, 1030
                  sltu        a5, t5, t6
                  beq         a3, a5, 2438f
2436:             ori         a5, a1, 1381
                  slt         s11, s5, a7
2438:             sll         a7, s1, a7
2439:             bge         a1, s7, 2440f
2440:             srli        gp, tp, 11
2441:             or          s4, t1, t1
                  add         zero, a0, s9
                  lui         t3, 989961
                  lui         s11, 21089
2445:             slti        a6, s0, -557
                  slti        t0, s0, 1075
                  andi        s5, a0, 1373
                  srli        s6, s1, 27
                  slt         ra, a4, s1
2450:             nop
                  bltu        t0, zero, 2467f
                  sra         zero, s11, sp
                  or          sp, s0, ra
                  andi        t4, a0, -1626
                  xor         a2, a4, t0
                  beq         t0, a0, 2470f
                  sub         t4, s0, sp
                  bne         t0, a6, 2477f
                  srai        zero, sp, 4
                  bge         a4, s6, 2472f
                  sub         s1, s4, t0
                  bne         s5, s9, 2470f
                  andi        s2, s9, 1347
                  sltu        a5, s0, s9
                  or          s9, a5, a3
                  and         zero, s9, t2
2467:             sltu        a5, gp, s9
                  ori         tp, s11, -843
                  slt         s9, s1, s8
2470:             add         s2, s3, a2
                  ori         t0, s6, -1030
2472:             srai        zero, a5, 24
                  nop
                  and         t1, s7, s7
                  andi        t2, gp, 1797
                  srl         a6, s11, s5
2477:             sltu        a4, s8, s2
                  slt         sp, t5, a3
                  blt         s8, s9, 2495f
                  and         a5, tp, ra
                  and         a1, t4, s10
                  srl         a0, s5, a1
                  sll         s5, a7, t4
                  sra         a0, s8, s8
                  slli        sp, a5, 8
                  ori         s3, a5, -770
                  lui         s0, 862325
                  sltiu       zero, a4, 1108
                  bgeu        gp, t0, 2504f
                  and         t3, t2, s1
                  slt         t3, ra, t3
                  auipc       t4, 929669
                  and         s4, s10, s6
                  auipc       s1, 834968
2495:             bge         s1, a0, 2502f
                  bne         sp, s8, 2497f
2497:             sltiu       a4, s4, -1948
                  slli        s4, t5, 19
                  or          a6, ra, a5
                  slt         tp, t0, s5
                  slt         a5, a1, a6
2502:             nop
                  sll         a5, s4, s7
2504:             srli        t3, tp, 31
                  xor         s5, a3, s8
                  bgeu        a0, a7, 2507f
2507:             srl         s11, s6, t5
                  bltu        t0, s1, 2510f
                  blt         a7, s11, 2526f
2510:             sll         zero, gp, t6
                  srl         s1, t3, ra
                  xori        a4, s10, 84
                  sub         gp, s5, a6
                  xori        a4, s8, 1815
                  slli        s4, gp, 29
                  bge         t4, a0, 2535f
                  andi        s9, s8, 561
                  bgeu        s0, s9, 2528f
                  sra         zero, tp, a0
                  xor         a6, t0, a2
                  lui         s11, 519688
                  sltiu       s0, sp, -608
                  bge         a2, s9, 2539f
                  xori        a3, gp, 627
                  beq         s11, a7, 2534f
2526:             srl         s7, t6, s11
                  bge         t4, sp, 2534f
2528:             andi        ra, a4, -1245
                  slli        t4, t0, 6
                  sra         zero, t6, a2
                  xor         a7, sp, gp
                  add         tp, s10, a7
                  srl         ra, s11, a3
2534:             beq         a7, a7, 2553f
2535:             xori        a6, t2, 636
                  add         s7, ra, a0
                  auipc       s2, 596943
                  srai        s3, s11, 19
2539:             sra         a4, a4, s3
                  beq         s7, t3, 2555f
                  xor         a6, s3, t2
                  srl         zero, s8, a1
                  xori        t0, s9, -1821
                  bne         tp, a6, 2548f
                  xori        gp, a2, -884
                  ori         s9, t5, -1448
                  srai        s9, tp, 4
2548:             add         s8, s8, t6
                  auipc       t3, 235217
                  sltu        s4, ra, tp
                  xor         t3, s2, s1
                  andi        s7, t5, -1599
2553:             srai        a0, s1, 21
                  bltu        ra, a2, 2573f
2555:             slti        sp, a6, -115
                  slli        ra, a4, 29
                  sra         s2, s10, s11
                  auipc       a6, 199054
                  nop
                  sra         s5, tp, s5
                  bne         s5, ra, 2563f
                  or          zero, t6, ra
2563:             add         t1, s9, s1
                  andi        a1, t2, 1037
                  bltu        a0, a0, 2579f
                  srli        s11, t2, 20
                  bgeu        s0, ra, 2586f
                  add         a3, s5, s0
                  andi        a6, s9, -1512
                  bge         ra, a6, 2571f
2571:             sub         sp, s2, t3
                  xori        zero, gp, 942
2573:             lui         a0, 254351
                  sra         s1, t0, s8
                  sltiu       a2, s11, 1160
                  xori        a7, s8, 86
                  blt         tp, a1, 2592f
                  slt         t2, t2, t2
2579:             slti        gp, t1, -919
                  sltiu       s2, s9, 1772
                  sll         sp, s1, t2
                  blt         a4, s4, 2586f
                  xori        s5, a0, -1323
                  add         t2, t0, s2
                  ori         a1, sp, -1727
2586:             sltiu       a0, s0, -1504
                  sll         t2, t1, t0
                  andi        t3, sp, -820
                  and         s1, a3, s5
                  and         s5, s4, a5
                  bne         a3, t2, 2593f
2592:             sub         s4, s7, s10
2593:             nop
                  srl         gp, s0, s8
                  srl         a2, a3, s8
                  or          zero, s9, a6
                  beq         s3, s4, 2603f
                  and         ra, s6, a5
                  nop
                  sltu        sp, t4, s7
                  or          a0, t2, a1
                  sll         s6, a5, s2
2603:             or          a0, s8, s10
                  lui         gp, 191410
                  addi        s0, a5, -1452
                  sltu        a4, a3, a5
                  sltiu       ra, a1, -2044
                  nop
                  xor         s8, s7, t0
                  add         s8, zero, t5
                  slt         gp, zero, s1
                  srli        zero, t2, 14
                  ori         s3, s2, 1506
                  srli        s5, s5, 18
                  xori        gp, t4, -529
                  and         t3, s11, a7
                  add         a4, s0, t0
                  nop
                  bltu        zero, tp, 2633f
                  lui         s6, 302676
                  nop
                  lui         t0, 1017677
                  add         tp, s11, s0
                  slli        s2, s7, 20
                  nop
                  bne         t2, t5, 2640f
                  ori         s2, s4, -1103
                  slli        t3, s2, 14
                  sub         s7, s2, sp
                  sra         a7, zero, s3
                  srai        s4, t3, 28
                  lui         a3, 80798
2633:             bne         a3, s6, 2636f
                  slli        t1, s5, 29
                  sub         zero, s8, t6
2636:             and         t0, a1, a1
                  and         a2, t1, ra
                  auipc       gp, 54023
                  or          s11, s10, ra
2640:             sll         s2, a3, s1
                  slli        t0, s2, 13
                  lui         s6, 392989
                  nop
                  slli        a5, s5, 9
                  add         t1, a0, a1
                  li         t4, 0x6914ac9f #start riscv_int_numeric_corner_stream_6
                  li         s4, 0x1509a1b1
                  li         t3, 0x1
                  li         s0, 0x1
                  li         s1, 0x373fb764
                  li         s7, 0x0
                  li         a3, 0x1
                  li         s9, 0x0
                  li         a6, 0x1
                  li         s8, 0x1
                  add         s7, s2, a4
                  lui         s5, 532051
                  nop
                  add         s2, t2, s7
                  add         a1, s6, s1
                  addi        tp, s7, -1079
                  lui         zero, 998021
                  nop
                  nop
                  add         s0, s2, s11
                  addi        s2, s2, -729
                  lui         t0, 798022
                  add         t3, s4, a4
                  add         a0, s4, s3
                  add         s7, s8, a3
                  sub         a6, s4, zero
                  nop
                  addi        zero, s10, -1491
                  addi        s3, sp, 754
                  sub         t2, a7, a5
                  sub         t2, s11, s11
                  add         a3, t6, ra #end riscv_int_numeric_corner_stream_6
                  beq         ra, s1, 2665f
                  srli        t1, t0, 23
                  andi        zero, t0, 1235
                  srai        a5, t0, 20
                  xori        s0, s8, -1329
                  sra         zero, t0, s2
                  add         t1, s1, a1
                  sltu        s4, s3, t0
                  nop
                  bne         a6, a3, 2672f
                  sub         a7, tp, s10
                  and         a0, s8, s2
                  lui         a4, 180266
                  lui         t2, 879282
                  xori        s9, ra, -1541
                  or          s9, t4, a6
                  sra         s3, a3, s7
                  srai        a7, s9, 2
                  blt         s8, a5, 2679f
2665:             add         s9, s1, s2
                  srl         s3, zero, a1
                  and         a3, sp, t2
                  slt         t0, t5, t3
                  or          s11, s10, a5
                  beq         a3, tp, 2674f
                  bltu        ra, sp, 2672f
2672:             srai        s0, a2, 1
                  slti        s0, s9, 1703
2674:             srl         gp, s7, t6
                  sll         s0, zero, t5
                  sra         a6, t2, s1
                  andi        t2, a3, 1824
                  or          s3, s11, a1
2679:             bgeu        a4, ra, 2693f
                  xor         a0, s4, t3
                  bgeu        s8, a1, 2682f
2682:             blt         s11, s9, 2696f
                  bge         s4, a3, 2702f
                  andi        a4, t2, 1233
                  bltu        zero, s9, 2704f
                  sra         gp, t4, a4
                  ori         gp, a5, 1008
                  sra         s11, s3, t2
                  slti        s7, t4, -24
                  lui         t0, 757186
                  sra         t4, a3, zero
                  bge         s3, t4, 2700f
2693:             slli        s3, s11, 28
                  slti        t1, t1, 1253
                  andi        t4, s0, -531
2696:             srl         t0, s8, t6
                  srli        s7, s3, 8
                  slt         s3, a3, s4
                  srl         tp, s3, t0
2700:             sltu        zero, t5, a1
                  and         ra, a6, zero
2702:             auipc       a5, 109480
                  lui         zero, 105425
2704:             sra         s5, ra, a7
                  bltu        t2, ra, 2709f
                  andi        s0, t0, -1795
                  nop
                  srai        a7, s9, 11
2709:             bge         a4, s3, 2718f
                  bgeu        s9, a2, 2716f
                  add         t4, zero, t1
                  srai        a1, t4, 21
                  or          a0, s1, a5
                  bge         s8, ra, 2721f
                  srl         s6, a3, a1
2716:             srl         t3, t2, s1
                  beq         s11, zero, 2732f
2718:             or          a2, a4, zero
                  ori         zero, t5, 600
                  xor         zero, sp, s0
2721:             slt         s1, ra, zero
                  slt         tp, t0, a6
                  slli        zero, a2, 23
                  bltu        s11, a4, 2734f
                  and         a1, s9, ra
                  sltiu       ra, a0, 253
                  sra         s1, t2, s6
                  bgeu        ra, s10, 2743f
                  xori        a4, s10, 598
                  bne         s11, a6, 2744f
                  sltu        sp, a4, t2
2732:             beq         ra, zero, 2734f
                  srai        t1, a2, 13
2734:             sltiu       s11, t4, -1119
                  beq         tp, a5, 2751f
                  bgeu        s9, tp, 2755f
                  auipc       s6, 106505
                  xor         s1, t3, a7
                  xori        s4, a2, 1358
                  or          s1, t0, s2
                  ori         t3, zero, 1559
                  sll         a7, a4, s10
2743:             add         t2, t4, t2
2744:             and         t0, s3, a7
                  sra         s4, t6, a7
                  bltu        s8, t2, 2762f
                  xor         t1, t0, t6
                  slti        zero, s3, -236
                  slti        s5, t4, -1030
                  auipc       zero, 570307
2751:             slti        t2, s2, 911
                  sltu        zero, t1, t5
                  addi        zero, s8, 209
                  nop
2755:             blt         t5, tp, 2757f
                  srl         s4, s8, a2
2757:             auipc       tp, 887469
                  blt         s0, zero, 2760f
                  bltu        s6, a0, 2762f
2760:             blt         t1, gp, 2761f
2761:             or          gp, s0, t1
2762:             sll         s3, sp, tp
                  sltiu       s4, a6, 1113
                  add         gp, t4, s0
                  sll         t3, s8, sp
                  ori         s11, t2, -797
                  slli        s4, t3, 18
                  slli        tp, s10, 20
                  srai        s0, t4, 30
                  xor         s4, s2, a3
                  srl         s3, a6, s0
                  nop
                  auipc       s6, 271082
                  andi        s7, s8, 1490
                  bgeu        zero, a4, 2787f
                  auipc       s3, 845357
                  sltiu       t2, a3, -1802
                  ori         a1, t3, 406
                  andi        a3, s4, -1374
                  andi        t4, a6, 1327
                  sltiu       s3, t0, -1425
                  srl         s6, a6, t6
                  bgeu        s2, s5, 2802f
                  srai        a2, t5, 4
                  and         t3, ra, a7
                  slti        t2, t4, -2026
2787:             slt         a5, tp, zero
                  sltiu       t1, a7, 689
                  ori         sp, a5, 1495
                  srli        s7, s0, 28
                  srli        tp, a0, 16
                  ori         t1, s10, -344
                  srl         t2, zero, s4
                  xor         a2, s0, a2
                  slt         tp, a4, s2
                  slli        a3, a5, 3
                  or          t3, t4, t3
                  slli        s8, sp, 11
                  lui         s0, 1047829
                  bgeu        gp, s3, 2807f
                  blt         t6, ra, 2803f
2802:             auipc       t3, 269854
2803:             ori         s5, gp, -424
                  slti        a7, a1, -1809
                  add         gp, t2, s5
                  sltu        zero, t2, s9
2807:             bltu        a4, t0, 2822f
                  auipc       a3, 635212
                  srai        s0, s9, 0
                  srl         gp, a0, ra
                  sltu        t0, t2, s11
                  auipc       ra, 909581
                  bge         sp, s3, 2829f
                  andi        sp, a7, 650
                  slt         s8, t1, s4
                  bge         sp, a3, 2835f
                  bgeu        a4, s8, 2836f
                  bne         t1, tp, 2826f
                  lui         zero, 725208
                  srai        t4, a6, 12
                  slt         gp, a2, s5
2822:             bge         gp, s8, 2841f
                  srli        s2, t5, 11
                  ori         s9, a4, 1459
                  srli        s3, t6, 18
2826:             andi        a1, tp, 933
                  or          zero, s7, a6
                  slli        zero, ra, 30
2829:             srl         a4, s10, t1
                  bne         ra, a4, 2832f
                  sll         s0, sp, s6
2832:             bltu        t0, sp, 2847f
                  ori         t4, gp, 740
                  nop
2835:             or          t0, s1, a1
2836:             srl         zero, t5, s3
                  sltu        t0, a0, a2
                  andi        a1, t5, 1665
                  and         a4, ra, a1
                  sll         ra, s0, a2
2841:             slli        a0, s10, 18
                  auipc       a7, 37964
                  nop
                  or          t4, t1, s11
                  or          sp, ra, s6
                  xori        t0, t5, 1982
2847:             slt         zero, a3, s4
                  ori         s6, ra, 575
                  blt         a4, s7, 2856f
                  blt         s3, s11, 2859f
                  srai        a7, t1, 1
                  slti        s4, t4, 767
                  sltiu       s7, a2, 1159
                  bne         t4, a5, 2858f
                  and         s0, s10, a4
2856:             xori        gp, s0, 145
                  sltiu       s2, s8, -1905
2858:             bne         s7, a7, 2862f
2859:             xor         a2, s3, s1
                  beq         t4, a2, 2872f
                  slti        zero, s3, -495
2862:             xor         s1, s4, a7
                  andi        s3, t0, 1165
                  blt         t2, tp, 2865f
2865:             srli        tp, s7, 30
                  slti        t2, t4, 400
                  blt         s4, s11, 2874f
                  andi        tp, t0, 1053
                  add         s11, tp, s6
                  bltu        t3, s7, 2884f
                  bne         s9, s7, 2872f
2872:             beq         s1, t1, 2886f
                  add         a5, gp, a0
2874:             nop
                  slli        t3, s3, 15
                  and         zero, gp, s5
                  addi        a2, t4, 1955
                  sltiu       zero, s4, 784
                  sll         zero, a5, s3
                  ori         ra, s1, 1858
                  bgeu        s6, a2, 2884f
                  blt         a0, gp, 2897f
                  srl         t3, s10, a0
2884:             sra         a6, a0, a4
                  addi        a5, t2, 1641
2886:             sltu        a0, a6, a2
                  bne         s1, a0, 2904f
                  and         a4, s10, a3
                  lui         s9, 361642
                  xor         tp, a4, s3
                  srai        a5, sp, 29
                  auipc       t0, 864272
                  bne         t6, a2, 2912f
                  sltiu       a1, s5, 832
                  lui         t3, 389791
                  slti        s1, t1, 1911
2897:             bltu        t1, t6, 2903f
                  blt         a6, t3, 2908f
                  sra         s0, zero, sp
                  bltu        s4, s1, 2916f
                  blt         t6, s4, 2920f
                  slli        s1, t3, 26
2903:             beq         s8, a2, 2917f
2904:             and         zero, a6, t6
                  addi        a3, s10, 474
                  beq         t1, s9, 2908f
                  and         a1, s4, a0
2908:             sltiu       a3, gp, -345
                  ori         a7, a1, -344
                  srai        a4, s4, 1
                  xor         a0, s11, s2
2912:             and         s11, t4, s3
                  sra         ra, a1, s0
                  bltu        a2, t1, 2915f
2915:             andi        t2, s1, 131
2916:             srai        a2, zero, 2
2917:             beq         s6, s1, 2932f
                  slt         t0, s10, a4
                  auipc       s11, 1031647
2920:             ori         ra, s0, -1075
                  ori         t1, ra, -955
                  addi        tp, s6, -390
                  nop
                  bltu        s5, a3, 2928f
                  or          gp, s6, a3
                  sltiu       s1, t3, 1646
                  bltu        t5, a0, 2942f
2928:             slt         zero, ra, a7
                  slli        zero, s4, 29
                  bge         a2, s8, 2937f
                  xor         s9, zero, a1
2932:             xori        a7, s3, -834
                  and         ra, t3, t1
                  srl         ra, s1, a3
                  add         a3, t4, t0
                  xor         a3, t6, t6
2937:             or          a7, t5, a4
                  lui         t1, 500757
                  sltiu       a0, ra, 2000
                  slti        t3, s4, -1343
                  add         a7, gp, t1
2942:             auipc       s5, 719565
                  sra         a1, sp, t3
                  xori        a0, a6, -1823
                  bgeu        gp, tp, 2959f
                  sub         t1, tp, t1
                  blt         t0, t4, 2966f
                  slt         s8, a6, s4
                  slt         s3, s7, a6
                  srai        s4, gp, 31
                  and         gp, s3, a1
                  auipc       zero, 353135
                  bge         t5, a4, 2972f
                  addi        s7, gp, -1786
                  beq         a6, a3, 2956f
2956:             srl         s7, tp, a4
                  srli        s6, s3, 13
                  auipc       s0, 335827
2959:             auipc       t4, 436994
                  bne         t5, a1, 2976f
                  auipc       s0, 125967
                  srai        s5, gp, 5
                  andi        s5, a4, 1026
                  sltiu       zero, a7, 1156
                  or          t3, s5, s11
2966:             sll         s6, s8, s11
                  sub         ra, tp, ra
                  nop
                  auipc       t2, 264981
                  lui         zero, 67612
                  bge         a6, a5, 2975f
2972:             ori         a3, s0, 1788
                  bgeu        s2, zero, 2974f
2974:             sub         zero, a3, s9
2975:             sltu        s1, s0, t5
2976:             xor         a7, a6, s3
                  and         a5, a7, t1
                  sll         s3, a2, s11
                  sra         s11, t4, t4
                  auipc       s8, 490680
                  xori        a4, s0, -239
                  nop
                  bne         t1, a6, 2986f
                  and         zero, s6, s6
                  xor         s7, zero, s1
2986:             ori         t0, t0, 2022
                  sra         s6, s6, sp
                  slli        s7, s11, 28
                  add         zero, tp, a7
                  ori         a1, a2, 1336
                  slli        t4, t1, 0
                  slli        a1, a5, 10
                  sll         zero, s10, a5
                  addi        t2, s6, -1992
                  slli        a5, gp, 18
                  or          s8, s4, s10
                  sra         a7, zero, a4
                  bgeu        a5, a6, 3006f
                  slt         ra, a5, s10
                  addi        a3, t5, 1231
                  srli        t0, t0, 3
                  bgeu        a6, a4, 3009f
                  srl         s3, s5, ra
                  srai        a2, t1, 2
                  addi        s9, a4, 464
3006:             xor         s9, tp, a7
                  sub         sp, s7, t1
                  slti        t3, s2, -606
3009:             or          t4, s3, s0
                  add         s6, a1, a4
                  nop
                  xori        t1, a2, -1865
                  bne         s7, a6, 3032f
                  add         s9, t2, s6
                  sltiu       s1, s7, -1127
                  auipc       s8, 974350
                  srli        s9, s4, 8
                  slti        a2, zero, -1513
                  ori         gp, s11, 593
                  srli        zero, t3, 2
                  lui         s6, 674969
                  bge         a7, s11, 3038f
                  blt         t0, s2, 3040f
                  or          s9, s10, s3
                  sll         s9, a5, s9
                  srai        s8, s8, 0
                  slti        zero, t2, -1347
                  or          zero, a5, s7
                  auipc       a4, 517849
                  ori         s1, a2, 196
                  slli        t3, s9, 28
3032:             slt         s3, sp, t3
                  and         tp, s1, a3
                  lui         zero, 745074
                  bltu        a6, tp, 3037f
                  addi        s0, a4, -20
3037:             bltu        s10, zero, 3056f
3038:             nop
                  ori         s4, a2, 1189
3040:             and         t1, sp, a7
                  lui         a2, 168249
                  beq         s3, a5, 3056f
                  bgeu        s5, s0, 3045f
                  bge         t2, s0, 3045f
3045:             or          s9, s10, s7
                  xor         s4, ra, a0
                  bne         gp, zero, 3053f
                  slli        s11, s3, 10
                  sub         s3, a4, a7
                  srai        a6, t4, 3
                  sub         s4, a6, s3
                  andi        a0, s3, -865
3053:             xori        s3, t1, 1938
                  xor         s3, s11, t3
                  andi        s5, gp, 206
3056:             bge         a7, a4, 3066f
                  xori        s5, s3, 868
                  bltu        a2, s1, 3072f
                  sub         a7, s3, t2
                  blt         t3, tp, 3072f
                  bge         s6, ra, 3070f
                  add         a5, s2, s7
                  xor         zero, s3, a4
                  sltu        a4, gp, s4
                  bltu        s9, a0, 3084f
3066:             nop
                  sra         gp, a0, t3
                  bne         s2, a6, 3070f
                  sltiu       s7, sp, 1049
3070:             srai        s9, s5, 13
                  auipc       zero, 878745
3072:             andi        a6, s0, -369
                  bge         t5, t5, 3088f
                  beq         s8, a5, 3077f
                  sll         t2, s0, t5
                  bne         s4, sp, 3095f
3077:             slt         s0, s5, s0
                  srli        tp, a6, 6
                  srli        t1, s7, 28
                  or          s11, s9, t2
                  sra         sp, s7, t1
                  andi        zero, a2, 237
                  sub         s1, gp, s3
3084:             srli        s11, t3, 22
                  bgeu        s11, t3, 3102f
                  srai        a3, tp, 20
                  addi        a6, a4, 2031
3088:             addi        t4, t4, -1947
                  ori         a1, a4, -489
                  sltu        t3, zero, a7
                  or          t2, gp, s10
                  blt         s10, t1, 3107f
                  srl         a6, tp, t6
                  srli        a2, a6, 27
3095:             slt         zero, a6, t0
                  xor         tp, s7, s6
                  sub         sp, s7, s5
                  bgeu        s7, t1, 3112f
                  and         s11, s3, s11
                  or          a5, s11, a5
                  sltiu       zero, s5, 335
3102:             nop
                  srli        t3, a3, 15
                  blt         s5, s3, 3120f
                  srli        a7, s6, 9
                  add         s5, s4, ra
3107:             addi        tp, a6, -891
                  beq         t1, ra, 3114f
                  and         a1, s2, t6
                  ori         s11, t1, 746
                  xori        a4, s11, 985
3112:             ori         gp, s0, 1748
                  and         s2, a2, s7
3114:             or          zero, t4, a3
                  sltu        s2, s5, s4
                  bne         t3, t3, 3135f
                  andi        zero, a7, -1018
                  sll         tp, t1, s5
                  sltu        s7, t1, a6
3120:             add         a2, a0, a1
                  ori         s8, t2, -57
                  slli        t4, s6, 6
                  nop
                  slli        a1, t4, 9
                  auipc       a2, 345782
                  slti        a5, s9, -50
                  beq         a5, s2, 3129f
                  sra         zero, a2, t4
3129:             slti        s3, s10, -665
                  slt         t0, s11, t6
                  and         s0, s5, t5
                  auipc       a7, 597344
                  add         gp, s6, s5
                  blt         zero, sp, 3149f
3135:             xor         a4, sp, zero
                  andi        t1, s6, -743
                  slt         s6, s6, s2
                  sltu        s5, a0, a6
                  sll         tp, s3, s9
                  auipc       zero, 132787
                  nop
                  and         a0, a7, s11
                  andi        s8, s10, 1962
                  slli        s3, s7, 12
                  bgeu        s7, t1, 3147f
                  srai        t3, t4, 31
3147:             auipc       a1, 899622
                  addi        t1, s9, -1918
3149:             lui         gp, 439895
                  or          s7, t3, t2
                  bltu        s2, s6, 3170f
                  and         s3, t5, s10
                  slli        t1, s11, 24
                  xori        s2, sp, -1545
                  sll         ra, a2, a7
                  bne         a5, a5, 3164f
                  bge         t5, tp, 3176f
                  lui         s4, 430290
                  add         zero, s3, s7
                  bge         t0, s0, 3161f
3161:             xor         s5, gp, s1
                  or          sp, t2, tp
                  addi        a5, a5, -873
3164:             bgeu        s1, a6, 3165f
3165:             andi        gp, a4, -1936
                  srai        t0, s11, 24
                  and         t3, t1, t5
                  andi        a0, zero, 373
                  slt         t0, s11, s7
3170:             blt         s2, s6, 3189f
                  slti        t0, t0, 754
                  auipc       zero, 408257
                  or          zero, a5, a3
                  add         t2, s11, a6
                  ori         t4, s10, 755
3176:             sub         t1, t1, gp
                  blt         t4, s2, 3187f
                  bne         t4, a7, 3182f
                  xor         a0, sp, a2
                  bltu        a5, s2, 3189f
                  sltu        a0, sp, s10
3182:             sra         s4, ra, a7
                  bgeu        gp, t0, 3198f
                  slt         t1, a3, a6
                  auipc       ra, 478772
                  bltu        t3, s6, 3190f
3187:             auipc       t0, 556363
                  blt         zero, a5, 3204f
3189:             slti        zero, tp, 1456
3190:             bgeu        t6, t4, 3192f
                  bne         a6, s8, 3203f
3192:             auipc       s4, 454739
                  or          tp, sp, s7
                  sltu        sp, a6, a3
                  sll         t0, tp, a0
                  nop
                  xori        s3, tp, 810
3198:             lui         a1, 636803
                  sra         s3, t2, s2
                  or          gp, s3, s4
                  blt         s10, a3, 3215f
                  xori        a1, s0, 695
3203:             slti        s11, a4, -982
3204:             addi        gp, t2, -241
                  srai        t0, s0, 12
                  beq         s9, s8, 3220f
                  sra         t2, sp, a0
                  lui         a0, 75900
                  srl         a0, s2, a2
                  sra         t2, sp, a7
                  srai        zero, s5, 9
                  sltu        ra, s8, s1
                  sltiu       s11, a4, 529
                  and         zero, s1, tp
3215:             slt         a7, s4, gp
                  sra         t2, s0, s6
                  xor         tp, zero, a7
                  xori        tp, t2, -1294
                  slt         t4, a1, t0
3220:             beq         s8, a2, 3227f
                  bge         s4, s4, 3228f
                  lui         s2, 815608
                  ori         s2, t2, -735
                  bgeu        t0, t6, 3225f
3225:             or          a6, s8, t6
                  slt         t1, a7, ra
3227:             nop
3228:             srl         a3, s6, s2
                  andi        t3, zero, 1746
                  bge         s7, s5, 3232f
                  xori        t3, a3, 936
3232:             slt         a1, a3, a3
                  slt         zero, sp, s5
                  beq         s10, s2, 3251f
                  beq         s7, a2, 3250f
                  sltiu       s4, s5, 1027
                  or          t4, s11, gp
                  sll         s9, tp, t1
                  blt         s7, s3, 3258f
                  ori         ra, s0, -12
                  andi        t2, s6, 1380
                  xor         a6, s4, t0
                  sltiu       s0, t5, 465
                  sltiu       s8, a6, -1444
                  srai        ra, t4, 1
                  and         s6, s9, s5
                  bge         ra, s0, 3261f
                  beq         s5, a7, 3262f
                  xori        s4, s0, -1687
3250:             srl         sp, t2, s0
3251:             or          sp, gp, a6
                  sltu        s9, s7, t3
                  auipc       s4, 910887
                  blt         zero, s0, 3256f
                  auipc       s11, 821470
3256:             lui         s8, 1020132
                  andi        s7, a4, 1776
3258:             nop
                  sra         a4, a6, t2
                  bne         s6, s11, 3275f
3261:             auipc       tp, 580951
3262:             blt         t2, sp, 3264f
                  nop
3264:             blt         a2, a4, 3280f
                  auipc       zero, 50437
                  bne         s10, t6, 3280f
                  bgeu        a5, ra, 3271f
                  sub         t1, s1, t1
                  slt         a7, gp, s1
                  xor         s11, a4, t1
3271:             bne         sp, t2, 3281f
                  bne         t5, s0, 3291f
                  nop
                  bne         s0, t5, 3289f
3275:             bge         sp, s0, 3281f
                  blt         a6, s10, 3295f
                  blt         t1, a7, 3281f
                  and         sp, a2, a3
                  sll         a0, s6, tp
3280:             and         a7, a6, a4
3281:             xor         tp, s11, t5
                  nop
                  andi        s7, t4, 572
                  blt         ra, s11, 3291f
                  beq         s1, t2, 3286f
3286:             srai        a6, s6, 11
                  srai        s7, gp, 23
                  bne         a4, t0, 3289f
3289:             addi        a0, s11, 1702
                  and         t0, t5, s5
3291:             auipc       zero, 898939
                  sltu        zero, t0, s10
                  or          t3, t1, a4
                  sltu        t0, s6, a3
3295:             add         zero, a1, s4
                  slt         zero, t5, s2
                  xori        s7, ra, 1554
                  srl         tp, t5, t0
                  sltu        s4, s7, a0
                  sltu        a4, s1, a2
                  srl         a1, s11, ra
                  sra         s6, s11, t1
                  slt         sp, a1, a0
                  xori        a2, s5, -194
                  nop
                  or          zero, a5, s7
                  add         zero, t5, sp
                  sll         a1, s3, t4
                  sltu        s8, s3, a0
                  blt         s8, s2, 3329f
                  srli        s11, gp, 25
                  slt         t4, a3, a6
                  sra         s3, a6, s11
                  sub         s11, s3, s10
                  slli        a2, t0, 29
                  addi        zero, a6, -713
                  andi        ra, t6, 89
                  ori         sp, zero, 352
                  andi        zero, s4, -1723
                  sltu        s7, t4, ra
                  srli        s7, s5, 3
                  slti        s3, t1, 2026
                  sltu        zero, s1, s2
                  sub         s11, gp, t5
                  xor         s6, a4, s10
                  sub         s3, t3, s5
                  srl         s0, s6, s10
                  ori         s11, s2, 428
3329:             nop
                  sltiu       s6, t3, 582
                  add         zero, a6, s2
                  xor         ra, s8, a6
                  slli        s11, a6, 9
                  xor         s1, s10, s5
                  addi        zero, t0, 701
                  or          a0, s8, a6
                  beq         a3, a7, 3340f
                  add         zero, s10, t1
                  andi        s3, a7, -1719
3340:             or          a7, a6, t4
                  sub         t4, s10, s9
                  bge         t5, s0, 3351f
                  auipc       gp, 646710
                  srl         s7, s7, gp
                  sub         s6, a4, t6
                  bltu        t1, sp, 3354f
                  srai        a2, a5, 11
                  srl         zero, s8, s1
                  beq         t0, t2, 3361f
                  and         s3, zero, ra
3351:             slt         ra, t4, tp
                  srl         a1, a6, a5
                  slt         s5, a6, s0
3354:             ori         t2, a3, -1781
                  slli        a1, a4, 28
                  auipc       sp, 12234
                  srai        zero, a2, 31
                  slli        s11, s7, 3
                  sltu        s9, t5, s3
                  lui         s2, 523411
3361:             lui         gp, 866071
                  sll         s4, s1, s2
                  sltu        a2, t1, s11
                  bgeu        zero, s0, 3371f
                  addi        zero, a1, -1843
                  beq         gp, s4, 3385f
                  add         s6, ra, t5
                  sub         s8, s4, t4
                  blt         a1, t3, 3370f
3370:             srl         s9, s3, s0
3371:             ori         a2, zero, 1286
                  sub         a0, t0, a1
                  srai        t3, t1, 28
                  addi        zero, s5, 646
                  srai        t3, t4, 6
                  or          s0, ra, a6
                  slli        a5, a1, 21
                  slt         t0, ra, a6
                  addi        zero, s1, -382
                  slli        t2, s3, 15
                  blt         a1, a6, 3397f
                  add         s5, sp, s10
                  srai        t1, t6, 30
                  andi        sp, a3, -294
3385:             andi        a0, zero, 1274
                  srai        zero, a5, 31
                  slti        zero, s0, 963
                  beq         s10, tp, 3392f
                  bge         s1, sp, 3403f
                  ori         s3, s8, -875
                  lui         zero, 655531
3392:             srl         a0, s9, a7
                  sltu        a5, a5, s5
                  bgeu        sp, s9, 3410f
                  sll         zero, s11, t5
                  lui         zero, 572985
3397:             or          s11, a2, t0
                  sra         t3, s5, s0
                  bltu        a6, s6, 3401f
                  add         tp, a0, t2
3401:             and         a6, s9, a1
                  andi        zero, s6, 1117
3403:             and         t4, sp, sp
                  addi        s3, a6, 1158
                  blt         a4, a6, 3424f
                  bgeu        t2, a6, 3425f
                  bge         a0, a2, 3409f
                  auipc       a7, 804611
3409:             sll         zero, s11, tp
3410:             andi        t3, gp, 1296
                  srli        tp, a7, 27
                  auipc       s7, 199449
                  sub         a1, a7, a0
                  slt         a3, s9, a6
                  and         s7, s10, s3
                  sltu        a4, s0, ra
                  bgeu        s0, t0, 3431f
                  bne         t1, a0, 3426f
                  bge         s6, t1, 3426f
                  add         t0, s4, s9
                  bge         a2, a3, 3438f
                  lui         s2, 779059
                  or          s11, t4, t5
3424:             andi        ra, ra, -1448
3425:             slli        t3, s1, 31
3426:             bltu        s0, t3, 3438f
                  sll         tp, s6, s8
                  sll         zero, a6, s10
                  sra         s1, t5, t0
                  slti        s0, zero, 164
3431:             sll         s8, a7, s5
                  and         s1, s9, t6
                  xori        a4, s3, 1310
                  sltiu       s11, s0, 229
                  beq         s2, s8, 3454f
                  xori        t1, a4, 109
                  xori        zero, s10, -223
3438:             beq         s7, s6, 3439f
3439:             xori        a3, s10, 467
                  sll         t1, a0, s2
                  bge         a4, tp, 3447f
                  andi        s11, t1, 967
                  add         tp, tp, s1
                  nop
                  sra         t0, t6, t4
                  bne         a2, s6, 3453f
3447:             slt         gp, s6, s8
                  blt         a7, a4, 3452f
                  sltiu       s3, a5, 856
                  bltu        s9, s9, 3451f
3451:             lui         tp, 684740
3452:             bltu        t2, a7, 3456f
3453:             sll         a7, t2, a0
3454:             srli        zero, t1, 7
                  bgeu        s4, s3, 3456f
3456:             nop
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
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.section .region_1,"aw",@progbits;
region_1:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
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
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_2:
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_3:
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_4:
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_5:
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_6:
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_7:
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_8:
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_9:
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_10:
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_11:
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_12:
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_13:
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_14:
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_15:
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x7, 0xb # ECALL_MMODE
                  beq x27, x7, ecall_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
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
                  la x31, write_tohost
                  jalr x0, x31, 0

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  lw x1, 4(x26)
                  lw x2, 8(x26)
                  lw x3, 12(x26)
                  lw x4, 16(x26)
                  lw x5, 20(x26)
                  lw x6, 24(x26)
                  lw x7, 28(x26)
                  lw x8, 32(x26)
                  lw x9, 36(x26)
                  lw x10, 40(x26)
                  lw x11, 44(x26)
                  lw x12, 48(x26)
                  lw x13, 52(x26)
                  lw x14, 56(x26)
                  lw x15, 60(x26)
                  lw x16, 64(x26)
                  lw x17, 68(x26)
                  lw x18, 72(x26)
                  lw x19, 76(x26)
                  lw x20, 80(x26)
                  lw x21, 84(x26)
                  lw x22, 88(x26)
                  lw x23, 92(x26)
                  lw x24, 96(x26)
                  lw x25, 100(x26)
                  lw x26, 104(x26)
                  lw x27, 108(x26)
                  lw x28, 112(x26)
                  lw x29, 116(x26)
                  lw x30, 120(x26)
                  lw x31, 124(x26)
                  addi x26, x26, 124
                  add x30, x26, zero
                  csrrw x26, 0x340, x26
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  lw x1, 4(x26)
                  lw x2, 8(x26)
                  lw x3, 12(x26)
                  lw x4, 16(x26)
                  lw x5, 20(x26)
                  lw x6, 24(x26)
                  lw x7, 28(x26)
                  lw x8, 32(x26)
                  lw x9, 36(x26)
                  lw x10, 40(x26)
                  lw x11, 44(x26)
                  lw x12, 48(x26)
                  lw x13, 52(x26)
                  lw x14, 56(x26)
                  lw x15, 60(x26)
                  lw x16, 64(x26)
                  lw x17, 68(x26)
                  lw x18, 72(x26)
                  lw x19, 76(x26)
                  lw x20, 80(x26)
                  lw x21, 84(x26)
                  lw x22, 88(x26)
                  lw x23, 92(x26)
                  lw x24, 96(x26)
                  lw x25, 100(x26)
                  lw x26, 104(x26)
                  lw x27, 108(x26)
                  lw x28, 112(x26)
                  lw x29, 116(x26)
                  lw x30, 120(x26)
                  lw x31, 124(x26)
                  addi x26, x26, 124
                  add x30, x26, zero
                  csrrw x26, 0x340, x26
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .s_region_0,"aw",@progbits;
s_region_0:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.section .s_region_1,"aw",@progbits;
s_region_1:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 4999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
