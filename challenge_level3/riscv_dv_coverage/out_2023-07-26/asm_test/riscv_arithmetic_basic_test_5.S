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
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 0
                  csrw 0x305, x8 # MTVEC

mepc_setup:       
                  la x8, init
                  csrw 0x341, x8

init_machine_mode:
                  li x8, 0x1c00
                  csrw 0x300, x8 # MSTATUS
                  li x8, 0x0
                  csrw 0x304, x8 # MIE
                  mret
init:             
                  li x0, 0xf0be3c1a
                  li x1, 0x0
                  li x2, 0x4c1c7353
                  li x3, 0x0
                  li x4, 0xfa52033b
                  li x5, 0x3bc4be8d
                  li x6, 0xffc8dabe
                  li x7, 0x5
                  li x8, 0x0
                  li x9, 0xf
                  li x10, 0xcd3dbf54
                  li x11, 0xff73e346
                  li x12, 0x0
                  li x13, 0xfa7cb142
                  li x14, 0x734b5220
                  li x15, 0x0
                  li x16, 0x365b473
                  li x17, 0x3848c513
                  li x18, 0x5
                  li x19, 0x80000000
                  li x20, 0xa
                  li x21, 0x80000000
                  li x22, 0xf1a8662d
                  li x23, 0x4
                  li x24, 0x0
                  li x25, 0xf677cb19
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0xfce4029b
                  li x31, 0x80000000
                  la x26, user_stack_end
main:             li         t4, 0xbdcbd83 #start riscv_int_numeric_corner_stream_4
                  li         t3, 0x0
                  li         ra, 0x0
                  li         s11, 0x0
                  li         gp, 0x1
                  li         sp, 0x0
                  li         s9, 0x0
                  li         a1, 0x1
                  li         s0, 0x1
                  li         s8, 0x1a653d68
                  addi        s4, s8, 842
                  add         s2, a1, t2
                  nop
                  add         t3, t3, t1
                  lui         s0, 16260
                  sub         zero, s6, s6
                  add         s5, t2, s6
                  lui         s8, 523712
                  lui         a1, 1026399
                  lui         s11, 960367
                  lui         t4, 267929
                  nop
                  add         zero, gp, s9
                  sub         s5, s6, s7
                  lui         a7, 244699
                  lui         s8, 619139
                  lui         t2, 751656
                  nop
                  nop
                  add         t0, s2, s10
                  nop
                  sub         a6, s10, a1
                  add         t4, a3, s11
                  lui         gp, 712109
                  sub         s4, t4, a1
                  addi        s7, a3, -1433
                  lui         t1, 940664 #end riscv_int_numeric_corner_stream_4
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_7
                  li         t3, 0x0
                  li         s9, 0x5ec2c07c
                  li         s7, 0x0
                  li         s6, 0x1
                  li         a4, 0xd39c87e
                  li         a2, 0x704a5cd5
                  li         s0, 0x0
                  li         s8, 0x0
                  li         s11, 0x0
                  add         t3, tp, tp
                  sub         zero, t5, t6
                  lui         s7, 20635
                  addi        ra, gp, 1731
                  addi        s5, s10, 301
                  nop
                  sub         s1, t2, s8
                  addi        a1, a7, 210
                  lui         s7, 98730
                  nop
                  lui         a0, 504386
                  lui         s4, 561596
                  add         a0, s5, s4
                  sub         zero, a3, t0
                  sub         ra, sp, s3
                  nop
                  sub         a2, s9, s0
                  nop
                  lui         gp, 525067
                  addi        s1, a2, -1604
                  addi        a0, s5, -1416
                  nop
                  add         t3, a7, a2
                  lui         a3, 320769
                  add         t3, s11, sp
                  lui         s4, 990378
                  nop
                  nop
                  lui         t4, 980263 #end riscv_int_numeric_corner_stream_7
                  li         a2, 0x0 #start riscv_int_numeric_corner_stream_10
                  li         a6, 0x0
                  li         t3, 0x4099ddaa
                  li         s11, 0x0
                  li         t4, 0x462daa03
                  li         s9, 0x1
                  li         a1, 0x1
                  li         s1, 0x145b518e
                  li         s3, 0x1
                  li         gp, 0x0
                  lui         a2, 766022
                  sub         s2, t2, s9
                  add         tp, s6, a3
                  lui         a2, 913540
                  sub         a4, s1, ra
                  nop
                  nop
                  addi        t4, s2, -422
                  add         s7, s2, s10
                  nop
                  add         t2, s2, s11
                  nop
                  add         zero, t1, s8
                  nop
                  addi        sp, a7, 449
                  addi        s0, t4, 1485
                  lui         gp, 587976
                  lui         s2, 6420
                  add         a2, a0, zero
                  nop #end riscv_int_numeric_corner_stream_10
                  li         t3, 0x1 #start riscv_int_numeric_corner_stream_8
                  li         t4, 0x64e4338
                  li         tp, 0x0
                  li         a4, 0x20aa774f
                  li         s11, 0x0
                  li         s9, 0x0
                  li         s1, 0x0
                  li         s8, 0x0
                  li         a3, 0xf051178
                  li         s3, 0x0
                  nop
                  lui         a3, 96079
                  nop
                  addi        sp, t3, -1266
                  addi        s3, a2, 151
                  lui         t3, 435877
                  nop
                  add         t0, a2, a5
                  lui         gp, 526772
                  lui         t4, 121291
                  addi        s2, s9, 1172
                  nop
                  sub         t3, zero, t3
                  addi        a5, s1, -1908
                  sub         s2, t0, s7
                  addi        s11, s3, -1578
                  add         t2, a3, s8
                  add         zero, sp, a7
                  lui         gp, 228478
                  sub         a5, a4, s10
                  addi        sp, a3, 1906
                  addi        s5, t4, -1341
                  lui         s11, 17571 #end riscv_int_numeric_corner_stream_8
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_6
                  li         s8, 0x0
                  li         t3, 0x0
                  li         s11, 0x0
                  li         gp, 0x1
                  li         s6, 0x56a5b2ec
                  li         s9, 0x6fd75d09
                  li         t0, 0x1
                  li         s1, 0x1
                  li         a1, 0x0
                  nop
                  sub         t4, a6, t6
                  lui         t4, 756406
                  sub         a1, s1, t5
                  nop
                  lui         s5, 537770
                  sub         zero, s0, t5
                  lui         zero, 1000678
                  nop
                  sub         a1, ra, t6
                  addi        s6, t1, -720
                  add         zero, s6, s11
                  addi        s2, s4, -1433
                  addi        s6, ra, 1101
                  sub         t4, a7, a0
                  lui         tp, 252528
                  addi        s0, a1, 1798
                  addi        sp, gp, -1712
                  sub         tp, t3, t2
                  lui         zero, 96117
                  sub         s11, gp, s8
                  lui         a3, 415863
                  add         zero, a5, s0
                  add         t4, s9, a3
                  nop
                  nop
                  nop #end riscv_int_numeric_corner_stream_6
                  slti        zero, a7, -1069
                  addi        zero, ra, 425
                  blt         a4, a1, 17f
                  addi        a1, t6, 1382
                  slli        zero, a4, 19
                  srai        s8, a6, 26
                  srl         a4, t2, a5
                  sll         gp, a2, s6
                  xori        zero, ra, 796
                  nop
                  and         a7, s5, t1
                  slt         s7, s7, ra
                  bgeu        s3, a1, 19f
                  srai        a4, a5, 8
                  beq         sp, a4, 22f
                  sltu        a4, s6, gp
                  slt         s5, a5, a0
17:               sub         s0, a7, t2
                  add         tp, s6, s6
19:               slli        s5, t4, 9
                  auipc       s5, 974117
                  slti        t2, ra, -780
22:               bltu        a7, tp, 28f
                  bne         t2, a7, 43f
                  bltu        s1, a2, 38f
                  add         a0, a4, zero
                  sub         a4, s1, tp
                  addi        a7, s9, -1595
28:               bge         s9, s4, 33f
                  slti        s7, a2, -434
                  sra         s5, sp, t3
                  nop
                  bne         t0, a0, 52f
33:               bltu        s1, s2, 38f
                  xori        s3, s0, -192
                  blt         zero, s5, 51f
                  bge         tp, a4, 46f
                  xori        t1, a6, -1173
38:               sltiu       t1, t4, -1494
                  sra         a7, a3, gp
                  sub         a2, a5, t1
                  srai        a2, a7, 11
                  bgeu        ra, s5, 43f
43:               bge         s7, t1, 53f
                  auipc       s3, 175785
                  sltu        a2, a3, s3
46:               beq         t0, s1, 59f
                  srl         a6, a7, s10
                  sltiu       t4, t0, -1760
                  or          a4, s2, s8
                  or          zero, t6, s10
51:               sub         a1, t2, t5
52:               bltu        t0, a4, 57f
53:               slt         s7, s1, tp
                  and         s7, s0, t1
                  sltu        tp, t5, s1
                  lui         s11, 360776
57:               nop
                  sll         s11, s11, ra
59:               sra         gp, s2, s7
                  bne         s3, t0, 74f
                  andi        s3, t3, 1641
                  slli        s0, a4, 27
                  srai        s6, t2, 3
                  srai        a5, a3, 9
                  srl         t3, sp, t4
                  srl         s3, a1, s3
                  srli        s9, sp, 20
                  slli        a0, s1, 5
                  sub         t2, zero, t0
                  xor         gp, zero, a4
                  lui         a0, 543106
                  sra         s0, a3, a7
                  nop
74:               srli        a2, t0, 8
                  xori        s7, tp, -536
                  bge         zero, s8, 83f
                  addi        s1, a4, 979
                  slt         t0, t5, s0
                  addi        a6, t3, -760
                  add         s7, s8, t1
                  sltiu       gp, s7, 1721
                  slt         s7, s6, s6
83:               slti        a4, s11, 240
                  slli        zero, s9, 5
                  lui         sp, 775716
                  add         a6, s3, ra
                  srai        s5, s11, 27
                  sll         a6, a5, gp
                  sub         zero, a6, a2
                  add         zero, t1, a1
                  slli        a0, s2, 26
                  slti        s0, t5, -686
                  bge         s11, s9, 108f
                  add         s3, t5, s8
                  sub         t4, s2, t4
                  srli        s5, a1, 26
                  beq         a7, t3, 107f
                  slt         a4, ra, a0
                  bltu        s11, s1, 114f
                  srl         a4, gp, s1
                  bne         a1, t0, 115f
                  bge         zero, t0, 117f
                  bge         a5, t4, 119f
                  add         a5, t6, t0
                  xori        t4, ra, 1615
                  nop
107:              srl         a0, ra, s9
108:              bltu        a0, zero, 121f
                  beq         a6, a3, 111f
                  bgeu        gp, a1, 125f
111:              add         s0, zero, t2
                  srai        s11, a5, 25
                  lui         gp, 230453
114:              srl         zero, s9, t6
115:              nop
                  xori        a6, t6, -1221
117:              xor         s5, s2, a6
                  srai        a4, s6, 23
119:              blt         t3, s7, 128f
                  or          t3, a0, ra
121:              beq         s11, t5, 123f
                  blt         s7, s3, 141f
123:              bne         a3, gp, 140f
                  blt         s4, a4, 139f
125:              sltiu       s4, s3, -620
                  sltu        s3, a6, a1
                  sub         zero, t4, t0
128:              sll         a6, t0, zero
                  beq         a2, sp, 144f
                  addi        s8, a7, -560
                  sltu        a1, s11, s7
                  bltu        s8, a0, 134f
                  slli        zero, sp, 11
134:              bgeu        s7, a0, 142f
                  xor         s6, s4, s10
                  addi        zero, a0, 299
                  sra         t0, a1, s1
                  srl         s6, a2, s0
139:              srli        a0, s9, 31
140:              and         t1, s2, t3
141:              andi        s11, s8, -1616
142:              auipc       s2, 1023376
                  or          zero, t0, s11
144:              bge         t5, s10, 160f
                  add         zero, s9, s3
                  addi        a5, s10, 1019
                  slti        zero, gp, -1257
                  srli        zero, s11, 29
                  sub         zero, tp, a0
                  srli        a5, t1, 31
                  and         s9, t3, a5
                  and         s6, t2, sp
                  slli        a1, s9, 16
                  beq         tp, a1, 161f
                  or          s7, t1, t6
                  nop
                  xori        gp, t6, 449
                  srai        sp, s5, 4
                  sra         s7, s4, ra
160:              bne         t1, a1, 167f
161:              beq         t1, t3, 162f
162:              sub         a1, tp, t6
                  sll         s8, s9, a4
                  sra         a4, ra, t4
                  sra         a4, a1, sp
                  srai        gp, ra, 21
167:              lui         a0, 620409
                  sra         zero, t3, s7
                  ori         a3, a0, 1656
                  blt         s9, a7, 172f
                  sltu        a6, s9, zero
172:              bge         t0, s6, 177f
                  auipc       t3, 478328
                  slli        zero, tp, 18
                  andi        a0, a4, -1095
                  bltu        a6, s0, 181f
177:              srli        t1, a5, 26
                  slt         sp, t2, t4
                  andi        a4, a0, -1907
                  andi        t0, sp, 2027
181:              and         zero, ra, a0
                  srli        s1, s9, 17
                  srai        sp, a0, 6
                  sltiu       tp, sp, -1369
                  beq         t6, gp, 199f
                  or          s7, t2, ra
                  srl         s1, s5, t5
                  blt         t5, s10, 198f
                  or          a1, s6, s5
                  nop
                  sub         s9, s8, a2
                  bgeu        t1, s11, 208f
                  slli        a0, ra, 20
                  slt         a0, t6, s8
                  bne         t0, a0, 210f
                  beq         a3, s0, 206f
                  bne         s8, t1, 210f
198:              srai        sp, gp, 19
199:              sub         zero, s8, zero
                  or          s1, s11, s11
                  nop
                  sra         t3, tp, s6
                  slli        a5, s4, 15
                  bgeu        a6, s7, 218f
                  slli        s4, tp, 25
206:              srl         a7, s7, a6
                  bgeu        s4, t3, 222f
208:              srl         a1, s6, t6
                  slt         tp, a2, t1
210:              slt         s7, sp, a0
                  andi        s2, s1, 1888
                  addi        s7, a3, -2012
                  or          sp, s11, a3
                  auipc       a4, 641405
                  beq         s11, gp, 235f
                  slli        s7, t4, 1
                  xor         zero, a7, s3
218:              andi        s7, sp, 1245
                  addi        gp, t4, 2013
                  bltu        a6, s2, 240f
                  bge         a0, zero, 238f
222:              srli        a1, t2, 23
                  sub         s11, zero, t1
                  blt         a1, a3, 234f
                  or          t0, a4, s4
                  slt         s4, t5, t4
                  nop
                  lui         s5, 883744
                  add         ra, s4, s9
                  sltu        s11, s5, s11
                  addi        s6, s3, -406
                  srai        zero, tp, 25
                  srli        s9, tp, 31
234:              sra         s2, t3, tp
235:              addi        s7, s11, -355
                  sra         tp, a0, s7
                  bne         t6, a6, 243f
238:              sll         sp, ra, s1
                  bgeu        t2, a4, 258f
240:              bne         gp, s0, 254f
                  beq         t1, t3, 254f
                  bge         a0, s11, 247f
243:              add         s11, a3, a1
                  srli        a3, a1, 17
                  andi        s5, s1, 597
                  srai        zero, s5, 14
247:              lui         s11, 755386
                  nop
                  srli        ra, tp, 28
                  sll         sp, s5, s5
                  sltu        t4, t1, s2
                  bne         a1, tp, 267f
                  bne         zero, a2, 262f
254:              and         a2, s9, a6
                  sub         s6, s4, zero
                  or          a5, s8, t6
                  nop
258:              srl         a4, s6, s8
                  sltiu       a1, s11, 1229
                  sub         t1, s1, t0
                  slli        a2, s10, 13
262:              and         s1, a7, a5
                  sll         a1, sp, t6
                  slt         a5, a5, s3
                  lui         zero, 695245
                  bltu        a5, a7, 280f
267:              and         s1, a0, t6
                  sra         zero, a2, s3
                  andi        s5, a5, -1710
                  nop
                  bne         s7, a1, 290f
                  beq         a3, s6, 285f
                  sltu        a0, t1, t6
                  auipc       t1, 588014
                  bge         s11, a6, 282f
                  lui         a5, 652073
                  sltu        a0, s3, a1
                  lui         s3, 940541
                  xori        a1, s9, -1450
280:              sra         s9, t4, s10
                  addi        a6, s10, 1140
282:              ori         t4, t5, 631
                  xor         a3, s0, a5
                  andi        a1, tp, 503
285:              bltu        a5, a1, 300f
                  slli        zero, sp, 6
                  add         s4, s1, s3
                  add         a1, s9, s11
                  sra         s2, t1, zero
290:              sra         zero, ra, s3
                  and         t3, gp, t4
                  xor         s4, s7, s9
                  slti        tp, t2, -1421
                  beq         a5, s3, 304f
                  slli        s8, a2, 5
                  slt         a1, s3, s7
                  srl         ra, a5, a0
                  beq         t2, s3, 313f
                  sub         a4, s6, a5
300:              andi        gp, s0, 735
                  sra         t3, t3, s3
                  bltu        zero, t6, 312f
                  sub         sp, a2, s10
304:              slt         a1, s9, gp
                  beq         s3, s1, 313f
                  slti        zero, s8, -338
                  addi        a4, a2, 478
                  srai        s2, a5, 10
                  or          t1, t5, s0
                  sra         s5, t4, gp
                  bgeu        ra, t1, 325f
312:              xor         s11, t2, s3
313:              srai        a4, s0, 9
                  andi        ra, s11, 1851
                  bgeu        s10, s9, 325f
                  add         s11, a0, s6
                  srl         s9, gp, a0
                  slt         s11, s1, s10
                  slli        s4, sp, 12
                  sra         zero, gp, t6
                  srl         s7, t6, s1
                  bgeu        t5, gp, 338f
                  slt         s8, t3, s6
                  bge         t3, s9, 329f
325:              sra         a6, s5, s3
                  andi        a0, ra, -1687
                  sll         zero, s3, a5
                  xori        s9, a7, -1484
329:              slt         a2, t6, t4
                  auipc       sp, 71005
                  srl         zero, gp, t3
                  xor         t3, t5, s11
                  slti        s5, a0, -1477
                  blt         s9, t0, 336f
                  srai        t2, a7, 23
336:              sll         s11, a2, ra
                  and         a3, t1, t6
338:              srl         s7, s6, a7
                  add         gp, s3, s8
                  and         t3, s8, tp
                  bge         t3, t5, 358f
                  lui         tp, 222035
                  and         s5, s5, t6
                  beq         s11, t6, 357f
                  sub         s2, a1, tp
                  bltu        a2, s7, 347f
347:              sltu        a6, s1, gp
                  srli        a0, s0, 12
                  bge         t0, gp, 358f
                  sltiu       a3, s1, -1854
                  sra         s11, sp, s4
                  sltiu       zero, a2, 1858
                  bne         a2, t1, 358f
                  bne         t4, sp, 369f
                  bgeu        s3, a4, 360f
                  bne         t1, t0, 370f
357:              or          s2, s3, a2
358:              blt         t0, tp, 378f
                  sltu        s7, s0, a1
360:              bltu        s11, a5, 376f
                  lui         zero, 978238
                  sra         t2, s1, s2
                  addi        zero, a0, 1032
                  ori         zero, s7, -447
                  sltiu       a6, gp, -1550
                  sltiu       a3, a6, -278
                  sltu        zero, s3, a0
                  bne         a5, a1, 388f
369:              sltu        zero, s1, s3
370:              sll         a3, zero, t1
                  addi        s11, a3, -129
                  srai        s0, a6, 2
                  lui         s4, 941324
                  nop
                  auipc       a5, 30612
376:              beq         t1, a4, 383f
                  sra         s6, t1, s9
378:              slti        s6, a1, -557
                  xor         zero, s3, s9
                  sltiu       a6, t4, 766
                  bgeu        s11, t1, 396f
                  nop
383:              add         zero, s2, t2
                  srli        sp, a2, 17
                  addi        s7, tp, -1405
                  srai        s6, t3, 6
                  addi        s1, t2, -1532
388:              sltu        a2, s10, t2
                  auipc       a6, 15265
                  slt         zero, a0, s9
                  slli        s8, s2, 0
                  and         s11, t4, s5
                  sra         s1, s10, t2
                  sra         s1, a5, s7
                  blt         a5, t3, 410f
396:              bne         s7, t5, 402f
                  bge         t5, tp, 399f
                  sltiu       s9, t0, -936
399:              xori        s0, s1, -1665
                  bne         tp, s9, 415f
                  sub         a7, t4, t1
402:              slti        a0, t3, 1887
                  add         a7, ra, t4
                  xori        a1, a0, -868
                  add         ra, s2, zero
                  and         s7, sp, s8
                  or          zero, t0, t6
                  slti        t3, s5, 600
                  bne         s4, t6, 423f
410:              lui         s2, 912897
                  beq         s6, a4, 426f
                  beq         s10, zero, 422f
                  srli        t2, t6, 15
                  addi        a3, t5, -1303
415:              slti        a0, t3, 1870
                  slli        t3, s10, 4
                  srli        s5, s2, 26
                  xori        t2, s5, 511
                  srli        gp, s2, 3
                  beq         a0, t5, 436f
                  blt         s8, s6, 438f
422:              sltiu       a2, a5, 1997
423:              nop
                  sub         zero, a1, a7
                  or          a3, a3, s11
426:              ori         a3, s4, 1035
                  sltiu       t2, s9, 714
                  and         t2, s5, a6
                  bge         s4, a0, 442f
                  sll         s7, s6, a1
                  bne         s0, s2, 451f
                  slt         a7, a3, a5
                  sll         s7, a1, a2
                  slti        s6, s11, 809
                  bge         s0, ra, 437f
436:              srli        a3, a0, 6
437:              bne         s11, gp, 445f
438:              bltu        a0, tp, 453f
                  auipc       s2, 741006
                  blt         s8, t4, 441f
441:              sll         a2, s3, s3
442:              beq         t5, s9, 462f
                  blt         t6, s6, 452f
                  bne         a2, a7, 459f
445:              xor         a1, s7, a4
                  blt         s8, a5, 452f
                  slt         zero, a2, t4
                  nop
                  beq         zero, sp, 468f
                  bne         a4, s1, 463f
451:              srl         s9, ra, gp
452:              slli        sp, a6, 22
453:              srl         s9, a5, t0
                  ori         a2, a3, 1751
                  srl         a2, s0, s7
                  srli        s8, s9, 14
                  sub         ra, s2, s1
                  bltu        t0, t1, 463f
459:              bgeu        s1, t5, 475f
                  beq         s10, a4, 470f
                  auipc       gp, 662627
462:              srai        a4, s6, 1
463:              srai        zero, zero, 22
                  lui         a7, 7258
                  srai        s9, s8, 22
                  slti        t4, s2, 197
                  sltiu       a7, s9, -895
468:              xori        zero, s4, 1534
                  xori        t1, s6, -1038
470:              bltu        tp, s3, 484f
                  xori        t2, t3, 702
                  srai        s0, a7, 10
                  lui         zero, 854436
                  slti        ra, ra, -1514
475:              slti        tp, t0, -1474
                  sltu        a4, s7, t0
                  bgeu        s10, ra, 482f
                  sltu        s9, t2, s11
                  sll         a2, s11, zero
                  srli        ra, tp, 20
                  sra         s6, t4, s3
482:              bne         a2, a0, 484f
                  sub         s5, s0, s7
484:              xor         s9, s2, s5
                  xor         gp, a2, s4
                  sltu        zero, s4, s5
                  slti        s4, s5, -1467
                  xori        a5, s4, 1181
                  sltiu       a0, zero, -1509
                  sltiu       zero, ra, 1656
                  beq         t4, a4, 498f
                  xori        a0, s8, 165
                  andi        gp, t4, 2
                  beq         t6, a4, 499f
                  and         zero, zero, s10
                  and         s11, a4, tp
                  lui         s8, 8055
498:              sub         s5, a2, a7
499:              andi        t0, ra, -1094
                  or          t1, sp, s8
                  auipc       tp, 281
                  slt         t1, t5, s4
                  srai        s0, s9, 26
                  srli        ra, s3, 10
                  xor         a7, t4, s4
                  sltu        t2, t0, t1
                  srai        a5, a7, 13
                  sll         a3, s1, a5
                  nop
                  bgeu        s5, a7, 520f
                  srl         s5, t1, s5
                  bge         a6, s5, 527f
                  bgeu        s1, a4, 527f
                  srl         s6, s11, a7
                  srl         t1, t0, a6
                  auipc       gp, 740582
                  bgeu        a4, t5, 524f
                  xor         sp, a2, a7
                  lui         t3, 321295
520:              srl         s1, t0, a3
                  nop
                  sll         t0, t4, s7
                  sltiu       a4, a2, -257
524:              bltu        t5, s0, 539f
                  sra         sp, t4, a2
                  sub         s6, t0, s7
527:              nop
                  slli        s11, s10, 25
                  sltiu       sp, a3, 506
                  add         tp, a3, t0
                  beq         a6, s9, 536f
                  ori         t0, s11, 897
                  addi        gp, s4, 342
                  blt         s11, t2, 539f
                  bltu        s11, t1, 548f
536:              addi        s7, a1, -664
                  addi        ra, s10, -1370
                  slli        s0, a2, 8
539:              xor         t0, a0, a0
                  xor         s7, a1, s6
                  and         s1, a5, s6
                  sub         t4, t3, a5
                  ori         s7, zero, 1909
                  auipc       a7, 825264
                  auipc       s0, 205723
                  blt         zero, s0, 566f
                  sltiu       t3, t4, -1822
548:              xor         a2, s1, a0
                  sltu        s2, s0, gp
                  and         s3, zero, s6
                  beq         t2, t5, 570f
                  sll         a2, s10, t4
                  bltu        t3, s6, 555f
                  sra         s5, a0, t6
555:              srl         s4, zero, a3
                  sub         t1, tp, a1
                  xor         a6, a0, s5
                  bltu        a1, t4, 568f
                  sll         s6, t1, s7
                  andi        s9, s6, 343
                  srli        t4, sp, 21
                  addi        a3, zero, 56
                  sra         s5, s11, a5
                  or          s6, s0, s6
                  sll         tp, a2, a2
566:              addi        zero, a0, -1596
                  addi        a3, s6, 1085
568:              sltu        a2, s9, s3
                  blt         s1, ra, 583f
570:              sltiu       a1, t4, 1925
                  lui         s6, 112216
                  slli        s11, s9, 12
                  sltiu       s0, t4, -2012
                  slli        zero, a4, 21
                  add         zero, s4, a1
                  bge         t5, gp, 586f
                  srli        a7, zero, 3
                  sra         a0, s6, gp
                  beq         a4, s7, 593f
                  or          t1, s2, a2
                  auipc       a0, 1010536
                  addi        s5, s2, -828
583:              srai        zero, tp, 30
                  auipc       t3, 222488
                  slli        t4, a0, 11
586:              sra         s1, a4, s3
                  sltu        s5, ra, zero
                  blt         a1, gp, 590f
                  or          s7, t4, a4
590:              ori         a4, tp, -232
                  sltiu       a5, s3, -457
                  lui         gp, 935340
593:              bge         zero, a2, 613f
                  bne         t6, s7, 609f
                  srai        zero, s10, 15
                  srl         a4, s4, zero
                  bge         t6, sp, 613f
                  srai        a0, s0, 3
                  slti        a7, s0, 789
                  ori         ra, s8, 1855
                  bne         t1, s6, 616f
                  or          s5, a0, s10
                  xor         t2, a3, s0
                  slt         t1, s11, s6
                  sll         zero, s4, a7
                  xori        zero, t6, 90
                  nop
                  and         a7, t5, a1
609:              srl         t2, t6, s6
                  slti        a7, s6, -345
                  xori        t2, s6, -1515
                  sll         s0, a1, t6
613:              sltu        a6, s8, s4
                  and         t1, s0, sp
                  slt         t0, s2, ra
616:              slti        t4, s7, -448
                  bne         t3, gp, 633f
                  srai        t0, s10, 16
                  slt         t3, a1, a3
                  xor         s8, s2, s2
                  sub         s3, s10, a2
                  sltiu       ra, a1, -795
                  bgeu        a1, t4, 638f
                  beq         tp, s2, 631f
                  bge         ra, t0, 626f
626:              bltu        s5, s7, 640f
                  srl         s9, s2, s7
                  sub         a5, t6, t5
                  srl         sp, a1, s11
                  xor         ra, t5, s2
631:              blt         gp, s1, 640f
                  bltu        s0, t2, 639f
633:              slt         ra, a5, a6
                  sltiu       gp, s8, -655
                  sub         a0, s4, t1
                  sltiu       s0, t6, 1725
                  and         a6, ra, s11
638:              sltu        s0, s2, zero
639:              slli        s0, s1, 23
640:              add         t2, a2, s10
                  addi        a1, t1, 882
                  sll         a5, a1, t3
                  sltu        s2, s0, s4
                  srl         s2, t1, sp
                  xor         tp, a2, s4
                  nop
                  xori        a1, t2, 659
                  srli        a4, s3, 22
                  slt         a1, a4, gp
                  srl         sp, a4, a6
                  beq         t0, a7, 668f
                  add         t3, s3, s2
                  addi        t0, s3, -68
                  blt         s9, tp, 664f
                  xori        tp, s9, -621
                  srli        s0, s8, 8
                  srai        a5, s2, 23
                  blt         t4, a1, 663f
                  ori         t0, s4, -1178
                  slti        s5, t0, -1998
                  beq         gp, t2, 676f
                  add         t1, a0, t3
663:              bge         s6, t3, 676f
664:              auipc       s7, 419358
                  slt         a0, s8, t2
                  bgeu        a0, t1, 674f
                  bgeu        s8, sp, 673f
668:              andi        a0, a5, -1326
                  or          a2, s7, zero
                  sltu        a5, gp, s7
                  bne         a7, s0, 681f
                  sltu        a6, t5, a7
673:              blt         ra, t4, 680f
674:              nop
                  bgeu        zero, a3, 695f
676:              ori         a0, a3, -716
                  or          s5, s7, t3
                  sub         a6, s0, gp
                  sll         zero, zero, zero
680:              slt         a0, s3, s1
681:              addi        s4, s7, 1575
                  andi        a5, ra, 345
                  bgeu        t4, s3, 689f
                  and         sp, a6, s8
                  sltiu       s1, s10, -1089
                  sltiu       s8, t6, 1760
                  addi        ra, s0, 314
                  sub         s9, t4, a2
689:              bltu        t5, t3, 690f
690:              ori         zero, zero, 83
                  sub         gp, a2, s9
                  and         gp, t3, a7
                  lui         gp, 872496
                  bgeu        ra, t3, 704f
695:              or          zero, t4, a3
                  sll         zero, gp, a1
                  beq         s9, s2, 713f
                  andi        ra, s4, -1905
                  srai        a2, t4, 23
                  bge         t6, tp, 719f
                  srli        a7, s7, 23
                  nop
                  ori         a4, s6, -1316
704:              bgeu        s10, t0, 709f
                  sra         t4, s9, s8
                  bge         t1, t6, 711f
                  blt         a6, t4, 717f
                  add         a7, s11, t0
709:              ori         a5, s4, -1935
                  xor         sp, s6, t0
711:              slti        s9, a1, 147
                  add         a7, s8, t3
713:              srl         s7, a6, sp
                  or          t2, a7, s2
                  xori        tp, s2, 1593
                  or          a0, s2, s7
717:              or          a6, s5, t6
                  sra         s0, t2, t6
719:              xori        t1, s6, -1366
                  auipc       s0, 289737
                  srai        t4, a3, 24
                  bltu        a4, a0, 742f
                  andi        zero, a2, -923
                  addi        gp, a7, -690
                  xor         s8, t4, t2
                  xor         gp, ra, s1
                  addi        s7, t6, 1230
                  slt         t3, s10, t5
                  sll         gp, a5, s4
                  andi        t2, s2, -1694
                  blt         s4, a6, 745f
                  sub         a7, t6, t3
                  slt         a0, tp, a3
                  slt         s5, s7, t6
                  sll         gp, tp, t1
                  sub         zero, s3, s7
                  srli        s6, t5, 8
                  bgeu        t0, t0, 753f
                  slt         s0, s11, tp
                  blt         s9, t6, 757f
                  ori         zero, s11, -1775
742:              bltu        t0, s8, 755f
                  slti        a0, a0, -542
                  addi        a4, t2, 1403
745:              sll         a6, s0, a4
                  bgeu        a4, sp, 761f
                  bge         t6, t1, 763f
                  slli        s11, s10, 6
                  beq         s6, gp, 756f
                  bltu        a4, zero, 755f
                  xori        zero, s3, 284
                  or          a4, t0, sp
753:              slti        s11, zero, 1105
                  slti        tp, t0, -1004
755:              blt         t3, a2, 768f
756:              auipc       a5, 779089
757:              slt         s8, a5, t1
                  sltu        gp, a3, s8
                  blt         ra, s7, 773f
                  slt         a2, gp, s9
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_11
                  li         t3, 0x0
                  li         s3, 0x50b3842b
                  li         s11, 0x47e46475
                  li         a5, 0x1
                  li         a4, 0x0
                  li         a1, 0x1
                  li         gp, 0x0
                  li         t2, 0x0
                  li         s9, 0x0
                  addi        t2, t0, -1808
                  addi        s8, a5, -1359
                  sub         a1, a6, a5
                  add         t1, s6, t0
                  add         ra, s4, t3
                  lui         s2, 934704
                  sub         a6, sp, s1
                  lui         a3, 452619
                  add         t0, a7, s4
                  lui         s1, 390836
                  nop
                  sub         s7, s11, s8
                  addi        s0, s5, 212
                  nop
                  add         s0, s5, s3
                  add         s3, t1, a6
                  sub         t0, a0, a7
                  lui         s1, 933976
                  addi        s9, s9, 1499
                  add         s8, s3, s2
                  lui         s2, 829203
                  nop #end riscv_int_numeric_corner_stream_11
761:              add         s9, a3, s4
                  bge         t0, a6, 764f
763:              bltu        s5, s8, 765f
764:              bge         ra, gp, 779f
765:              sltiu       t0, a5, -268
                  bgeu        s0, s0, 780f
                  ori         sp, t6, -1504
768:              addi        s4, gp, 796
                  sltiu       a5, t2, 939
                  slli        a1, a7, 18
                  and         a6, s8, t0
                  slli        a5, a4, 19
773:              sltiu       s11, sp, 1230
                  bne         s5, s11, 783f
                  sltiu       ra, s0, -1289
                  srli        s8, t0, 23
                  slli        a2, a0, 22
                  blt         a6, a2, 793f
779:              srl         ra, s11, s7
780:              xori        zero, a2, 277
                  sub         a3, s3, t2
                  ori         s1, s1, 1137
783:              bge         a0, a2, 798f
                  ori         zero, s2, -467
                  add         s7, tp, a2
                  and         t2, sp, t5
                  lui         s5, 893421
                  auipc       zero, 411345
                  sltiu       t4, s3, -362
                  blt         gp, s11, 798f
                  bne         gp, s3, 811f
                  sra         a5, t0, s3
793:              bgeu        t5, t1, 798f
                  and         t1, gp, s5
                  and         a0, gp, s7
                  srli        zero, a4, 29
                  bne         tp, zero, 810f
798:              srli        zero, ra, 0
                  srli        t2, s2, 4
                  sub         s4, sp, t2
                  sltu        s5, s6, ra
                  srai        a3, s10, 29
                  xori        a2, a5, -1610
                  sub         zero, t3, ra
                  bltu        a7, a3, 815f
                  slt         zero, ra, a2
                  sltiu       t0, t4, -819
                  sra         a5, a4, a2
                  srli        a7, sp, 28
810:              and         tp, s1, a6
811:              slli        a7, s5, 3
                  srli        s4, sp, 14
                  blt         s5, a2, 830f
                  sltiu       a7, s1, 1359
815:              sltiu       t3, a0, -697
                  sra         s1, t5, a2
                  xor         t3, s6, t5
                  srai        t3, a6, 27
                  srai        s1, t6, 9
                  nop
                  slli        zero, s3, 12
                  sll         a0, s3, ra
                  bne         t3, s9, 839f
                  xor         s4, a2, a0
                  beq         a5, t0, 840f
                  slli        a1, sp, 5
                  slli        s2, a4, 15
                  nop
                  auipc       gp, 776980
830:              blt         s4, s2, 843f
                  bgeu        a4, t3, 836f
                  bltu        s0, tp, 833f
833:              lui         s4, 199366
                  nop
                  sltu        a6, t6, tp
836:              xor         t0, s5, s6
                  add         a6, s0, s9
                  or          a1, s7, a1
839:              slt         a0, s9, s6
840:              auipc       s2, 495769
                  sra         t1, ra, t5
                  bne         t5, s6, 857f
843:              bltu        s9, s10, 859f
                  sltiu       a5, ra, 1576
                  auipc       a7, 621482
                  andi        s0, t1, -897
                  slti        a2, t2, 1480
                  bge         s2, tp, 854f
                  or          zero, t3, s7
                  sra         a6, s3, s10
                  srli        s9, a0, 25
                  or          a0, s7, a6
                  slti        a0, s5, -1724
854:              add         s4, a4, s10
                  xor         zero, t6, s11
                  sub         s0, a2, s2
857:              sltu        s3, s2, sp
                  xor         a5, a6, tp
859:              sra         a3, s0, s5
                  add         t4, t0, s1
                  sra         a7, t5, a0
                  xori        zero, s8, 1360
                  blt         s10, t3, 865f
                  sub         s5, s4, t5
865:              auipc       t2, 837958
                  bgeu        s9, a7, 868f
                  and         a3, s4, a1
868:              sltiu       s7, s6, 9
                  beq         a3, zero, 884f
                  xor         t2, a1, t3
                  lui         zero, 601149
                  auipc       a4, 187099
                  bgeu        a6, s9, 880f
                  addi        s11, a5, 857
                  sltiu       s0, gp, 1835
                  addi        s4, t4, 1845
                  sra         a6, zero, ra
                  addi        s1, t6, 924
                  slt         s7, s7, zero
880:              sltiu       a4, s3, 202
                  srai        a7, s11, 13
                  bgeu        s8, a2, 889f
                  sll         a0, t1, s5
884:              srli        t0, a6, 26
                  slti        s6, s2, 785
                  andi        s5, a4, -465
                  sub         t2, a6, t3
                  srai        sp, gp, 1
889:              slti        a5, t6, -1199
                  sltu        ra, a1, tp
                  addi        a2, gp, -829
                  ori         zero, t0, 1196
                  or          s2, sp, s9
                  xori        gp, t0, -2008
                  bgeu        s8, s11, 900f
                  srai        ra, s8, 10
                  bne         s10, t5, 906f
                  xor         s5, t6, a0
                  sltiu       t3, s0, -2042
900:              sub         t3, zero, a6
                  sltu        s0, s4, s8
                  srli        t2, s0, 0
                  srai        sp, t2, 19
                  srai        s9, s7, 8
                  sub         a0, zero, s4
906:              srai        gp, t4, 18
                  sub         t3, gp, s6
                  or          zero, t5, t6
                  bltu        t6, a0, 919f
                  xori        a6, s2, -52
                  sll         a5, s2, s6
                  auipc       s3, 271809
                  xori        s9, t4, 620
                  slli        s8, s2, 31
                  and         gp, t5, ra
                  slti        gp, t6, 173
                  slt         s3, a1, s9
                  srli        zero, a4, 24
919:              sra         s5, t4, zero
                  beq         s7, s6, 934f
                  add         t4, sp, tp
                  bgeu        s0, s1, 932f
                  andi        s5, tp, 1539
                  ori         a7, a2, -812
                  srai        a3, tp, 24
                  sltiu       s6, a1, -811
                  blt         s5, a5, 947f
                  or          t0, t6, s2
                  xori        a0, a4, -572
                  add         t4, a3, t4
                  or          a6, t2, tp
932:              and         zero, s1, a7
                  xori        tp, a4, -566
934:              srl         s3, sp, sp
                  beq         s3, a3, 950f
                  blt         zero, ra, 950f
                  sltu        zero, s8, s2
                  bne         a7, s7, 952f
                  xori        a0, tp, -3
                  srai        s0, s4, 8
                  sra         a5, t3, s10
                  srli        a5, a4, 9
                  bge         sp, s2, 951f
                  lui         zero, 158546
                  slti        t0, t6, -405
                  bge         tp, gp, 961f
947:              sltiu       s7, s1, 1994
                  ori         a4, s4, -608
                  or          a1, s10, tp
950:              andi        t4, t6, 1953
951:              blt         s1, zero, 970f
952:              andi        s3, a1, -607
                  bne         sp, s6, 959f
                  sub         s4, s7, a1
                  beq         s5, t6, 971f
                  slt         s7, t2, s10
                  xor         zero, s0, s11
                  sltiu       a1, s8, -1897
959:              lui         tp, 30402
                  or          a6, a1, t5
961:              sll         s4, s2, t3
                  lui         s8, 860548
                  srai        a6, s4, 31
                  nop
                  blt         ra, s7, 982f
                  or          zero, a6, s2
                  or          ra, s4, s2
                  lui         a5, 1044289
                  beq         s5, s5, 984f
970:              bgeu        t1, a1, 972f
971:              xor         zero, t1, a7
972:              sra         sp, ra, s11
                  ori         s6, s11, 258
                  blt         a5, s10, 994f
                  slli        zero, s8, 19
                  nop
                  sltu        s5, s10, s9
                  beq         t5, s9, 988f
                  srl         s2, a3, s3
                  sltu        gp, s4, s0
                  bge         zero, a0, 991f
982:              slti        a5, s0, 506
                  sltu        a1, s11, s6
984:              blt         s2, s5, 997f
                  bgeu        s2, s9, 987f
                  slli        a7, s6, 30
987:              slt         t0, ra, ra
988:              xori        zero, s7, -1238
                  sra         a3, t5, a2
                  addi        s8, a7, -1029
991:              slli        a4, s3, 19
                  blt         a6, a5, 993f
993:              bgeu        a4, s6, 1000f
994:              beq         gp, s3, 1008f
                  sll         zero, gp, s11
                  beq         tp, t0, 1011f
997:              slt         s1, s11, s1
                  slti        s11, a2, -270
                  addi        s11, t6, -1198
1000:             slti        gp, t0, 1040
                  bltu        a1, a0, 1010f
                  bge         t6, t1, 1018f
                  auipc       tp, 836479
                  add         zero, s1, t3
                  sub         a0, gp, t0
                  slli        s0, t5, 12
                  sltiu       t0, a0, -740
1008:             and         a7, s1, s6
                  bltu        s10, s3, 1022f
1010:             sltu        t2, s5, a1
1011:             auipc       gp, 109586
                  auipc       zero, 30354
                  slt         zero, ra, s1
                  lui         a6, 990217
                  bgeu        a7, tp, 1020f
                  bne         ra, a1, 1023f
                  sltiu       a3, t0, -566
1018:             xori        zero, tp, -2009
                  bne         a5, s9, 1039f
1020:             lui         s11, 434866
                  xor         t0, t5, a1
1022:             xori        s5, tp, -228
1023:             beq         a2, a3, 1042f
                  bge         t1, zero, 1039f
                  srai        s11, s6, 11
                  and         s7, s4, a0
                  sra         a6, s2, ra
                  lui         zero, 800782
                  bge         s11, t5, 1034f
                  sltiu       tp, t6, 263
                  bgeu        t2, s1, 1039f
                  and         s9, s11, sp
                  sll         zero, gp, s1
1034:             and         s11, t4, s7
                  sll         zero, s11, ra
                  bge         s5, s1, 1041f
                  sra         s9, a7, tp
                  sub         s5, a4, t6
1039:             slti        s5, s4, -867
                  andi        s2, a0, -1338
1041:             andi        s7, t2, -2019
1042:             addi        sp, t1, 1850
                  beq         gp, t6, 1058f
                  sll         t1, tp, s2
                  xor         s8, a2, t6
                  slt         zero, tp, t5
                  xori        zero, a5, 714
                  bgeu        s0, s11, 1062f
                  addi        a0, a0, 1954
                  xor         zero, a1, s8
                  bgeu        a4, t4, 1061f
                  ori         s7, s5, -2018
                  slti        s3, s0, 232
                  or          a7, t6, s4
                  or          s9, tp, gp
                  or          a4, a6, a2
                  bge         t0, a3, 1072f
1058:             slti        sp, t0, -60
                  slli        a1, s10, 9
                  slti        a7, s11, 930
1061:             srli        s1, a3, 17
1062:             bne         a0, t3, 1076f
                  bltu        t2, s3, 1077f
                  lui         t4, 280487
                  add         a6, sp, s4
                  sub         a1, s4, t3
                  auipc       s11, 1019914
                  bgeu        s6, a1, 1082f
                  addi        s11, s3, -1961
                  bge         a3, tp, 1085f
                  sub         s4, s4, s9
1072:             add         zero, a1, s9
                  srli        t4, a0, 29
                  sltu        s7, a2, s10
                  sll         a5, s8, gp
1076:             sub         s9, t6, t4
1077:             srl         a3, s4, zero
                  auipc       zero, 346574
                  sltu        s8, gp, s1
                  xori        zero, s2, -908
                  blt         t0, t1, 1089f
1082:             beq         s5, t2, 1084f
                  slli        a1, t0, 30
1084:             xori        s6, s3, -611
1085:             or          a2, sp, a3
                  blt         s3, a3, 1091f
                  bge         tp, t0, 1097f
                  srai        zero, s5, 25
1089:             and         t1, zero, gp
                  srli        a4, s11, 18
1091:             xor         s8, s3, s2
                  auipc       s4, 242833
                  nop
                  xori        a1, s2, 301
                  sra         a5, s2, t0
                  ori         s4, a6, 1199
1097:             sub         a4, s0, t0
                  srli        tp, a6, 2
                  bne         t4, s9, 1114f
                  xori        s4, t0, 1331
                  addi        s9, s7, -779
                  srli        zero, a2, 13
                  sub         s2, s1, s0
                  bltu        a5, s11, 1111f
                  bge         s9, t3, 1110f
                  xori        a6, s5, 704
                  xor         s4, a2, tp
                  xor         a3, t5, s6
                  slli        s7, t0, 1
1110:             lui         a3, 858856
1111:             sra         zero, zero, a6
                  addi        s8, ra, -722
                  and         a1, t5, s1
1114:             sra         s11, gp, s7
                  bltu        a3, zero, 1130f
                  sll         a6, sp, a3
                  beq         s3, s9, 1130f
                  bge         s7, a5, 1137f
                  slt         ra, s2, s2
                  nop
                  bge         a6, s2, 1131f
                  slt         s3, s7, s6
                  sra         s2, ra, a2
                  blt         ra, a2, 1138f
                  sltu        zero, a6, tp
                  sra         a1, a5, s5
                  andi        s4, a0, -320
                  sub         s0, s0, tp
                  lui         s1, 1035370
1130:             slli        s9, s2, 21
1131:             and         t4, a5, s0
                  and         a6, a5, gp
                  slti        t3, s5, 1465
                  nop
                  bge         s1, a2, 1144f
                  bge         ra, t6, 1138f
1137:             sltu        s3, s10, t0
1138:             sltu        s5, t3, t2
                  add         a1, s8, a3
                  sll         gp, s8, a5
                  xori        a5, a3, -1028
                  srai        zero, s0, 30
                  srai        zero, a4, 18
1144:             auipc       zero, 863794
                  slti        a7, t0, 219
                  bgeu        s6, s5, 1161f
                  bne         a1, s0, 1154f
                  or          s8, t4, s3
                  and         a7, s6, a1
                  sltu        a0, a6, ra
                  blt         a6, zero, 1171f
                  and         s4, t2, gp
                  bne         a7, a5, 1169f
1154:             nop
                  xor         t3, s3, a6
                  bgeu        s7, s10, 1157f
1157:             sltu        a5, tp, s7
                  lui         s3, 64795
                  bltu        a1, t3, 1169f
                  slt         a2, s8, a3
1161:             blt         s8, s4, 1181f
                  blt         ra, s3, 1175f
                  slti        sp, s7, -454
                  sltiu       a5, t5, -2028
                  auipc       ra, 306556
                  sltu        gp, tp, sp
                  and         zero, s0, sp
                  slli        t0, a1, 16
1169:             andi        a7, zero, 152
                  slt         t0, s2, s1
1171:             or          t2, s5, t3
                  or          sp, t4, t4
                  or          ra, t3, s0
                  xori        a0, s10, 1970
1175:             slt         t1, a2, ra
                  slli        a3, s2, 4
                  sll         ra, a1, t5
                  slt         s2, tp, s9
                  add         t4, a4, t6
                  ori         s0, a0, -1463
1181:             slti        s3, zero, -913
                  auipc       s9, 512284
                  andi        t2, sp, 293
                  lui         t3, 13813
                  sll         sp, s0, s7
                  slt         s4, sp, a7
                  sub         t2, t3, s0
                  slti        zero, s6, 689
                  srl         zero, ra, t0
                  slt         s5, a2, t0
                  or          s6, gp, s9
                  xor         t0, gp, s3
                  bgeu        a2, t4, 1209f
                  srli        a4, a0, 4
                  sltiu       gp, t1, 1519
                  sra         a1, t5, a5
                  auipc       s0, 692311
                  srl         s0, t2, sp
                  nop
                  nop
                  sra         t3, s2, a7
                  auipc       s6, 165486
                  bgeu        a6, sp, 1218f
                  and         s2, tp, s11
                  and         a6, a7, tp
                  slt         s8, s11, s1
                  bltu        zero, a7, 1212f
                  bge         s8, s3, 1214f
1209:             bne         sp, s3, 1226f
                  sub         zero, s0, s2
                  beq         a1, a3, 1218f
1212:             and         a2, t6, s6
                  andi        a6, t5, 1152
1214:             srli        a4, zero, 13
                  bne         s4, s8, 1228f
                  sub         t3, s11, s3
                  srai        zero, gp, 1
1218:             srl         a2, ra, s6
                  bgeu        t3, t6, 1233f
                  bne         a1, tp, 1234f
                  auipc       tp, 1008688
                  srai        s11, s7, 12
                  sub         s11, a3, s0
                  srli        t2, a4, 27
                  add         a3, t2, a5
1226:             addi        s4, s5, 708
                  add         zero, s3, s3
1228:             blt         sp, gp, 1229f
1229:             sub         s3, t6, a2
                  bne         s9, sp, 1245f
                  xori        zero, s1, 161
                  andi        a3, s4, 26
1233:             nop
1234:             xor         t1, t1, a0
                  addi        a1, s9, 1755
                  and         s2, tp, s9
                  addi        a7, s10, 697
                  and         tp, s5, s2
                  sra         zero, a6, a2
                  xori        zero, gp, 1710
                  sltu        zero, t0, s2
                  sub         a4, s1, gp
                  slt         a0, t0, s5
                  slti        t0, s4, -1751
1245:             beq         s9, t4, 1250f
                  lui         s11, 662365
                  slli        a0, s0, 13
                  bne         a2, t1, 1267f
                  add         tp, s9, zero
1250:             blt         t6, t5, 1257f
                  srai        t0, a4, 31
                  bne         a1, gp, 1267f
                  xori        sp, s10, -1184
                  sltu        s0, a7, tp
                  sll         s9, a4, s7
                  ori         t3, s1, 1199
1257:             add         a4, s9, gp
                  slti        s1, a0, -1798
                  blt         s6, tp, 1264f
                  srai        s0, s2, 7
                  bne         s7, t3, 1263f
                  and         ra, tp, a1
1263:             blt         a5, a4, 1277f
1264:             add         tp, t2, a0
                  bgeu        a2, ra, 1282f
                  ori         s8, s11, 1305
1267:             sltiu       s1, a7, 961
                  add         a2, s2, a0
                  auipc       s1, 441335
                  srai        a1, gp, 29
                  bgeu        sp, t5, 1280f
                  slt         s1, s8, a4
                  srai        t2, sp, 11
                  bne         t1, a5, 1284f
                  nop
                  sra         zero, s7, gp
1277:             nop
                  nop
                  bge         gp, t0, 1295f
1280:             bgeu        s6, tp, 1300f
                  beq         s4, a5, 1291f
1282:             andi        s2, t6, -1195
                  sra         s2, tp, zero
1284:             srli        zero, t5, 25
                  andi        tp, s11, 546
                  bne         tp, t4, 1306f
                  bltu        a7, tp, 1302f
                  ori         t2, s0, 1188
                  beq         s2, a0, 1304f
                  slt         t1, s3, s7
1291:             slt         zero, gp, s11
                  slli        sp, t4, 5
                  and         t4, t3, a7
                  sltu        a0, s2, a5
1295:             sltu        s7, s6, t4
                  blt         t5, t1, 1298f
                  srl         a3, ra, ra
1298:             bne         a0, s10, 1308f
                  or          a6, t6, s3
1300:             bltu        s1, t4, 1306f
                  slti        s6, a1, 877
1302:             or          t1, t4, t2
                  andi        a7, t3, 1661
1304:             add         s7, t1, gp
                  sub         zero, a4, t5
1306:             auipc       t1, 214707
                  auipc       s11, 269154
1308:             sltiu       a7, t0, 509
                  or          a2, t1, t2
                  auipc       s3, 902824
                  add         sp, s7, s7
                  and         zero, t1, t2
                  xor         t3, tp, s8
                  slti        s7, t6, -1862
                  bltu        s7, s3, 1323f
                  srl         a4, t1, s9
                  bltu        t6, s6, 1330f
                  bne         s8, s11, 1334f
                  add         gp, a6, a1
                  nop
                  lui         zero, 60601
                  sltiu       a6, a7, -922
1323:             srli        s8, s9, 30
                  slli        tp, sp, 19
                  auipc       a0, 794514
                  and         s2, a4, s3
                  srli        zero, gp, 25
                  lui         s11, 895961
                  sltiu       t2, s2, -1526
1330:             slt         a1, sp, a5
                  srli        s3, zero, 3
                  xor         s3, gp, a7
                  slt         zero, s8, s10
1334:             auipc       zero, 243137
                  lui         t1, 515362
                  blt         a2, sp, 1351f
                  srl         s5, s4, t2
                  and         a7, gp, a3
                  xor         t1, s9, s3
                  bgeu        s5, sp, 1345f
                  bgeu        a2, s8, 1357f
                  bne         s2, s6, 1356f
                  sub         s8, s1, s3
                  add         a6, a7, t1
1345:             lui         s0, 684779
                  or          a5, t2, s1
                  sltu        s8, a1, a7
                  sra         s7, s8, gp
                  andi        s9, s10, 727
                  blt         t0, s6, 1363f
1351:             bne         s9, s10, 1365f
                  sltiu       s2, a5, -7
                  sll         t0, t2, t2
                  beq         t2, zero, 1369f
                  sll         tp, s2, a1
1356:             sll         s4, t5, tp
1357:             slt         a5, t4, a2
                  sra         t0, a7, gp
                  nop
                  xori        sp, s5, 1562
                  slli        s4, s7, 2
                  sltiu       zero, t0, -1843
1363:             bge         t1, gp, 1378f
                  sub         s11, s8, s2
1365:             add         zero, t4, t5
                  ori         s9, s2, 259
                  sll         a4, t3, a6
                  slti        s0, t0, 1044
1369:             lui         s1, 889171
                  slt         zero, s11, t1
                  add         a5, a4, s10
                  andi        s8, s2, 1503
                  slli        s8, s0, 4
                  sub         tp, t2, sp
                  beq         s3, a6, 1384f
                  srli        s3, s9, 9
                  lui         s3, 288556
1378:             xor         t2, a5, t6
                  addi        t1, a6, 74
                  ori         a3, a5, 1853
                  ori         a2, sp, -1368
                  and         a4, t5, a7
                  li         s7, 0x1 #start riscv_int_numeric_corner_stream_9
                  li         a3, 0x750d393
                  li         t3, 0x0
                  li         s4, 0x1
                  li         tp, 0x1
                  li         a1, 0x1
                  li         a5, 0x0
                  li         t0, 0x0
                  li         t4, 0x0
                  li         s1, 0x5497bc37
                  sub         t0, s5, s2
                  lui         s11, 337035
                  lui         t0, 38432
                  addi        a2, a3, -47
                  sub         tp, t3, a1
                  lui         a3, 475813
                  addi        t1, s10, 924
                  sub         s5, s10, ra
                  nop
                  add         gp, s9, s8
                  lui         s0, 91092
                  add         t3, a7, ra
                  addi        t0, t6, 85
                  lui         s0, 237544
                  nop #end riscv_int_numeric_corner_stream_9
                  andi        a5, s2, 1529
1384:             sub         zero, s4, a4
                  andi        s5, a5, 160
                  slt         s9, a2, s8
                  andi        s0, a0, -651
                  auipc       tp, 806408
                  ori         a3, zero, 1948
                  add         a2, t3, a5
                  andi        a5, s11, -1122
                  sltiu       tp, a4, 1177
                  xori        tp, s6, 1226
                  bge         gp, a3, 1407f
                  srli        t1, t3, 29
                  nop
                  xor         s1, s8, a1
                  srli        s6, a6, 19
                  slti        a4, zero, 544
                  srli        t0, s4, 10
                  addi        s2, t0, 444
                  slt         t3, zero, s6
                  andi        t2, a3, 934
                  slti        t3, s5, 932
                  sltiu       s7, a0, 108
                  beq         s11, s6, 1426f
1407:             sltiu       s8, s5, 1307
                  andi        s3, s1, -599
                  srl         s1, ra, a2
                  srai        s1, t2, 19
                  blt         t4, s8, 1425f
                  sra         s11, s6, t6
                  srai        s8, tp, 3
                  sll         t2, s10, t4
                  add         s0, s0, t6
                  sltu        t1, t4, tp
                  sll         sp, a6, s11
                  xori        t2, s9, -1307
                  srli        tp, s4, 21
                  slli        a4, s7, 23
                  bge         t2, ra, 1441f
                  sll         gp, s4, t2
                  beq         s3, s8, 1439f
                  addi        s6, s5, 1523
1425:             blt         s11, s5, 1432f
1426:             sll         s1, zero, s1
                  sll         tp, t5, s7
                  ori         zero, s0, 1709
                  bne         zero, sp, 1444f
                  andi        s3, s10, 1274
                  slli        sp, sp, 22
1432:             addi        s4, a7, 1225
                  srli        s2, a1, 28
                  srli        s4, s11, 23
                  xor         t0, gp, sp
                  xori        s9, t4, -1296
                  add         a7, a4, t3
                  bge         s2, a6, 1448f
1439:             bge         s6, a7, 1445f
                  ori         a4, s5, -65
1441:             sll         s9, a5, s1
                  xori        s1, a1, 1872
                  blt         s5, a6, 1451f
1444:             lui         s0, 912572
1445:             andi        s2, a5, 1055
                  slli        a1, s9, 19
                  sltu        s9, s10, a6
1448:             sll         zero, gp, t4
                  xori        s2, sp, -2022
                  sltiu       s4, a1, -1575
1451:             bge         a7, t5, 1458f
                  bgeu        tp, t4, 1462f
                  or          tp, a7, t1
                  bne         s1, t6, 1473f
                  srai        s7, a7, 17
                  slli        s5, t4, 11
                  sltu        s3, a7, s9
1458:             srai        sp, s4, 15
                  xor         t4, t5, a6
                  or          t2, s10, s5
                  slt         a1, a1, a7
1462:             andi        t0, t3, -1780
                  add         s2, s2, ra
                  add         s9, gp, t5
                  bne         gp, a0, 1466f
1466:             sub         sp, ra, s3
                  srl         zero, s11, zero
                  lui         s1, 508266
                  addi        a3, s4, 162
                  bltu        t2, a2, 1475f
                  slti        a1, a2, 1452
                  andi        zero, sp, -1049
1473:             bge         a1, s11, 1488f
                  slt         a0, a7, a1
1475:             lui         a0, 324464
                  blt         a3, t1, 1493f
                  addi        tp, s10, 583
                  bge         tp, s5, 1483f
                  sra         zero, s11, a3
                  nop
                  beq         s3, zero, 1486f
                  bge         s1, s1, 1484f
1483:             or          gp, t3, s0
1484:             sra         zero, s8, tp
                  lui         s4, 190558
1486:             and         zero, s1, t5
                  andi        t4, t6, 984
1488:             bge         a0, t2, 1498f
                  bltu        s4, a0, 1504f
                  slti        a4, a1, -1644
                  addi        s0, t6, -527
                  sltu        tp, t4, s4
1493:             beq         sp, t1, 1495f
                  auipc       zero, 967394
1495:             sltu        s4, t5, a3
                  bge         t5, a4, 1509f
                  srai        s9, s6, 1
1498:             add         t0, a5, s11
                  srai        a2, s1, 26
                  ori         a2, a3, 686
                  xori        sp, s5, -801
                  nop
                  sra         t3, a2, t3
1504:             slti        s9, s11, 67
                  auipc       a3, 973778
                  bltu        gp, s8, 1521f
                  or          a7, a3, a1
                  sra         s2, sp, s8
1509:             sra         zero, s5, s9
                  sub         a4, s5, a3
                  beq         a1, t4, 1531f
                  bltu        s4, tp, 1527f
                  lui         s5, 94240
                  ori         s6, s11, -3
                  xor         a7, s11, gp
                  blt         t1, a0, 1521f
                  nop
                  andi        t1, t3, -1977
                  slt         zero, zero, a6
                  add         t0, a2, s5
1521:             blt         s4, t5, 1534f
                  sll         s0, s3, zero
                  sll         zero, t4, s10
                  srli        s4, zero, 19
                  ori         s8, t1, -1327
                  addi        tp, a4, 593
1527:             blt         t2, a2, 1542f
                  addi        zero, a3, 1192
                  blt         a6, t0, 1543f
                  sra         zero, a7, s6
1531:             bgeu        sp, s0, 1550f
                  xor         t4, tp, s0
                  slti        tp, t6, 25
1534:             bgeu        a3, a5, 1539f
                  addi        a5, t6, 2045
                  sra         a1, s7, s9
                  addi        s1, s5, -1475
                  nop
1539:             lui         zero, 930241
                  bge         a2, s10, 1550f
                  sltu        t4, s5, s5
1542:             sra         s8, a5, a2
1543:             and         a3, s0, t5
                  and         t4, s3, s6
                  sra         s1, s11, t2
                  srl         zero, a7, zero
                  bne         t1, s8, 1562f
                  sll         zero, s5, t2
                  sltiu       s0, tp, -1612
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_1
                  li         t3, 0x6d7b1fca
                  li         s11, 0x10ff4ff5
                  li         s3, 0x50e64cfe
                  li         t2, 0x1
                  li         a1, 0x32ce4037
                  li         t0, 0x1
                  li         a5, 0x0
                  li         gp, 0x0
                  li         s9, 0x0
                  add         s1, t1, s0
                  sub         t3, s7, t0
                  lui         a4, 1015749
                  add         t2, tp, ra
                  sub         s5, a3, s10
                  lui         gp, 43166
                  add         s0, a7, s10
                  add         ra, s2, sp
                  nop
                  add         t3, a2, a7
                  nop
                  lui         ra, 796570
                  addi        s5, a7, 1847
                  add         s11, s8, t0
                  add         gp, s2, t3
                  add         s6, s11, s6
                  addi        t2, t0, -1125 #end riscv_int_numeric_corner_stream_1
1550:             srai        s9, a3, 29
                  beq         t1, t4, 1553f
                  beq         a7, s4, 1560f
1553:             slt         a7, tp, tp
                  sltu        ra, a7, t4
                  bne         a6, t2, 1565f
                  beq         t0, s2, 1557f
1557:             beq         a1, s4, 1564f
                  beq         t5, gp, 1573f
                  and         s1, sp, t4
1560:             bge         zero, t0, 1570f
                  bge         t5, t2, 1567f
1562:             blt         s11, sp, 1564f
                  sub         zero, a1, a5
1564:             and         s5, s6, s1
1565:             sltiu       s11, a0, 610
                  or          gp, sp, s8
1567:             sra         zero, s1, t6
                  nop
                  slti        s5, s11, 1562
1570:             blt         t4, s11, 1584f
                  sub         s6, a5, t4
                  bltu        t2, tp, 1592f
1573:             srl         gp, a2, s0
                  bltu        s11, zero, 1579f
                  lui         s2, 305215
                  or          s8, a3, s8
                  add         a1, s4, sp
                  sltu        s11, sp, a6
1579:             andi        s0, a1, -665
                  beq         a0, s8, 1597f
                  and         a6, a0, a0
                  srli        tp, ra, 14
                  andi        gp, t6, 279
1584:             nop
                  addi        s1, gp, 210
                  slli        t1, s1, 19
                  slti        a7, s3, 624
                  srli        ra, a2, 21
                  blt         a0, s8, 1598f
                  bne         a7, tp, 1597f
                  bgeu        ra, s6, 1605f
1592:             add         s9, s10, zero
                  ori         a4, t1, -552
                  sra         a3, sp, a0
                  or          s3, t5, tp
                  bltu        t3, a5, 1612f
1597:             addi        t4, a1, -1464
1598:             srli        ra, tp, 9
                  slli        t3, s7, 7
                  sub         zero, s9, gp
                  sub         s9, a7, s2
                  bgeu        tp, s5, 1618f
                  ori         a1, t4, 384
                  bltu        tp, a7, 1612f
1605:             add         s9, s10, s5
                  slti        a5, s2, -93
                  nop
                  slli        s4, s1, 5
                  srai        a3, t5, 26
                  srli        t0, gp, 11
                  slti        t1, t0, -1642
1612:             blt         a7, s4, 1626f
                  xori        a1, t0, 626
                  xor         a3, a1, s8
                  bgeu        t0, a2, 1625f
                  slti        t1, s9, 1313
                  bgeu        s2, a3, 1623f
1618:             lui         ra, 493588
                  slti        a3, zero, -1397
                  beq         s3, a5, 1627f
                  slti        s11, s7, 1897
                  slli        t2, s8, 23
1623:             srli        a2, a4, 26
                  add         t1, s6, a1
1625:             xor         s8, s5, t2
1626:             add         a7, sp, s0
1627:             sltiu       a6, a4, 191
                  sub         zero, a5, ra
                  and         tp, a3, a1
                  sub         a7, t5, t4
                  sltu        s5, t5, t5
                  bgeu        a0, t4, 1645f
                  ori         ra, a1, 851
                  xor         s1, a4, s11
                  addi        a3, s10, 90
                  addi        s7, a7, -913
                  srai        tp, sp, 16
                  slt         t4, s4, a0
                  sub         s4, a5, t3
                  sll         s4, t6, tp
                  slti        s7, s1, 1684
                  blt         a1, s9, 1658f
                  addi        s9, a5, -202
                  nop
1645:             bge         s7, s4, 1646f
1646:             slti        tp, s8, -1529
                  sltiu       s6, s9, -867
                  slt         a1, t4, t6
                  bne         gp, t4, 1659f
                  auipc       a0, 180269
                  addi        s0, a2, -1512
                  sra         s1, t5, gp
                  lui         s2, 499556
                  ori         s4, s10, -701
                  bne         tp, s0, 1668f
                  beq         s1, a3, 1663f
                  xori        zero, zero, 535
1658:             sltiu       zero, s6, -1475
1659:             sub         a4, s11, a2
                  bge         t2, s1, 1662f
                  sra         a2, s8, s9
1662:             xori        s4, a7, 1481
1663:             or          a6, s2, t3
                  slti        s11, tp, 1963
                  slt         t1, t4, s10
                  sub         t3, t5, t0
                  add         a7, a1, t4
1668:             slli        t1, ra, 6
                  bltu        s5, a6, 1679f
                  blt         t6, gp, 1685f
                  sltiu       s7, s10, 786
                  beq         t5, t2, 1686f
                  sub         s5, a4, t5
                  sltu        ra, ra, s5
                  bge         s9, a5, 1692f
                  ori         s5, t0, -292
                  bne         ra, sp, 1686f
                  bltu        a2, s10, 1693f
1679:             add         s11, t6, s10
                  bltu        t3, a3, 1694f
                  sra         sp, sp, a1
                  xor         a4, zero, zero
                  sra         zero, s11, sp
                  addi        a2, a3, -1190
1685:             sll         a2, s6, zero
1686:             slt         a0, s1, s2
                  and         ra, s1, gp
                  lui         zero, 303059
                  and         s7, gp, s3
                  bge         t4, t2, 1706f
                  sltu        s2, gp, s0
1692:             sltiu       a7, s4, -1678
1693:             sltiu       a4, a4, 512
1694:             sub         s2, t0, a0
                  slt         s5, t2, s2
                  sltu        a1, t1, t5
                  srai        zero, s10, 28
                  sra         s8, a0, s8
                  slt         a0, s10, a5
                  andi        s5, s5, -1977
                  xor         zero, s8, sp
                  blt         s5, ra, 1722f
                  sltu        gp, a6, t5
                  blt         t2, s1, 1719f
                  srai        a0, t5, 30
1706:             slli        zero, a3, 8
                  bgeu        tp, tp, 1722f
                  beq         s2, t0, 1723f
                  sra         a0, tp, s10
                  srl         s7, t4, a6
                  sltiu       a1, a7, 301
                  add         s11, s1, a6
                  addi        s2, t2, 502
                  sltu        tp, s3, s7
                  bge         s4, t5, 1720f
                  sub         s3, t5, a5
                  and         t0, a7, s9
                  sll         t3, s4, t3
1719:             sltiu       zero, sp, -1036
1720:             sltu        a2, s11, a6
                  xori        ra, zero, -2038
1722:             or          a1, s8, s0
1723:             slti        t4, t3, -537
                  slli        s6, a7, 5
                  blt         s4, tp, 1727f
                  xor         zero, s9, t4
1727:             add         s9, s5, a1
                  xor         t0, s8, t5
                  bgeu        a1, s3, 1734f
                  beq         s3, s7, 1735f
                  sltu        zero, s0, s1
                  sll         zero, a7, sp
                  slt         s8, s3, t3
1734:             srli        zero, s3, 27
1735:             add         tp, s3, s2
                  sub         s7, a0, t4
                  sltu        a4, t5, s7
                  ori         sp, zero, -451
                  auipc       t2, 858691
                  ori         sp, s5, 27
                  srli        a5, gp, 22
                  nop
                  bne         ra, s10, 1763f
                  srai        a0, s11, 4
                  addi        zero, a0, -532
                  srl         t0, a1, a6
                  auipc       s9, 408956
                  sltu        s3, a0, t3
                  sll         s11, t2, tp
                  sub         a7, s5, a6
                  xori        s9, gp, -1608
                  sra         s1, s10, s0
                  ori         s4, a4, 2039
                  nop
                  ori         gp, a2, 1437
                  bltu        t2, tp, 1775f
                  lui         tp, 190407
                  xori        a3, t6, 195
                  xori        t3, gp, -518
                  slt         s7, a5, gp
                  xori        zero, a4, 492
                  and         a6, s0, a0
1763:             srl         gp, a4, t1
                  lui         sp, 329602
                  sltu        zero, s3, s9
                  bne         a5, ra, 1771f
                  slti        a5, a4, -1016
                  beq         zero, s2, 1783f
                  sra         a7, s5, a0
                  sltiu       zero, zero, 1890
1771:             add         s2, sp, s2
                  bne         t3, a4, 1779f
                  andi        s11, sp, -143
                  xor         s11, s6, t3
1775:             auipc       zero, 52341
                  auipc       zero, 292808
                  nop
                  or          t2, a5, s4
1779:             blt         s2, a7, 1786f
                  andi        a5, a4, 1802
                  beq         a2, s11, 1783f
                  bgeu        t0, a1, 1802f
1783:             andi        s0, t5, -1506
                  sub         zero, s7, t4
                  ori         a0, ra, -922
1786:             sltu        ra, s0, a4
                  add         s7, t5, s11
                  sll         a1, t0, a2
                  addi        s7, a2, -1216
                  lui         a7, 129971
                  and         s2, zero, s4
                  xori        a5, t4, 1471
                  sra         s11, s10, s3
                  andi        a1, t2, -198
                  slti        t2, t0, -1920
                  blt         a1, a5, 1811f
                  nop
                  sub         s3, s6, zero
                  xor         a2, tp, tp
                  slli        s11, t4, 1
                  bge         t5, s6, 1817f
1802:             or          s0, zero, t5
                  add         zero, a5, zero
                  auipc       s1, 856941
                  lui         s11, 928538
                  nop
                  bne         a3, s6, 1812f
                  slli        s4, t6, 7
                  blt         t3, a2, 1815f
                  bne         s2, zero, 1824f
1811:             sra         sp, s6, s5
1812:             xori        s5, a1, -483
                  addi        s5, a7, -955
                  sltiu       t0, s1, 1885
1815:             and         zero, s11, s5
                  slti        t0, s1, -1560
1817:             xor         ra, zero, s3
                  nop
                  auipc       sp, 1021709
                  bge         s2, a0, 1835f
                  bltu        s0, s6, 1835f
                  srli        sp, s8, 26
                  bltu        t1, s6, 1833f
1824:             addi        s0, t6, 747
                  bge         a2, a3, 1835f
                  srli        a2, sp, 11
                  or          s11, s4, t1
                  slt         t2, t6, s8
                  slti        s8, a4, 1359
                  slli        s2, t1, 18
                  andi        a0, sp, 1016
                  srli        s7, gp, 8
1833:             nop
                  bltu        zero, tp, 1850f
1835:             nop
                  bltu        s3, ra, 1845f
                  srl         tp, a3, s8
                  slt         s3, a7, s1
                  sltu        t4, t0, a0
                  bgeu        s10, s5, 1860f
                  bgeu        t1, s4, 1854f
                  sltiu       s2, gp, -513
                  slli        sp, s1, 19
                  sltiu       s9, ra, -1228
1845:             addi        ra, s10, -1500
                  andi        gp, s3, 1113
                  srli        a4, s1, 27
                  ori         a5, sp, -2035
                  lui         t1, 441892
1850:             xor         s8, a6, s11
                  sltiu       zero, t2, 1367
                  bgeu        a2, tp, 1854f
                  sltiu       s2, sp, 1325
1854:             blt         tp, s5, 1855f
1855:             bltu        s9, a3, 1869f
                  srli        t2, s7, 30
                  slli        s8, sp, 1
                  sltu        t2, t3, s11
                  sub         s6, s10, s5
                  li         s1, 0x0 #start riscv_int_numeric_corner_stream_2
                  li         t4, 0x1351759c
                  li         a1, 0x0
                  li         t3, 0x78383554
                  li         a3, 0x0
                  li         s6, 0x0
                  li         s11, 0x0
                  li         s9, 0x0
                  li         a2, 0x0
                  li         tp, 0x0
                  sub         sp, t4, gp
                  addi        t3, s4, 521
                  nop
                  nop
                  add         a6, s1, a4
                  sub         s5, a2, t3
                  lui         a4, 475958
                  lui         t1, 638166
                  addi        gp, a2, -1731
                  sub         zero, tp, t1
                  nop
                  lui         s5, 999757
                  addi        a0, s8, 1077
                  nop
                  add         zero, s5, a6
                  lui         s7, 1007228
                  lui         a4, 555550
                  nop
                  nop
                  addi        tp, t0, 334
                  sub         s5, t4, t2
                  addi        zero, a7, -816
                  sub         t4, s7, s6
                  addi        s8, s5, -289
                  add         s1, s5, s10
                  add         zero, ra, a4
                  sub         s8, t2, s8 #end riscv_int_numeric_corner_stream_2
1860:             srai        a3, t5, 31
                  bgeu        a0, s8, 1878f
                  beq         t6, zero, 1870f
                  add         a5, t2, s0
                  add         s8, s2, ra
                  bltu        t6, s0, 1875f
                  srl         s8, a2, ra
                  srli        s1, gp, 12
                  srli        s6, t2, 15
1869:             xor         a6, s7, s8
1870:             xori        s4, a6, 1807
                  srai        gp, a5, 21
                  bge         t2, a0, 1877f
                  sub         s4, tp, s8
                  srai        s4, a3, 27
1875:             nop
                  xor         a4, s11, s10
1877:             sltiu       s2, s6, -1337
1878:             ori         t1, s7, -169
                  lui         a5, 920347
                  srli        s3, tp, 6
                  auipc       s6, 791089
                  srli        s6, gp, 4
                  add         s2, a5, ra
                  xori        s6, s11, 408
                  andi        s7, s11, -924
                  sub         s0, a3, s10
                  srli        s7, s9, 4
                  srl         s2, s11, zero
                  lui         a4, 572512
                  and         a3, a1, t5
                  addi        a6, s4, 1022
                  andi        t2, a3, 1936
                  xori        t0, s2, -924
                  slti        gp, s1, 579
                  add         s3, s2, s8
                  nop
                  nop
                  beq         s1, zero, 1911f
                  bne         s9, a4, 1914f
                  add         t3, a7, ra
                  auipc       t3, 482790
                  srl         s7, a3, s11
                  slli        a3, s5, 26
                  srl         a7, sp, s7
                  slti        a7, gp, 784
                  srai        s3, a6, 18
                  sll         s6, s11, a7
                  bge         t0, sp, 1927f
                  sra         s4, gp, ra
                  srl         t1, s10, sp
1911:             slti        s7, s6, 1574
                  addi        s1, tp, 1666
                  bgeu        t0, t1, 1928f
1914:             beq         gp, a5, 1929f
                  srli        a5, a0, 4
                  srli        s3, s4, 29
                  slli        t1, a0, 29
                  bltu        t1, t1, 1919f
1919:             and         s4, gp, t5
                  slt         zero, a1, t1
                  addi        zero, s7, 1666
                  srli        a1, s4, 27
                  srl         a0, s8, a4
                  and         s1, a2, a7
                  srli        a6, a3, 14
                  or          sp, s7, s10
1927:             add         zero, s7, t2
1928:             sra         a6, s11, t5
1929:             sltu        s11, a0, a2
                  bgeu        ra, a3, 1937f
                  bltu        s10, a4, 1940f
                  sra         t3, a1, s0
                  nop
                  addi        t1, s9, 1330
                  beq         a7, a0, 1945f
                  bne         s6, t1, 1952f
1937:             addi        s8, a3, -1303
                  nop
                  sra         s7, t5, a7
1940:             andi        a4, s3, -974
                  sltu        s7, t4, s8
                  lui         gp, 118684
                  and         s11, s2, gp
                  beq         a3, t0, 1954f
1945:             or          s2, a6, t3
                  sltu        a1, a6, s8
                  sra         s1, s10, t4
                  sub         gp, s5, s8
                  bne         a0, tp, 1968f
                  beq         s2, a4, 1952f
                  ori         s1, t0, 1680
1952:             beq         s9, a2, 1962f
                  sltiu       a4, s9, -1589
1954:             auipc       a0, 1039978
                  srai        t3, a3, 14
                  sub         zero, a2, s9
                  sltiu       a6, s10, 1903
                  srl         s4, t5, s5
                  ori         tp, a5, -368
                  blt         a0, s6, 1965f
                  auipc       s5, 978305
1962:             srl         t1, a3, gp
                  addi        a4, s5, 1836
                  or          s1, tp, a5
1965:             sub         s9, s0, zero
                  auipc       a5, 19506
                  beq         s4, a2, 1973f
1968:             auipc       s3, 2884
                  nop
                  bne         s8, s2, 1985f
                  bltu        a1, s5, 1985f
                  auipc       s6, 870268
1973:             lui         t4, 948598
                  add         s1, s5, s1
                  sll         t1, a6, s5
                  sub         t4, t5, zero
                  addi        zero, gp, -1801
                  add         a2, sp, t1
                  beq         s10, t5, 1995f
                  slti        a5, t4, -1308
                  sll         s11, t5, s0
                  slti        t0, s9, 133
                  or          a5, a7, s3
                  add         t3, s4, s10
1985:             xori        s2, s3, 377
                  bltu        s1, t3, 1993f
                  slt         t3, a6, a7
                  addi        a3, t3, 1860
                  lui         s11, 584439
                  bne         s9, t2, 2004f
                  srl         s11, t3, sp
                  srl         zero, s2, s3
1993:             slt         s2, a0, a3
                  or          zero, t5, a7
1995:             sub         t4, s7, ra
                  nop
                  or          t0, s5, a4
                  sub         sp, t3, s6
                  srai        sp, a3, 25
                  auipc       s1, 906330
                  slt         a5, t5, a7
                  nop
                  bltu        s2, s1, 2005f
2004:             andi        zero, ra, 1191
2005:             sll         gp, s6, t6
                  bgeu        t5, s7, 2014f
                  addi        a6, t0, -359
                  sub         s8, s4, s7
                  bltu        s10, a1, 2029f
                  bge         s8, t6, 2027f
                  xori        zero, t6, -1591
                  bltu        s8, a4, 2017f
                  beq         a2, a4, 2033f
2014:             blt         gp, gp, 2029f
                  xori        a4, a5, -1030
                  srl         a4, a4, gp
2017:             blt         a7, t5, 2030f
                  srl         s0, a1, s10
                  sra         zero, zero, t0
                  sltiu       a0, s9, -1512
                  auipc       s9, 52740
                  slt         zero, t6, a3
                  xor         a5, zero, a0
                  auipc       s5, 676026
                  or          s6, t3, a5
                  bgeu        s2, s2, 2041f
2027:             beq         t4, s2, 2032f
                  srl         zero, a5, t1
2029:             sub         zero, s11, s2
2030:             bgeu        t6, zero, 2044f
                  bne         s3, a4, 2046f
2032:             blt         t4, a0, 2045f
2033:             srli        t2, a7, 30
                  slt         s4, tp, a2
                  bne         a7, a2, 2040f
                  sra         sp, t4, s8
                  bne         t3, t5, 2046f
                  or          s8, t5, s2
                  blt         s5, t6, 2059f
2040:             bne         s8, gp, 2056f
2041:             auipc       t2, 605038
                  slti        t2, ra, -1464
                  nop
2044:             srai        t2, s5, 19
2045:             beq         a7, t0, 2064f
2046:             and         s9, s3, a1
                  lui         a4, 363745
                  sub         s0, t5, zero
                  xori        zero, s3, 617
                  sltu        s11, a4, s0
                  add         a6, a3, t1
                  bgeu        t3, s3, 2066f
                  srai        a0, s7, 6
                  andi        s8, t5, 1118
                  slt         a0, s9, s1
2056:             nop
                  slli        tp, s3, 11
                  sltiu       a1, s7, 670
2059:             xori        s4, s4, -1103
                  sra         zero, s2, s3
                  addi        s7, t4, -762
                  sltu        s2, gp, a0
                  auipc       s3, 509335
2064:             sll         a5, sp, gp
                  andi        s4, gp, -781
2066:             xori        t3, t2, -1660
                  bne         s9, s8, 2075f
                  bne         s9, s5, 2084f
                  lui         zero, 19349
                  srl         a0, s0, t3
                  slt         zero, t2, gp
                  xor         t1, ra, s8
                  addi        s3, s7, -584
                  xor         s8, a0, s0
2075:             bgeu        a3, t2, 2090f
                  xori        gp, a3, -1199
                  add         t2, a0, s6
                  bne         s6, t6, 2092f
                  bgeu        a6, gp, 2093f
                  sub         zero, s3, s10
                  bgeu        s1, a2, 2087f
                  add         zero, s11, s11
                  srli        t0, s10, 20
2084:             sll         t4, a7, a6
                  bltu        t3, a4, 2086f
2086:             bge         t4, t3, 2088f
2087:             xor         s4, a2, s10
2088:             sra         s4, a5, a0
                  xori        gp, a3, 569
2090:             or          t1, t1, s6
                  sltiu       t3, tp, -1380
2092:             xori        zero, a6, -1410
2093:             or          zero, a5, a3
                  sltu        t2, tp, a2
                  srli        t4, a2, 13
                  ori         s11, a1, -1306
                  or          t3, s8, s7
                  srli        s9, a6, 0
                  xor         s1, zero, t4
                  beq         zero, s0, 2115f
                  lui         s1, 240258
                  beq         s5, s9, 2117f
                  bgeu        s1, s5, 2118f
                  andi        a3, s7, -3
                  sll         t4, t6, s7
                  lui         s11, 416418
                  nop
                  bgeu        t0, t1, 2118f
                  xor         t4, gp, s4
                  nop
                  xori        a6, s7, 878
                  xor         s11, s3, s1
                  andi        s3, a6, 1056
                  sub         s9, s4, s3
2115:             sra         t0, t2, a2
                  and         s8, s7, s0
2117:             sll         a1, s5, s9
2118:             andi        a2, a1, -1190
                  lui         zero, 1044679
                  xori        zero, s4, -1025
                  bltu        s8, s3, 2128f
                  xor         a6, a6, s10
                  blt         s3, a2, 2133f
                  bne         s1, s10, 2126f
                  nop
2126:             nop
                  slti        t1, a6, -1356
2128:             add         s3, s5, t2
                  beq         s2, a6, 2146f
                  lui         t2, 852345
                  auipc       zero, 1040038
                  sltu        zero, a4, s11
2133:             beq         s9, s7, 2146f
                  bne         s1, sp, 2139f
                  xor         t0, t6, s4
                  sub         s4, s8, s7
                  sub         t4, t2, s1
                  slli        a2, a3, 27
2139:             xor         zero, t3, s3
                  bltu        s3, s2, 2147f
                  nop
                  add         s3, a6, t4
                  andi        a0, ra, 1994
                  blt         a1, s7, 2164f
                  sub         s5, a5, a7
2146:             sra         s5, sp, a3
2147:             nop
                  and         s11, s5, t6
                  bge         s6, a1, 2159f
                  ori         a6, s8, -1374
                  srli        zero, t3, 0
                  sub         s11, t1, a1
                  sub         t0, t4, t5
                  blt         s0, a4, 2167f
                  xor         a5, a7, a7
                  beq         t2, sp, 2161f
                  beq         s4, s1, 2172f
                  sub         s3, a6, s9
2159:             slli        s1, s2, 21
                  add         t3, t6, s4
2161:             and         sp, a3, s0
                  srai        s7, a5, 25
                  andi        a3, s4, 562
2164:             ori         s1, a0, 156
                  andi        a5, s5, 441
                  and         zero, s4, s2
2167:             xori        t1, s6, 991
                  sltiu       ra, t2, -1211
                  srai        s7, a0, 31
                  add         s0, t0, s10
                  xor         zero, t4, zero
2172:             srai        s2, s5, 5
                  nop
                  bgeu        s5, a1, 2183f
                  addi        s6, s5, -550
                  add         zero, a5, s8
                  lui         s4, 736544
                  add         s1, s0, t5
                  nop
                  ori         ra, a4, 601
                  sll         sp, s9, a7
                  nop
2183:             sub         t3, zero, tp
                  bge         s7, t5, 2194f
                  bne         s9, t1, 2200f
                  and         a1, a3, t6
                  auipc       t1, 750429
                  srai        s7, s10, 25
                  or          ra, a0, s11
                  bgeu        t3, a5, 2198f
                  sub         a4, a2, sp
                  sltu        a7, a7, a3
                  lui         a2, 1047778
2194:             slt         s8, t3, sp
                  sltiu       t4, a6, -1583
                  auipc       s2, 565262
                  slti        s4, s2, 1970
2198:             andi        t3, a2, -1122
                  srl         gp, s8, s11
2200:             slt         sp, s1, zero
                  add         a2, s8, s1
                  sltu        zero, ra, s2
                  auipc       s6, 358263
                  ori         a3, a0, -902
                  bne         s8, a3, 2207f
                  bltu        s1, s2, 2221f
2207:             sll         a0, s11, t0
                  slt         zero, a0, t5
                  lui         t1, 455583
                  srai        a3, s11, 4
                  slt         a7, s1, a1
                  srli        a7, s3, 29
                  sltu        t1, gp, a4
                  bne         a7, a3, 2228f
                  bge         a3, a1, 2231f
                  or          a4, ra, s0
                  nop
                  srli        s8, t3, 25
                  or          a7, s1, t2
                  andi        t0, s1, -1893
2221:             xor         a0, s2, s1
                  addi        s4, s7, 108
                  sra         s0, s6, s7
                  srli        s1, a1, 12
                  andi        a1, gp, -118
                  slti        s9, t2, 1007
                  sltiu       zero, a5, 1607
2228:             sll         s11, a7, s10
                  blt         t3, a6, 2234f
                  or          a7, t3, a5
2231:             or          s8, sp, a6
                  srai        s5, s8, 6
                  xor         a1, t4, t2
2234:             srai        a1, a7, 13
                  xor         zero, sp, s7
                  lui         s0, 257987
                  andi        s7, s6, 74
                  beq         t0, gp, 2240f
                  xori        s4, a1, 861
2240:             addi        a7, s8, 1527
                  addi        t0, s5, -1371
                  auipc       a6, 442260
                  sltu        tp, a3, t0
                  auipc       a4, 106226
                  srai        s0, a7, 19
                  lui         a4, 439286
                  sltu        sp, s4, t6
                  srli        s8, zero, 19
                  slt         t0, t2, s0
                  srl         zero, t4, a4
                  sltiu       s2, a5, -1572
                  slt         s0, a6, a6
                  or          s4, s5, a1
                  or          s11, t0, t6
                  bne         t0, a6, 2272f
                  xori        a1, zero, -1829
                  srli        sp, t6, 29
                  andi        s5, t0, -512
                  sra         sp, zero, ra
                  slti        s11, s1, -575
                  nop
                  bltu        t3, t6, 2276f
                  andi        a3, zero, -1785
                  sub         ra, a7, a3
                  sltu        s2, s10, s8
                  lui         s6, 346794
                  bge         t5, t4, 2268f
2268:             sltiu       gp, a6, 1026
                  slli        sp, a6, 7
                  srl         s8, a4, t3
                  ori         t0, t6, -210
2272:             srl         a3, s6, a7
                  sltiu       s4, t6, 1858
                  bltu        t4, s3, 2287f
                  srli        a4, s3, 31
2276:             xori        gp, s3, -623
                  bltu        s10, a3, 2292f
                  bge         a3, a3, 2285f
                  sra         a6, a2, ra
                  add         a1, t0, gp
                  sll         zero, s11, zero
                  srli        zero, t6, 27
                  sub         s4, a6, s1
                  sltiu       t2, s10, 1485
2285:             beq         a0, gp, 2304f
                  nop
2287:             auipc       zero, 376514
                  sub         a4, t6, s10
                  slt         a5, s8, a7
                  auipc       zero, 414195
                  sltiu       s1, a4, -673
2292:             sltiu       t2, s7, -1254
                  lui         s7, 880899
                  or          s5, s9, s2
                  addi        a5, a0, 1973
                  add         a4, zero, t1
                  addi        s11, s6, 690
                  slt         s9, a4, t3
                  sra         s9, s6, s9
                  srl         a4, a0, t6
                  lui         zero, 216877
                  bge         a2, t4, 2322f
                  sltiu       t0, s0, 441
2304:             sub         gp, t0, s8
                  srli        zero, s1, 5
                  bge         s10, a1, 2321f
                  bne         s7, t4, 2323f
                  and         t0, t3, a0
                  sra         t0, s10, s10
                  addi        zero, s6, -983
                  bne         s0, s0, 2321f
                  slli        s4, t1, 11
                  blt         t2, s0, 2333f
                  sub         s11, a5, ra
                  add         a7, t2, s2
                  slt         s7, a7, s10
                  blt         gp, s9, 2330f
                  lui         a6, 820804
                  andi        gp, t6, 903
                  slli        zero, t2, 28
2321:             ori         t2, t5, 1130
2322:             bgeu        t3, s2, 2327f
2323:             sltiu       a7, s9, -917
                  bge         a2, s8, 2338f
                  auipc       s4, 133536
                  auipc       zero, 507825
2327:             nop
                  nop
                  xori        a6, a0, -1158
2330:             sltiu       t2, s1, 1461
                  slti        s2, t5, 1683
                  bge         s6, t3, 2338f
2333:             bltu        t5, gp, 2340f
                  nop
                  nop
                  sra         a7, zero, s4
                  slli        zero, t5, 21
2338:             or          s7, s0, s8
                  xor         s0, gp, s5
2340:             auipc       a5, 807149
                  sltiu       zero, s7, -641
                  add         ra, s8, a7
                  addi        t0, s11, 1506
                  srai        a7, s11, 11
                  ori         zero, a5, -236
                  blt         s4, s4, 2351f
                  ori         a7, s11, 395
                  nop
                  sra         t0, s1, s9
                  bltu        s11, t3, 2365f
2351:             sltu        t1, a6, s0
                  srli        zero, s9, 18
                  andi        a7, s1, -1113
                  sll         t4, a2, t5
                  sub         a5, t5, t6
                  nop
                  bge         t0, s11, 2367f
                  sra         s4, t4, s8
                  xor         zero, a0, tp
                  xor         s2, t0, tp
                  srl         a0, tp, t3
                  sra         s2, sp, s1
                  sub         a7, s10, s6
                  slti        s1, t0, -1154
2365:             ori         zero, s0, 1593
                  beq         a3, tp, 2374f
2367:             sra         s9, a6, t2
                  bne         tp, a4, 2375f
                  srli        ra, a0, 26
                  slt         t1, gp, zero
                  slli        a1, t1, 8
                  and         s0, s8, a4
                  sub         s5, gp, t3
2374:             sltiu       gp, a7, -462
2375:             slli        t3, s3, 15
                  slt         a2, tp, a2
                  bge         ra, s10, 2393f
                  sltiu       a5, s10, 1215
                  xor         zero, s3, s11
                  addi        a6, gp, 1763
                  add         a0, s3, ra
                  srai        a2, t2, 9
                  bne         a7, s11, 2403f
                  sub         zero, s9, gp
                  bgeu        s11, t4, 2398f
                  bge         t1, t1, 2388f
                  sub         a1, tp, s8
2388:             srl         s11, s7, t0
                  srl         a2, t6, s0
                  lui         a5, 400055
                  bge         s11, sp, 2401f
                  srai        s1, tp, 26
2393:             or          t3, t3, tp
                  and         a3, t4, a2
                  slli        ra, t4, 0
                  li         s3, 0x3ef077cc #start riscv_int_numeric_corner_stream_5
                  li         t4, 0x4065625b
                  li         t3, 0x14d27b7
                  li         s11, 0x0
                  li         s9, 0x1
                  li         s1, 0x1
                  li         s5, 0x224eb49f
                  li         s8, 0x0
                  li         ra, 0x0
                  li         s0, 0xcc45b71
                  add         s8, s8, a7
                  addi        s1, s3, 1721
                  sub         zero, t6, a0
                  nop
                  lui         zero, 941142
                  lui         zero, 764471
                  nop
                  nop
                  addi        s9, a0, 771
                  nop
                  nop
                  addi        t0, s7, -791
                  add         t2, s1, s7
                  nop
                  nop
                  sub         a0, a2, a2
                  lui         a7, 491490
                  nop
                  add         zero, a7, a0
                  lui         s1, 933730
                  addi        zero, s11, -605
                  addi        t1, a1, 2044
                  add         s9, sp, s3
                  add         s6, t3, t6
                  sub         s5, a6, s5 #end riscv_int_numeric_corner_stream_5
                  lui         t3, 310100
                  sub         t0, a0, t6
2398:             slti        s3, s11, -970
                  and         sp, a5, s3
                  bge         t6, ra, 2405f
2401:             srl         a0, s5, ra
                  xori        a2, s5, 635
2403:             bne         s1, t0, 2420f
                  or          a1, s5, a6
2405:             andi        tp, a2, -340
                  srai        a1, s2, 19
                  slti        a1, t3, -1749
                  sub         zero, tp, s2
                  ori         zero, s5, 2
                  addi        t4, a0, -11
                  auipc       a4, 195167
                  blt         t0, s8, 2422f
                  andi        sp, s10, -1363
                  srl         t1, s0, t3
                  sll         a3, t3, sp
                  bge         a1, s6, 2431f
                  sll         s3, t2, tp
                  bltu        a2, a0, 2425f
                  ori         t4, sp, 1677
2420:             srli        a6, s6, 28
                  slti        s4, s10, 1167
2422:             xor         a7, a1, a2
                  beq         a1, ra, 2424f
2424:             srl         s3, s6, s5
2425:             slli        zero, t5, 14
                  blt         s3, t3, 2441f
                  and         gp, a1, s3
                  sll         a1, t0, s4
                  srai        a0, s0, 3
                  bgeu        s8, a0, 2432f
2431:             sltiu       t3, gp, 1541
2432:             nop
                  or          gp, s9, s1
                  xori        t1, t5, 1322
                  auipc       zero, 565969
                  andi        s1, a6, -1431
                  xori        zero, t5, 1648
                  nop
                  srai        ra, zero, 11
                  addi        zero, s9, 1893
2441:             blt         s9, a0, 2456f
                  beq         t3, a3, 2462f
                  lui         a5, 782796
                  sll         s1, a5, t0
                  or          s5, sp, t3
                  and         a7, t3, a7
                  or          s2, sp, t6
                  bne         ra, ra, 2462f
                  sra         t3, t2, s8
                  bne         a2, s5, 2463f
                  sltiu       sp, s6, 450
                  sltu        s9, s3, s10
                  beq         s2, sp, 2468f
                  blt         s5, a3, 2469f
                  bgeu        ra, s9, 2474f
2456:             sub         t0, tp, s7
                  addi        a5, t3, -1462
                  ori         a6, a7, 267
                  blt         t4, a4, 2464f
                  sltiu       a3, t5, -860
                  bge         tp, a0, 2466f
2462:             or          s4, t4, t4
2463:             bltu        a7, sp, 2472f
2464:             add         s4, a4, zero
                  slli        a5, s3, 2
2466:             or          a6, s7, zero
                  sltu        s4, a4, a0
2468:             auipc       zero, 761054
2469:             sltu        s2, a1, s9
                  addi        t3, s3, -1563
                  sub         s4, zero, s10
2472:             slt         t3, a0, sp
                  bne         s9, s0, 2487f
2474:             auipc       s6, 437553
                  andi        s11, t5, -1104
                  bne         s5, s10, 2482f
                  xor         a6, s6, t2
                  sltu        s5, t3, s2
                  add         a0, t4, gp
                  slli        zero, a5, 16
                  ori         t4, zero, 1537
2482:             xori        t1, a0, 1358
                  srl         s6, s1, s2
                  bgeu        s10, a1, 2498f
                  bne         s8, t1, 2495f
                  bltu        a3, a1, 2502f
2487:             blt         t5, s3, 2501f
                  sltu        zero, zero, a7
                  sll         a2, s7, a1
                  addi        gp, a2, -1291
                  bge         a6, a4, 2500f
                  beq         s6, t5, 2500f
                  bgeu        tp, a3, 2500f
                  andi        zero, tp, 422
2495:             slti        s11, t3, 491
                  addi        a1, s11, -385
                  xor         a0, ra, a6
2498:             ori         s4, s8, 1580
                  slti        s8, s0, 69
2500:             sltiu       tp, t0, -268
2501:             and         tp, s11, s7
2502:             bne         t2, s11, 2517f
                  bne         t3, a1, 2508f
                  sll         ra, t0, s10
                  xor         a4, tp, sp
                  bgeu        a5, a0, 2521f
                  beq         a3, s3, 2524f
2508:             add         s8, t1, gp
                  slli        a6, s10, 10
                  andi        a7, zero, -1837
                  andi        zero, s6, 1577
                  bgeu        tp, s5, 2531f
                  bne         a0, zero, 2528f
                  ori         s9, s5, -1570
                  bge         t1, s6, 2525f
                  srl         t0, s1, t2
2517:             xor         ra, gp, s9
                  andi        a4, s11, 554
                  add         s7, t5, s7
                  srai        s4, s8, 13
2521:             bge         tp, a7, 2537f
                  bltu        a0, s2, 2528f
                  or          sp, a6, s5
2524:             auipc       t4, 259526
2525:             nop
                  slt         s8, s4, t3
                  slli        s6, s5, 22
2528:             sll         sp, t6, s11
                  slti        ra, sp, 1657
                  sub         a2, t0, t6
2531:             add         zero, s0, a7
                  srli        zero, a7, 5
                  srl         t1, a5, s4
                  slli        a4, s7, 18
                  ori         s3, s9, 1954
                  sub         s11, s3, t1
2537:             auipc       ra, 454993
                  beq         s3, a6, 2553f
                  sltu        a5, a5, zero
                  add         a6, a1, a7
                  ori         zero, ra, 1887
                  bgeu        a3, s2, 2552f
                  and         s7, t0, s7
                  sltu        a1, s4, a7
                  bne         tp, s9, 2558f
                  bge         a0, a6, 2560f
                  and         a2, gp, t6
                  xor         zero, t4, s4
                  xor         ra, t6, a7
                  beq         tp, t4, 2564f
                  add         s2, a5, a1
2552:             lui         zero, 32206
2553:             bgeu        s1, s0, 2555f
                  slti        s8, s7, -78
2555:             blt         s0, t0, 2568f
                  add         t1, s9, a4
                  or          s9, a2, a0
2558:             bgeu        a6, s5, 2559f
2559:             xori        s7, s4, 1187
2560:             bne         t1, s3, 2576f
                  slt         t4, gp, s3
                  or          s8, a5, t6
                  srai        a6, s3, 12
2564:             slti        a5, t6, 1963
                  and         s9, s7, tp
                  srl         t2, zero, s4
                  sltu        zero, a0, s7
2568:             slli        a5, s3, 27
                  beq         a1, t6, 2576f
                  slt         ra, s0, t1
                  srai        a3, s9, 5
                  sub         t3, s6, t4
                  and         s3, a0, s8
                  bne         s10, s2, 2589f
                  srl         s4, tp, s3
2576:             xor         s5, t3, t2
                  addi        a3, a4, 673
                  ori         t3, tp, 974
                  slli        s6, a7, 14
                  auipc       gp, 664060
                  lui         ra, 532940
                  sra         s1, tp, a2
                  addi        s9, t2, 1414
                  sra         a1, s6, zero
                  add         t4, s6, s8
                  slti        t2, s5, -1621
                  srai        zero, s8, 17
                  sltu        s2, s6, t5
2589:             sltu        s9, s8, t4
                  bltu        s9, s2, 2600f
                  andi        tp, s11, -1092
                  slt         a1, s9, s1
                  srai        a3, a0, 2
                  sltiu       a3, ra, -1646
                  ori         s4, t2, -1207
                  sll         s7, sp, t2
                  sra         s11, a1, t4
                  lui         tp, 180236
                  lui         s1, 1024130
2600:             addi        a3, s5, -483
                  lui         s6, 27996
                  xor         t2, ra, t2
                  slli        ra, a1, 18
                  and         a1, a3, tp
                  or          zero, s6, s6
                  bne         t1, a3, 2626f
                  bltu        s9, a3, 2612f
                  slt         s7, gp, a2
                  slli        zero, a7, 6
                  srai        s6, s2, 20
                  bge         s2, t1, 2631f
2612:             slt         s3, s1, t4
                  bge         t0, t2, 2615f
                  xori        a1, tp, -1065
2615:             auipc       s3, 500317
                  slti        s7, tp, -1318
                  auipc       t3, 358993
                  auipc       a7, 89368
                  srli        tp, s3, 3
                  srli        a5, s9, 1
                  bltu        a5, a7, 2626f
                  srli        t1, s11, 22
                  add         t1, s11, s3
                  bge         a1, a0, 2634f
                  and         a3, t2, s6
2626:             ori         zero, a0, -1441
                  slti        s4, a2, 1715
                  sra         gp, s11, tp
                  sra         a6, a4, t3
                  srai        s1, s2, 7
2631:             nop
                  bgeu        t5, a5, 2647f
                  ori         s5, zero, 73
2634:             beq         ra, s3, 2639f
                  nop
                  xori        a5, a4, 252
                  sub         zero, s3, sp
                  bge         a3, a6, 2653f
2639:             slt         ra, s10, a1
                  sra         tp, sp, s11
                  nop
                  auipc       s2, 745815
                  beq         a2, gp, 2659f
                  srai        s11, t5, 5
                  auipc       ra, 824046
                  bltu        a0, s3, 2654f
2647:             slli        t4, t4, 11
                  bgeu        s4, ra, 2658f
                  bltu        zero, s1, 2662f
                  sltu        a6, a1, a3
                  srli        a0, s11, 27
                  or          a7, a0, s5
2653:             sltu        t2, a4, s10
2654:             sub         s1, t2, s10
                  slti        zero, a6, -417
                  xor         s6, a2, a6
                  bne         t4, zero, 2662f
2658:             sub         a5, t2, t6
2659:             blt         a5, t2, 2678f
                  xor         s6, s2, zero
                  and         s7, a3, s4
2662:             sub         a7, s3, s6
                  lui         s4, 517197
                  slti        s0, s7, 746
                  bge         a7, s1, 2679f
                  or          s2, a1, t0
                  slti        a6, a6, -877
                  sll         t2, t4, a3
                  slti        t1, t5, -2036
                  bge         gp, sp, 2686f
                  sra         s7, zero, gp
                  srai        sp, a1, 11
                  lui         s3, 206910
                  sra         s1, s0, gp
                  sltiu       s4, s3, -2035
                  sltu        tp, t3, tp
                  ori         a0, s4, -1028
2678:             slti        a2, a5, -1269
2679:             srli        a1, t6, 12
                  bltu        gp, tp, 2690f
                  sltu        t3, zero, zero
                  xori        tp, s5, 176
                  nop
                  beq         a5, s9, 2697f
                  ori         s8, a2, 1538
2686:             sra         zero, s10, s0
                  addi        s8, a3, 2003
                  addi        s6, a4, -911
                  sltu        a1, s4, s0
2690:             sltu        a1, a2, a2
                  blt         t5, s5, 2706f
                  srli        a4, t4, 30
                  nop
                  sltiu       a5, s1, 1732
                  bltu        t5, s7, 2702f
                  srli        a3, t4, 26
2697:             sltiu       t1, t2, -641
                  xor         zero, t0, zero
                  beq         gp, s2, 2716f
                  bge         a0, s7, 2706f
                  xor         a7, s1, t3
2702:             andi        zero, sp, -420
                  add         ra, sp, a1
                  andi        gp, gp, -1176
                  lui         sp, 10567
2706:             bne         gp, s1, 2726f
                  lui         t4, 55109
                  sub         s4, s2, zero
                  and         s3, t3, s6
                  blt         gp, t0, 2730f
                  xor         zero, t2, t6
                  xori        t0, t6, -1853
                  sra         s5, a1, s6
                  sub         a3, t6, s0
                  bge         s5, s7, 2716f
2716:             sltiu       t3, tp, 1027
                  and         gp, t3, s0
                  sll         s11, a1, a0
                  sra         s5, s7, t4
                  or          s2, s8, t5
                  srli        t3, s7, 29
                  slti        a4, zero, -1977
                  beq         t3, a5, 2732f
                  bne         s6, a5, 2726f
                  and         a4, zero, s7
2726:             lui         zero, 86893
                  bne         t5, t6, 2742f
                  beq         t2, s11, 2742f
                  slli        zero, a7, 3
2730:             srl         zero, s5, a1
                  sub         zero, sp, a2
2732:             bltu        sp, a5, 2739f
                  nop
                  addi        s3, gp, -59
                  srl         s11, s10, a0
                  srai        t4, s11, 30
                  sltiu       a2, s11, -122
                  bne         a1, a4, 2740f
2739:             xor         zero, s3, gp
2740:             add         a3, s3, a3
                  lui         a4, 824617
2742:             slt         s0, tp, a3
                  lui         s7, 308554
                  xori        sp, s10, -1750
                  slti        t0, t3, 19
                  xor         t3, t1, sp
                  sltu        t2, s0, s6
                  bge         s9, a4, 2753f
                  bgeu        a5, s4, 2764f
                  slti        s0, a7, 556
                  bne         t3, s9, 2765f
                  slli        s3, s9, 29
2753:             bgeu        a0, sp, 2770f
                  srli        a2, s4, 8
                  slt         tp, a5, s6
                  bltu        t0, s9, 2770f
                  blt         s5, tp, 2772f
                  sltu        t0, t5, zero
                  sltiu       zero, t6, -222
                  beq         t4, t0, 2776f
                  srai        s9, t2, 0
                  srai        t2, s0, 27
                  or          t3, t2, zero
2764:             sra         ra, a5, s1
2765:             andi        s0, t1, 367
                  andi        s7, s5, -615
                  sltiu       s1, a3, 1565
                  sra         t2, sp, s6
                  and         s0, t3, t6
2770:             addi        a1, a0, -247
                  bgeu        a2, s1, 2772f
2772:             add         t3, s11, s8
                  and         s5, t0, s0
                  xori        s4, t0, -1118
                  add         s7, s3, s3
2776:             sll         a2, s6, a5
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_0
                  li         t3, 0x1
                  li         tp, 0x0
                  li         s7, 0x0
                  li         s11, 0x1
                  li         a3, 0x53b5950a
                  li         s9, 0x0
                  li         a7, 0x1
                  li         a0, 0x0
                  li         s3, 0x43fc265e
                  sub         a5, zero, t5
                  addi        t2, s6, 988
                  sub         s11, t1, s7
                  lui         gp, 429087
                  add         zero, s8, s4
                  addi        a7, a6, -1832
                  lui         s11, 710846
                  nop
                  addi        t0, a6, -111
                  sub         a7, s1, a6
                  sub         s2, t0, sp
                  sub         t0, a0, s2
                  add         t4, zero, a2
                  sub         s0, a5, t4
                  add         t3, s9, a7
                  nop
                  sub         s3, tp, s0
                  add         a3, t4, s7
                  lui         s8, 812599
                  addi        s2, t1, 1332
                  add         t2, s2, s10
                  lui         a2, 484886 #end riscv_int_numeric_corner_stream_0
                  xor         s0, t4, s2
                  and         t4, s8, s4
                  and         sp, s10, a2
                  and         sp, t5, t3
                  bgeu        s1, t1, 2796f
                  xor         t2, s2, s11
                  lui         a6, 961415
                  srai        s2, t1, 30
                  lui         a5, 750739
                  srli        s4, s9, 4
                  sltu        sp, a4, s2
                  xor         a0, sp, a5
                  bgeu        a0, s9, 2805f
                  srli        a5, t3, 7
                  add         a0, s7, a5
                  slt         tp, a0, a1
                  sra         s0, s0, ra
                  addi        s4, a6, -1035
                  bge         a4, s5, 2803f
2796:             auipc       ra, 778019
                  sra         a3, zero, s9
                  xor         a6, s5, t5
                  bltu        ra, s6, 2804f
                  bgeu        ra, s7, 2806f
                  ori         s6, zero, 2042
                  bgeu        s0, a1, 2812f
2803:             bltu        t6, a0, 2808f
2804:             slti        s6, s9, 1003
2805:             and         s11, s4, s9
2806:             addi        gp, a1, -999
                  bgeu        s8, s1, 2814f
2808:             and         t0, a3, s7
                  sra         ra, t4, t3
                  lui         s0, 1028012
                  sll         s1, t1, t2
2812:             andi        s5, a5, 317
                  or          a4, zero, a0
2814:             slti        a4, a0, 1436
                  slli        s6, zero, 14
                  addi        a7, zero, 1166
                  sub         zero, s4, a3
                  xori        zero, s6, -1100
                  sltiu       s3, a7, 795
                  slt         t3, a1, s10
                  sltiu       a4, gp, 266
                  slt         t0, s4, t3
                  xori        s7, a0, 650
                  or          s8, s1, a6
                  slti        zero, s2, 292
                  xor         t0, s11, a1
                  bne         ra, t1, 2842f
                  sub         s5, zero, s2
                  bne         t6, a6, 2842f
                  andi        ra, a1, 1269
                  auipc       s0, 472129
                  ori         zero, t0, 2003
                  sra         t2, s5, s4
                  beq         t6, t2, 2854f
                  ori         zero, s0, -1376
                  and         zero, a1, s11
                  add         a7, a0, s7
                  and         s11, s5, s2
                  sra         a6, a6, a3
                  slti        t0, s7, -589
                  add         gp, t3, s2
2842:             sll         s0, t6, a5
                  bne         s10, t1, 2857f
                  sltiu       a7, t0, 177
                  sra         t0, s9, gp
                  auipc       gp, 320030
                  blt         t0, t4, 2854f
                  sub         zero, s0, a4
                  beq         t0, t3, 2868f
                  andi        t0, s0, -629
                  slt         s9, t3, tp
                  srai        s7, s2, 15
                  andi        a4, t5, 532
2854:             add         s2, a0, t1
                  slti        a5, s5, 1435
                  xor         a7, t5, s4
2857:             srli        a0, a5, 2
                  srai        t2, t3, 2
                  add         a6, s4, s0
                  srl         zero, sp, s6
                  slti        s7, s9, 143
                  sra         t3, s5, a4
                  sll         a5, t6, s4
                  bgeu        s2, s10, 2874f
                  sub         zero, ra, t1
                  sra         t0, t1, t4
                  add         a3, t3, s8
2868:             bne         s6, zero, 2882f
                  sll         zero, t3, a5
                  add         t1, t3, s4
                  add         s0, s9, s5
                  bgeu        a4, s8, 2874f
                  addi        s0, s5, 343
2874:             xori        s9, s0, 2034
                  xor         tp, t1, t5
                  srli        s7, a6, 14
                  sltu        s2, a7, s9
                  sltiu       zero, s7, -840
                  bge         t2, a3, 2894f
                  bne         s5, s10, 2893f
                  slti        s1, a2, -1251
2882:             bgeu        t6, a7, 2892f
                  lui         t0, 491090
                  sub         zero, sp, s2
                  add         t1, s8, t6
                  srai        s11, t5, 30
                  bltu        a3, a1, 2889f
                  bne         s11, t5, 2908f
2889:             nop
                  bltu        tp, a3, 2895f
                  bltu        t1, gp, 2906f
2892:             addi        ra, t1, 311
2893:             bne         gp, s3, 2902f
2894:             sltu        zero, s7, t3
2895:             slti        t1, t4, 1033
                  add         s8, s8, s2
                  blt         a4, sp, 2917f
                  add         a5, s6, a0
                  xori        a1, tp, -1071
                  sltu        a3, s11, s9
                  bge         sp, gp, 2907f
2902:             lui         a7, 429312
                  lui         a1, 505251
                  lui         s11, 141655
                  bne         a4, s7, 2920f
2906:             addi        ra, s8, -1080
2907:             nop
2908:             and         a1, s2, t2
                  bgeu        s1, s1, 2914f
                  or          a7, t6, s11
                  srl         s9, t6, gp
                  srl         t4, s4, s6
                  srai        ra, a0, 9
2914:             sra         a0, t5, a1
                  bge         a2, s7, 2932f
                  xori        gp, a5, -466
2917:             beq         s5, s1, 2918f
2918:             xor         s3, t4, t2
                  sll         s0, t0, s0
2920:             bge         s7, a5, 2936f
                  bgeu        s10, s6, 2936f
                  xori        s6, tp, -1631
                  sub         tp, a7, ra
                  beq         a5, s8, 2937f
                  sltiu       t0, s3, 1065
                  or          s1, t3, t5
                  slti        a3, tp, -1040
                  sra         a0, a6, s5
                  sltiu       a4, a2, -35
                  bne         s5, t2, 2940f
                  xori        a4, s11, 45
2932:             blt         t0, t2, 2946f
                  srl         a7, zero, a4
                  nop
                  addi        t2, t1, 576
2936:             slli        s2, t4, 6
2937:             ori         s7, s1, 185
                  addi        a6, t0, 493
                  bne         a2, sp, 2955f
2940:             sltiu       t1, a0, -975
                  nop
                  andi        a1, t6, 1165
                  xor         s8, ra, s11
                  ori         s9, a5, 1700
                  slti        a6, a5, 1420
2946:             slt         s0, a6, a1
                  sra         t4, s6, a5
                  sra         s4, a6, s2
                  sub         s6, a2, a5
                  slli        s9, t3, 26
                  andi        s0, sp, 2011
                  bltu        t3, s5, 2967f
                  and         zero, s5, s1
                  sll         t4, t1, s11
2955:             bne         s10, a7, 2969f
                  xori        t0, s7, -1290
                  or          t4, a1, a3
                  xori        s1, t3, 620
                  or          sp, t0, t4
                  add         a6, a7, s10
                  srli        a5, gp, 30
                  srai        sp, t5, 24
                  andi        s0, ra, -1849
                  addi        zero, s6, -787
                  xor         s7, s0, a0
                  srai        a1, t0, 19
2967:             sltiu       t4, ra, -1618
                  sub         s8, s0, t4
2969:             beq         s3, a3, 2974f
                  sub         a4, s4, s4
                  xori        a4, a1, 1005
                  sltiu       s1, ra, -1426
                  slti        s0, gp, 1158
2974:             srl         s11, zero, s11
                  sra         s9, t4, s1
                  blt         a2, a0, 2981f
                  bne         tp, s3, 2992f
                  bge         s9, s4, 2991f
                  bgeu        t4, s3, 2986f
                  sra         s11, a5, sp
2981:             sltiu       zero, sp, 1646
                  srai        zero, t4, 15
                  addi        sp, t0, -1210
                  andi        s2, t0, -1921
                  bgeu        t5, a6, 2995f
2986:             sra         s4, gp, s4
                  slli        a3, sp, 23
                  lui         s2, 516883
                  bgeu        s10, s11, 2999f
                  nop
2991:             andi        s9, t6, -720
2992:             or          a1, a0, s5
                  sltu        s11, s7, t6
                  andi        s3, t2, 169
2995:             or          a1, s5, s2
                  nop
                  auipc       s9, 376980
                  blt         s9, a7, 3000f
2999:             sra         s9, t4, t0
3000:             bge         s7, s10, 3020f
                  srli        s4, s5, 18
                  srl         a7, s5, a2
                  sltu        s5, s10, s6
                  srl         gp, s10, a0
                  and         s9, t4, s8
                  slt         zero, s7, t3
                  nop
                  andi        zero, zero, -2016
                  nop
                  slt         s3, s6, s11
                  slli        tp, t3, 24
                  blt         t5, s6, 3027f
                  add         tp, gp, a4
                  sub         tp, a5, a1
                  auipc       gp, 536797
                  bgeu        a4, s2, 3030f
                  srai        t0, ra, 19
                  sub         zero, a7, s11
                  sltiu       a5, a4, -343
3020:             srl         a0, a0, s10
                  sltu        a4, t0, a0
                  add         sp, s10, s2
                  sltiu       a5, t1, -1955
                  ori         t4, gp, -1161
                  ori         s6, s7, -1920
                  sll         s5, t6, a6
3027:             bgeu        a5, s4, 3034f
                  srai        a1, s8, 14
                  ori         s3, a7, -474
3030:             srli        a5, tp, 27
                  bge         a2, sp, 3040f
                  slt         t2, s9, t5
                  slti        s5, a7, 735
3034:             srli        t0, s9, 22
                  bgeu        t0, s11, 3037f
                  sub         s5, t0, a7
3037:             slti        ra, zero, 1230
                  bne         a1, t5, 3046f
                  xori        s5, zero, 830
3040:             add         a5, t2, s9
                  blt         gp, a1, 3060f
                  slt         sp, s9, t2
                  ori         s4, s8, 1637
                  srai        s8, t6, 22
                  and         zero, ra, a4
3046:             or          a1, a7, t3
                  slt         s0, sp, ra
                  and         zero, gp, s7
                  addi        a3, a2, 1319
                  ori         t4, s10, 986
                  add         a3, a5, s11
                  nop
                  bne         t1, a3, 3066f
                  ori         s1, tp, 415
                  sub         s3, tp, t3
                  xori        a5, a0, 603
                  srl         zero, t0, t4
                  srli        t3, s1, 21
                  andi        s6, a1, -1389
3060:             slli        sp, t4, 8
                  srl         s2, s5, s5
                  bne         gp, s10, 3079f
                  andi        s4, s10, 1253
                  or          a0, a4, s1
                  blt         s0, t0, 3081f
3066:             ori         s6, a0, -1008
                  sub         a3, a3, t6
                  auipc       ra, 378622
                  bgeu        a0, s4, 3084f
                  slt         s5, s0, t4
                  srl         zero, a4, s3
                  sra         t1, s9, s1
                  ori         zero, a5, 60
                  bge         t4, a5, 3088f
                  ori         a2, zero, -179
                  andi        s2, t0, 1057
                  bltu        s4, t4, 3084f
                  slt         s8, a3, s0
3079:             andi        a5, tp, -917
                  srl         zero, sp, s3
                  li         a0, 0x0 #start riscv_int_numeric_corner_stream_3
                  li         t4, 0x0
                  li         t0, 0x0
                  li         t3, 0x1
                  li         s11, 0x1
                  li         a1, 0x1
                  li         s1, 0x0
                  li         s9, 0x0
                  li         s7, 0x0
                  li         s8, 0x1
                  nop
                  add         t2, t1, sp
                  sub         t2, s10, s2
                  sub         t4, s8, s3
                  nop
                  addi        s1, gp, 505
                  sub         zero, s10, t0
                  addi        a4, a0, 1680
                  lui         zero, 506575
                  nop
                  add         a7, zero, a5
                  sub         a7, s1, s11
                  lui         s4, 628899
                  lui         ra, 791872
                  sub         s1, t3, a6
                  add         s7, s8, t2
                  nop
                  add         s8, s1, a6
                  addi        a7, s0, -195
                  nop
                  lui         gp, 407568
                  sub         a7, sp, s2
                  add         s5, a4, a1
                  addi        a5, t3, 1622
                  nop
                  lui         tp, 1007944
                  lui         tp, 959876
                  lui         s9, 706821
                  addi        t2, zero, 1238 #end riscv_int_numeric_corner_stream_3
3081:             auipc       sp, 625120
                  xor         s5, tp, ra
                  sra         s3, t0, ra
3084:             bge         s0, tp, 3098f
                  addi        ra, s6, 1992
                  srli        s1, a6, 7
                  srli        a5, s4, 2
3088:             sub         t2, t1, a3
                  bge         s3, s5, 3098f
                  blt         a4, zero, 3091f
3091:             addi        a4, s10, -1846
                  lui         a1, 350726
                  srl         t3, s0, s7
                  xori        sp, t1, 1665
                  andi        s2, a0, -1467
                  srai        a7, s11, 28
                  srli        a2, t6, 26
3098:             xor         a7, t0, t4
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
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
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
.align 2
mtvec_handler:    
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
                  csrr x8, 0x300 # MSTATUS
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 31
                  bne x8, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x20, 0xb # ECALL_MMODE
                  beq x8, x20, ecall_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x8, _start
                  sw x0, 0(x8)
                  sw x1, 4(x8)
                  sw x2, 8(x8)
                  sw x3, 12(x8)
                  sw x4, 16(x8)
                  sw x5, 20(x8)
                  sw x6, 24(x8)
                  sw x7, 28(x8)
                  sw x8, 32(x8)
                  sw x9, 36(x8)
                  sw x10, 40(x8)
                  sw x11, 44(x8)
                  sw x12, 48(x8)
                  sw x13, 52(x8)
                  sw x14, 56(x8)
                  sw x15, 60(x8)
                  sw x16, 64(x8)
                  sw x17, 68(x8)
                  sw x18, 72(x8)
                  sw x19, 76(x8)
                  sw x20, 80(x8)
                  sw x21, 84(x8)
                  sw x22, 88(x8)
                  sw x23, 92(x8)
                  sw x24, 96(x8)
                  sw x25, 100(x8)
                  sw x26, 104(x8)
                  sw x27, 108(x8)
                  sw x28, 112(x8)
                  sw x29, 116(x8)
                  sw x30, 120(x8)
                  sw x31, 124(x8)
                  la x31, write_tohost
                  jalr x0, x31, 0

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
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
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
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
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
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
