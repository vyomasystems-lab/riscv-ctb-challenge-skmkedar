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
                  li x15, 0x1a00
                  csrw 0x300, x15 # MSTATUS
                  li x15, 0x0
                  csrw 0x304, x15 # MIE
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x66f888eb
                  li x2, 0x9efcaeaa
                  li x3, 0x0
                  li x4, 0xc65a8939
                  li x5, 0xe
                  li x6, 0xff1696bc
                  li x7, 0xf4204271
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x5afbf652
                  li x11, 0x80000000
                  li x12, 0x695de5bc
                  li x13, 0x15269da5
                  li x15, 0x2
                  li x16, 0xfafeab06
                  li x17, 0x0
                  li x18, 0x4a724a70
                  li x19, 0x0
                  li x20, 0xa
                  li x21, 0xf484cd0e
                  li x22, 0x1
                  li x23, 0x2
                  li x24, 0x0
                  li x25, 0x9
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0xc7b3a2b2
                  li x29, 0xf47452a5
                  li x31, 0x6
                  la x14, user_stack_end
main:             li         t4, 0x0 #start riscv_int_numeric_corner_stream_4
                  li         a2, 0x0
                  li         s0, 0x32c54b89
                  li         t3, 0x1
                  li         t1, 0x0
                  li         s11, 0x0
                  li         a7, 0x0
                  li         s10, 0x4537ec63
                  li         a0, 0x0
                  li         s3, 0x0
                  add         gp, tp, s8
                  lui         t4, 367133
                  addi        zero, s0, -1379
                  add         s10, ra, t2
                  add         a1, s11, s4
                  addi        s11, a5, 624
                  lui         a0, 910938
                  lui         s9, 331707
                  addi        t3, s5, 258
                  add         s4, gp, s0
                  sub         t3, a4, a4
                  lui         a3, 63786
                  sub         s9, s6, t6
                  sub         s4, s1, s11
                  nop
                  nop
                  add         s9, a3, a2
                  sub         s11, s11, a4
                  sub         gp, a3, a2
                  lui         t0, 685131
                  nop
                  lui         ra, 36958
                  lui         zero, 362925 #end riscv_int_numeric_corner_stream_4
                  li         s7, 0x0 #start riscv_int_numeric_corner_stream_3
                  li         t4, 0x0
                  li         t3, 0x0
                  li         a1, 0x1e716078
                  li         s11, 0x52705db2
                  li         s10, 0x0
                  li         a7, 0x1
                  li         a0, 0x0
                  li         tp, 0x0
                  li         s9, 0x0
                  sub         a0, t6, a4
                  sub         s2, s5, tp
                  addi        s5, a0, -1098
                  nop
                  sub         s10, s7, s2
                  add         s6, s3, s3
                  sub         gp, a1, a6
                  add         zero, s2, s1
                  addi        a1, t3, 1743
                  addi        s9, t1, 1405
                  sub         zero, t4, s11
                  sub         t1, a4, t3
                  nop
                  lui         s1, 1047199
                  add         t2, zero, s4
                  add         s2, tp, s9
                  sub         ra, a3, zero
                  add         s9, zero, zero #end riscv_int_numeric_corner_stream_3
                  li         tp, 0x1 #start riscv_int_numeric_corner_stream_2
                  li         t3, 0x6c10f575
                  li         s7, 0x0
                  li         s10, 0x573ace71
                  li         t4, 0x360f6eeb
                  li         s8, 0x0
                  li         s11, 0x1
                  li         a1, 0x0
                  li         s9, 0x0
                  li         s4, 0x0
                  add         a1, t2, t6
                  lui         zero, 858742
                  sub         zero, a0, s10
                  nop
                  sub         s6, zero, t6
                  addi        s0, t0, -1604
                  lui         ra, 892509
                  add         s2, s2, s10
                  lui         s0, 777250
                  nop
                  lui         a0, 777301
                  addi        s1, s9, 2029
                  lui         t4, 28318
                  sub         s4, a7, a6
                  nop
                  lui         zero, 246976
                  nop
                  nop
                  lui         s3, 945791
                  lui         a7, 759310
                  add         a1, s10, a4
                  lui         s4, 938436
                  add         t0, a1, zero
                  sub         zero, t4, tp #end riscv_int_numeric_corner_stream_2
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_7
                  li         t3, 0x1
                  li         sp, 0x7bd84359
                  li         s11, 0x0
                  li         ra, 0x0
                  li         s9, 0x1
                  li         s8, 0x40f1b7b9
                  li         a1, 0x0
                  li         s3, 0x0
                  li         a0, 0x1
                  lui         s11, 57273
                  sub         t0, s7, t5
                  sub         sp, s3, t0
                  nop
                  add         zero, t6, t2
                  sub         s2, gp, sp
                  sub         s11, a0, a1
                  nop
                  nop
                  lui         t0, 996925
                  lui         s8, 244521
                  add         s5, a7, t5
                  add         a5, s6, zero
                  addi        a6, s11, 212
                  addi        zero, s9, 791
                  sub         t3, tp, s0
                  addi        s2, ra, 163
                  nop
                  addi        a7, t5, 944
                  addi        s9, a6, 1840 #end riscv_int_numeric_corner_stream_7
                  sll         s5, a3, a6
                  lui         s1, 855099
                  sub         a0, sp, a7
                  and         zero, tp, sp
                  bltu        s1, a3, 5f
5:                nop
                  bne         t0, t6, 21f
                  slli        a1, a4, 24
                  sll         a7, ra, t4
                  sub         s7, s2, s10
                  sll         s11, zero, t3
                  bne         s5, t6, 30f
                  bgeu        ra, s3, 20f
                  bge         t2, s3, 24f
                  sll         a2, a1, zero
                  bne         s6, s3, 19f
                  slli        a1, gp, 26
                  sltu        s9, a4, a0
                  addi        s6, s7, -675
19:               slti        s6, t6, 1273
20:               andi        s2, s4, -111
21:               beq         s8, sp, 41f
                  bltu        t1, t4, 24f
                  or          sp, t5, t0
24:               xori        s7, s0, -1440
                  slt         t3, s8, t2
                  beq         tp, s8, 32f
                  srli        s5, a3, 27
                  slti        s0, t4, -1
                  sub         a1, s10, s8
30:               nop
                  slli        s1, s5, 4
32:               bltu        s4, s5, 43f
                  andi        a0, t5, -720
                  addi        a0, s2, 802
                  slli        t3, t6, 25
                  beq         s8, t5, 42f
                  nop
                  blt         t4, t1, 58f
                  xori        s8, tp, 1063
                  xor         a2, t1, a7
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_0
                  li         t3, 0x0
                  li         s10, 0x1
                  li         tp, 0x4f2d9501
                  li         s11, 0x0
                  li         s2, 0x0
                  li         s1, 0x0
                  li         s3, 0x0
                  li         s8, 0x0
                  li         sp, 0x1
                  addi        tp, s6, -540
                  sub         tp, sp, t5
                  sub         zero, s4, t3
                  add         t1, s6, a6
                  nop
                  addi        a2, s7, 1914
                  lui         s5, 768911
                  addi        a2, t5, -1470
                  addi        s5, t1, 929
                  sub         a0, t5, s5
                  lui         s1, 726689
                  addi        a1, s6, -51
                  nop
                  nop
                  add         s2, ra, t4
                  nop
                  lui         s4, 80095
                  nop
                  nop
                  nop
                  nop
                  sub         t3, t6, t2
                  add         s5, s4, a4
                  addi        s9, a2, -1438
                  addi        s0, s1, 1041
                  add         sp, a7, a2
                  addi        zero, gp, -1969
                  sub         a1, a0, gp
                  addi        tp, t6, 1777 #end riscv_int_numeric_corner_stream_0
41:               slti        sp, a4, -537
42:               srli        ra, s10, 27
43:               beq         a6, s5, 54f
                  or          zero, s9, sp
                  andi        zero, a4, -1404
                  bge         a4, gp, 64f
                  ori         s5, t6, -603
                  lui         a7, 402377
                  lui         s0, 538535
                  slt         t1, t4, zero
                  add         zero, ra, t2
                  beq         t4, tp, 55f
                  sltiu       s1, s5, 2029
54:               xori        ra, s8, -1574
55:               auipc       tp, 580029
                  bgeu        s1, sp, 60f
                  auipc       s2, 213113
58:               xori        s7, t3, 253
                  blt         zero, a3, 77f
60:               sltu        zero, a3, s4
                  srl         a5, s1, t3
                  xor         t2, gp, t6
                  nop
64:               srl         sp, zero, t1
                  sltu        s6, ra, s0
                  xor         s9, a6, ra
                  xori        t2, s8, 990
                  srl         tp, tp, a3
                  sltu        a2, a7, ra
                  or          s0, s2, tp
                  add         gp, s0, t3
                  sltu        a2, t3, s3
                  ori         a2, t2, -1711
                  srli        s5, t3, 4
                  slli        s10, s8, 7
                  srli        s0, s7, 20
77:               srai        t1, sp, 27
                  bge         a7, a1, 92f
                  bltu        s4, a7, 89f
                  bgeu        t4, s1, 86f
                  and         t2, s9, a1
                  andi        s7, s5, -309
                  xori        a2, a7, 302
                  bne         s10, s11, 86f
                  andi        s6, t2, 1636
86:               sub         a0, t6, a3
                  blt         s8, gp, 89f
                  slti        s7, a6, 1415
89:               beq         s3, t2, 107f
                  slti        gp, a7, -86
                  ori         tp, s4, 498
92:               sll         zero, a4, a1
                  srai        a6, a3, 27
                  bge         s1, a2, 105f
                  sll         t1, s11, t0
                  addi        zero, s5, -13
                  srai        zero, s10, 7
                  beq         a1, s6, 105f
                  bne         s8, zero, 101f
                  srli        a0, t0, 29
101:              sltu        a3, s0, s1
                  and         s3, s10, s3
                  slti        t1, a3, -719
                  sll         zero, s0, t4
105:              nop
                  add         s9, s10, a5
107:              slli        zero, ra, 5
                  slt         t4, a4, s6
                  bltu        s1, t6, 118f
                  lui         tp, 899703
                  srai        s8, s6, 5
                  sra         t3, a1, t5
                  bgeu        s5, s3, 131f
                  auipc       zero, 556186
                  sltiu       zero, t3, -1589
                  sltu        s4, s9, s6
                  addi        s8, a7, 1432
118:              blt         t2, t6, 126f
                  srli        zero, s5, 22
                  sra         t2, t6, a5
                  sra         zero, a0, s5
                  or          s7, s5, a1
                  or          zero, gp, a7
                  slti        s11, s7, -1056
                  sll         a5, a0, gp
126:              sub         s5, s3, a2
                  slli        s9, t4, 20
                  bgeu        s2, tp, 135f
                  slli        a5, s5, 26
                  bge         a1, zero, 136f
131:              bge         tp, s4, 138f
                  lui         s9, 1025902
                  xori        tp, t2, 1139
                  bltu        a2, t1, 142f
135:              bgeu        s3, t2, 146f
136:              bne         s11, a5, 147f
                  and         s1, a7, sp
138:              sub         s3, s5, ra
                  blt         t3, gp, 145f
                  add         gp, sp, t2
                  sra         zero, t2, tp
142:              blt         s2, s10, 162f
                  andi        t2, s5, -423
                  bne         a7, tp, 162f
145:              add         t2, s6, t1
146:              sltiu       t2, t3, 1758
147:              lui         s0, 580585
                  srl         s10, s11, t5
                  andi        t1, s9, 1414
                  sltiu       zero, s9, 1194
                  ori         s6, t4, -938
                  or          s2, t4, s11
                  or          t0, zero, t1
                  sub         t0, s6, s2
                  xori        a3, t1, -1170
                  auipc       s8, 180967
                  sub         s8, sp, a3
                  ori         ra, t2, 1833
                  sltiu       a0, tp, -835
                  sltiu       a2, a1, 741
                  bge         t4, s4, 165f
162:              slli        a6, t5, 9
                  slti        a5, s1, -635
                  bgeu        s4, s0, 166f
165:              slt         a6, s5, s1
166:              addi        s3, tp, -250
                  ori         s2, s0, 1968
                  xori        s8, s0, 407
                  slli        s0, a3, 18
                  bltu        s6, s6, 181f
                  bgeu        s2, s4, 190f
                  sra         t1, s9, sp
                  srl         s5, a7, a3
                  andi        a1, s5, 607
                  beq         s11, a4, 184f
                  blt         gp, ra, 182f
                  slli        zero, a1, 21
                  add         s8, s7, s5
                  sltu        s10, s1, t1
                  xori        t2, s6, -351
181:              blt         t5, s0, 196f
182:              bge         a7, sp, 200f
                  andi        t4, s8, -1790
184:              sll         s8, a4, t4
                  auipc       s8, 91254
                  ori         tp, t1, -841
                  add         s1, s5, s0
                  and         s1, a5, t4
                  srli        a1, s6, 9
190:              bltu        t4, t3, 198f
                  auipc       a0, 663790
                  bge         t1, s0, 194f
                  sltu        s10, gp, t1
194:              bgeu        a3, t4, 196f
                  nop
196:              blt         a0, s9, 210f
                  add         s8, s4, a7
198:              or          s7, s9, t6
                  srai        t0, s0, 1
200:              lui         s5, 924293
                  add         s8, s2, s0
                  srli        t0, s9, 13
                  add         zero, s1, s7
                  addi        s6, sp, -1702
                  bgeu        a2, t3, 215f
                  sll         s4, s4, gp
                  sltu        t1, a0, a2
                  slti        zero, t5, 134
                  srli        s5, a7, 3
210:              slt         t4, t3, t5
                  bgeu        s4, s6, 212f
212:              add         zero, s0, a4
                  bgeu        s6, s6, 215f
                  addi        s11, s3, -615
215:              or          s3, a4, a7
                  bge         s8, s2, 220f
                  bge         s10, s5, 224f
                  sll         s5, t5, t5
                  sltiu       s6, a3, 1937
220:              auipc       t0, 250108
                  or          s0, t4, zero
                  add         a3, t4, s4
                  andi        t1, s5, 741
224:              sub         s2, s5, gp
                  sll         s11, zero, t4
                  beq         s3, t4, 244f
                  auipc       a5, 792068
                  sra         t0, zero, t4
                  nop
                  sltu        s0, s6, s2
                  blt         a0, a7, 242f
                  xor         sp, t3, s0
                  bge         a6, t2, 253f
                  add         zero, a6, s11
                  nop
                  xor         a1, s3, a7
                  blt         a1, s1, 255f
                  srli        tp, s9, 2
                  blt         s1, tp, 242f
                  slti        a2, s8, -104
                  auipc       s4, 119260
242:              ori         s1, s10, 1182
                  xori        s4, t4, 685
244:              sltu        t3, s7, t5
                  andi        t3, a3, -642
                  srl         s7, a2, a5
                  nop
                  slli        s4, t1, 16
                  bgeu        s5, s4, 269f
                  srai        t0, s5, 31
                  blt         a3, a6, 253f
                  andi        a2, s2, -794
253:              srl         s6, t5, a2
                  ori         a6, s0, 579
255:              and         gp, t2, t4
                  bltu        t0, a3, 258f
                  srli        sp, t2, 2
258:              bne         a5, a2, 268f
                  auipc       s6, 282714
                  nop
                  or          zero, s8, s1
                  srli        zero, s11, 18
                  sll         tp, zero, s1
                  sltu        s9, a1, s5
                  ori         tp, a4, -108
                  or          s1, zero, s2
                  srli        t0, a4, 18
268:              xor         s5, a0, a3
269:              bge         a3, tp, 280f
                  lui         zero, 410651
                  lui         sp, 406403
                  beq         a4, a0, 279f
                  or          zero, a4, s5
                  slti        t0, a2, -1429
                  ori         s11, t3, -1127
                  sltu        zero, t0, t3
                  sub         a5, s7, s10
                  slti        a0, s9, -1741
279:              add         zero, t4, a2
280:              srai        a2, t4, 4
                  blt         s3, a3, 295f
                  sra         zero, s2, ra
                  nop
                  addi        a6, a1, 1956
                  srl         zero, t2, s3
                  xor         zero, s10, s10
                  bge         zero, t0, 305f
                  bgeu        a1, tp, 289f
289:              sltiu       s6, s3, 1693
                  blt         gp, s10, 292f
                  auipc       s7, 66751
292:              ori         s9, a2, -1236
                  srl         zero, t5, s6
                  srl         s0, t4, s0
295:              sub         a3, s3, s7
                  beq         zero, a4, 305f
                  auipc       zero, 802847
                  srai        s0, tp, 11
                  ori         s2, s10, -1204
                  xori        a2, s5, -2046
                  bltu        t4, a0, 319f
                  slli        t1, zero, 1
                  slti        tp, a5, -847
                  lui         s7, 167380
305:              sub         t2, tp, s10
                  xori        t2, s4, -886
                  add         s10, zero, a0
                  bltu        s7, s11, 314f
                  srai        s11, s1, 9
                  sll         gp, t5, s11
                  nop
                  andi        s5, t1, 2012
                  nop
314:              andi        ra, s8, -1203
                  sltu        a6, ra, a3
                  auipc       a2, 316445
                  sra         gp, a1, ra
                  xori        t4, a2, -1766
319:              and         tp, t6, a7
                  slt         s9, a4, s4
                  or          s10, a6, sp
                  xori        t2, t5, -1908
                  sltu        s4, a7, t6
                  bgeu        t4, s3, 335f
                  nop
                  xori        sp, ra, -106
                  srai        s7, sp, 5
                  bne         t5, s9, 336f
                  or          tp, a1, a2
                  bltu        zero, s3, 334f
                  bne         a0, s4, 334f
                  beq         t4, a5, 338f
                  bltu        a2, t4, 351f
334:              xori        s2, s2, 1675
335:              blt         s1, t6, 350f
336:              bne         s11, s4, 338f
                  slt         a5, a4, t4
338:              slli        ra, s5, 3
                  bne         t0, a1, 350f
                  slli        zero, a5, 29
                  nop
                  bne         a7, t5, 361f
                  andi        zero, a6, 183
                  xori        t4, s11, -1373
                  bltu        s4, a1, 352f
                  ori         a2, zero, -651
                  auipc       zero, 734753
                  ori         t0, t2, 1136
                  auipc       a5, 110639
350:              sub         a7, a2, s1
351:              or          t4, t6, tp
352:              srl         s5, a7, a7
                  addi        s0, s9, -1643
                  sra         t4, s1, s9
                  slt         s11, s2, t0
                  slt         a6, t6, a0
                  bgeu        s0, s2, 375f
                  auipc       a7, 486886
                  slti        s10, t5, -76
                  bge         s4, t4, 380f
361:              or          s8, s5, t3
                  bge         zero, s9, 370f
                  addi        a0, s3, 1498
                  slt         s9, s1, t2
                  bge         tp, t6, 371f
                  add         s5, s7, s5
                  bge         a0, t3, 371f
                  sltiu       a5, t5, -1743
                  auipc       a7, 1009223
370:              slt         s8, s2, s0
371:              bge         t0, t2, 382f
                  bltu        s5, s5, 378f
                  slti        t3, t0, -245
                  ori         sp, t1, 1494
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_8
                  li         s11, 0x1
                  li         s10, 0x0
                  li         s8, 0x1
                  li         s9, 0x0
                  li         s5, 0x48edf756
                  li         s3, 0x3aeb4389
                  li         sp, 0x0
                  li         t3, 0x1600c153
                  li         s6, 0x0
                  nop
                  add         a5, t5, t4
                  add         s11, s2, a7
                  lui         zero, 6192
                  sub         a3, a3, s7
                  addi        s6, s11, 267
                  nop
                  add         s10, s8, a4
                  addi        s5, a1, -780
                  add         a5, s8, s5
                  lui         ra, 658030
                  nop
                  addi        s3, a6, 112
                  nop
                  nop
                  nop
                  nop
                  sub         a5, s5, s1
                  addi        gp, zero, -906 #end riscv_int_numeric_corner_stream_8
375:              bltu        t6, s6, 376f
376:              ori         t2, s3, -1950
                  sll         s1, s0, s5
378:              auipc       s5, 24018
                  bge         a3, t0, 381f
380:              slli        s9, t6, 4
381:              auipc       s8, 267925
382:              bne         t2, s9, 390f
                  bgeu        t0, a6, 385f
                  bltu        a0, s3, 388f
385:              addi        a3, t4, -515
                  bge         s5, a7, 406f
                  addi        a5, s7, 694
388:              auipc       s3, 826225
                  sll         a1, s8, s0
390:              beq         s7, s3, 401f
                  sltiu       s6, a2, 222
                  sra         zero, s9, s4
                  srl         t4, t1, a1
                  srli        t4, s8, 10
                  bge         s2, s2, 402f
                  srai        s11, s11, 2
                  slt         s1, t4, a7
                  ori         a6, a5, -497
                  andi        ra, gp, 1473
                  sltu        zero, t3, s8
401:              sltiu       s3, s7, -345
402:              beq         s2, tp, 404f
                  srai        a7, s5, 15
404:              sll         t4, a6, s8
                  auipc       gp, 630471
406:              blt         s7, s3, 409f
                  add         s1, s9, s4
                  auipc       a1, 1015861
409:              lui         sp, 914221
                  xori        a6, a7, 861
                  auipc       zero, 458394
                  lui         zero, 57032
                  blt         t2, a1, 417f
                  slti        t1, s7, -160
                  sltu        t0, t3, a7
                  lui         s6, 230550
417:              bne         s5, a4, 428f
                  or          t0, t1, t0
                  bgeu        a0, s2, 437f
                  xor         gp, s11, t6
                  nop
                  andi        zero, a0, -410
                  srli        s8, s6, 22
                  srli        zero, s11, 23
                  add         a6, t3, sp
                  sltu        a2, s4, s11
                  addi        a6, s3, -1514
428:              bge         a5, zero, 447f
                  add         zero, s9, a7
                  sra         a3, sp, t5
                  sra         a0, s4, t3
                  sltiu       s2, s1, -284
                  slti        a3, tp, 516
                  xori        s10, t5, -1056
                  sll         s7, a5, s7
                  bne         tp, s3, 450f
437:              or          s6, s5, a1
                  sll         s10, s4, a5
                  bne         t4, s3, 457f
                  ori         s10, a2, -503
                  sltiu       s9, t3, 729
                  sra         t2, t0, a5
                  slti        s4, t0, 659
                  sltu        s1, a0, s0
                  sltu        s6, s0, zero
                  beq         tp, t2, 452f
447:              ori         t3, s10, 208
                  slt         t2, gp, tp
                  blt         a6, a6, 458f
450:              bge         t3, zero, 465f
                  andi        s9, tp, 671
452:              srai        zero, a5, 1
                  srli        s10, ra, 22
                  slt         a7, s10, sp
                  blt         s0, a5, 465f
                  bge         ra, a3, 474f
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_5
                  li         t3, 0x0
                  li         a2, 0x0
                  li         s5, 0x0
                  li         s11, 0x0
                  li         s10, 0x0
                  li         s1, 0x33e3523e
                  li         t0, 0x13e56062
                  li         a5, 0x2fd01926
                  li         a3, 0x4109b47a
                  add         a3, a2, t5
                  sub         t0, t3, s3
                  lui         s2, 838014
                  sub         s4, a1, gp
                  nop
                  sub         t4, a3, s1
                  lui         t0, 601959
                  sub         gp, s9, s11
                  add         sp, s7, s10
                  sub         s2, s4, s6
                  lui         s7, 165818
                  lui         s0, 540889
                  sub         a2, s6, s5
                  sub         s4, s8, t1
                  nop
                  addi        zero, sp, 171
                  addi        s9, s7, -1810
                  lui         s6, 152931
                  addi        s7, s7, 313
                  lui         t3, 843488
                  nop
                  sub         s8, t3, s7
                  add         s10, a0, a2
                  sub         s11, ra, zero
                  nop
                  add         t1, s7, a4
                  lui         t4, 991536
                  add         t2, s6, a3
                  nop
                  lui         s7, 942182 #end riscv_int_numeric_corner_stream_5
457:              sra         s4, t6, s10
458:              beq         t4, a3, 465f
                  sll         s2, t0, t5
                  bge         t0, a3, 480f
                  addi        t0, a2, -1714
                  bge         t6, tp, 464f
                  bltu        s1, s9, 469f
464:              sll         s9, t2, a6
465:              bgeu        zero, s10, 473f
                  srai        a5, s4, 4
                  nop
                  slli        s6, s5, 1
469:              bltu        t2, sp, 480f
                  sra         s8, a7, s8
                  addi        s9, s7, -717
                  sll         zero, t6, gp
473:              and         zero, t2, s6
474:              sra         s10, t1, a6
                  bltu        s5, a3, 486f
                  sltiu       s6, s4, 188
                  xori        zero, s4, 1650
                  addi        s4, sp, 657
                  srli        s7, t0, 28
480:              auipc       gp, 447282
                  addi        ra, a3, -1319
                  xori        zero, t6, -1003
                  sltu        ra, s1, t0
                  andi        s11, sp, 308
                  add         a1, t2, a1
486:              lui         s10, 741645
                  sltiu       a7, s7, -50
                  xor         t4, s0, s10
                  nop
                  or          zero, a7, a5
                  ori         s6, a1, 13
                  lui         a2, 555474
                  slli        a0, s6, 23
                  bge         s8, s3, 512f
                  lui         a7, 920162
                  blt         a1, s7, 507f
                  xor         s4, a1, s10
                  beq         s7, s4, 500f
                  xori        t3, ra, 409
500:              ori         a0, a0, -607
                  sltu        zero, sp, a0
                  sub         a3, ra, a4
                  bge         gp, s6, 521f
                  nop
                  auipc       tp, 191249
                  xori        zero, a4, 1797
507:              srai        a2, s6, 14
                  slli        s0, zero, 9
                  bge         t6, a7, 527f
                  sltu        s11, s8, s6
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_1
                  li         s6, 0x0
                  li         t3, 0x0
                  li         s4, 0x0
                  li         s11, 0x1
                  li         s9, 0x1
                  li         a1, 0x65262d16
                  li         s10, 0x31adfd40
                  li         t1, 0x0
                  li         s2, 0x0
                  lui         ra, 639916
                  nop
                  addi        zero, s7, 1425
                  add         s9, s5, t5
                  nop
                  add         zero, ra, ra
                  lui         ra, 886509
                  nop
                  lui         s7, 162589
                  nop
                  add         s3, s3, tp
                  lui         t3, 380707
                  addi        s10, s8, 1760
                  add         a5, t4, ra
                  lui         s10, 778175
                  addi        t4, t6, -164
                  sub         a6, s0, t1
                  sub         gp, s11, s5
                  nop
                  lui         s7, 719195
                  nop #end riscv_int_numeric_corner_stream_1
                  addi        tp, a0, 1331
512:              add         s8, s5, t2
                  bltu        sp, s5, 524f
                  bge         a3, gp, 529f
                  slti        t1, zero, -1779
                  or          s4, s1, s8
                  blt         zero, t1, 524f
                  srli        s11, a3, 3
                  add         zero, tp, t3
                  nop
521:              sll         s6, a5, s2
                  lui         s10, 775406
                  sra         s0, s6, a7
524:              lui         a7, 352272
                  xor         s10, s8, s6
                  slt         zero, t4, s3
527:              srli        s6, sp, 16
                  sub         t1, a6, s11
529:              srli        s11, t0, 0
                  addi        s3, t0, -106
                  sub         s9, ra, zero
                  srl         a2, tp, t6
                  blt         t1, t3, 540f
                  auipc       sp, 86015
                  bltu        s4, ra, 539f
                  xor         s4, s3, a2
                  slt         gp, t5, gp
                  sub         a6, a3, t6
539:              addi        zero, s5, -822
540:              auipc       a2, 88365
                  bgeu        s4, a1, 560f
                  srai        s0, s0, 13
                  blt         t1, a7, 551f
                  addi        a3, a1, 122
                  sll         a1, t4, t4
                  bgeu        s9, a1, 552f
                  bne         a7, a3, 550f
                  slt         a2, ra, s11
                  srl         s11, s6, t5
550:              addi        s7, a6, 695
551:              lui         s9, 37019
552:              sra         s9, gp, s7
                  bge         t3, s10, 571f
                  sltu        a5, ra, s3
                  bltu        s6, zero, 566f
                  srli        t0, s7, 29
                  srai        s6, t6, 12
                  bne         a5, zero, 567f
                  addi        t4, t4, 1505
560:              sltu        a2, a3, a3
                  nop
                  and         s7, gp, t3
                  xori        s8, s9, 1109
                  srai        s4, s5, 16
                  bge         t6, s0, 567f
566:              ori         s0, s3, -1283
567:              sll         s1, a1, sp
                  beq         s9, a5, 570f
                  sub         a6, gp, t4
570:              xori        ra, s8, 1344
571:              ori         s10, gp, -1245
                  xori        s1, a3, -1279
                  sltu        a1, gp, a2
                  lui         s4, 281677
                  and         a2, a5, s0
                  ori         sp, s11, 1415
                  srl         s10, a1, s9
                  bne         t1, a3, 582f
                  srli        s4, ra, 6
                  sltu        s10, s9, a0
                  bgeu        t0, s3, 591f
582:              bgeu        s0, a3, 588f
                  and         t1, a4, zero
                  slti        zero, s8, 552
                  slti        sp, s8, -904
                  add         t3, t4, ra
                  blt         s4, t0, 601f
588:              nop
                  bne         s6, tp, 609f
                  add         gp, s2, zero
591:              bltu        t3, sp, 609f
                  slli        tp, s10, 23
                  srai        zero, t0, 30
                  ori         s9, gp, -1490
                  beq         s7, s4, 606f
                  xori        sp, s11, -1572
                  srai        a0, a1, 24
                  srl         s11, sp, a2
                  add         s3, t0, s3
                  blt         tp, s6, 620f
601:              add         s11, t6, s9
                  xor         s11, a3, gp
                  sra         a0, t4, t5
                  srai        s0, zero, 29
                  sltu        a6, s11, a4
606:              sltu        tp, a6, t0
                  sra         a1, s6, t6
                  xori        t0, t6, 1955
609:              bge         a3, s0, 611f
                  xor         s10, t1, tp
611:              addi        s6, s1, -1448
                  nop
                  add         s3, s10, zero
                  ori         a2, s4, 1094
                  sll         t1, a5, zero
                  or          a7, t6, s1
                  sltu        s1, s7, a1
                  andi        zero, a4, -980
                  bne         s0, s4, 620f
620:              sll         s11, s1, zero
                  xor         s8, s5, a5
                  addi        gp, t0, 870
                  slli        a6, s10, 19
                  blt         t4, a0, 630f
                  xori        t2, s8, -200
                  nop
                  bgeu        zero, a6, 635f
                  auipc       zero, 237828
                  or          s11, a3, a1
630:              nop
                  slt         s2, zero, t4
                  sra         a5, s6, t3
                  xor         a1, s1, s5
                  sltiu       t4, t0, 248
635:              sub         s6, gp, a7
                  xor         s9, s5, s4
                  xor         s5, sp, t0
                  bge         s1, s8, 639f
639:              andi        t3, s0, 1794
                  addi        t4, ra, -1019
                  bne         a6, gp, 661f
                  lui         t2, 976698
                  xor         s3, a7, s11
                  srli        gp, a1, 3
                  addi        a6, s0, -2045
                  xori        zero, s8, 1861
                  and         a1, a2, a7
                  xor         s2, a1, s5
                  auipc       gp, 423003
                  bgeu        t0, t6, 656f
                  xori        s5, a5, 1312
                  ori         s2, s4, -520
                  bgeu        t4, t4, 660f
                  slti        a5, t6, -1838
                  lui         sp, 762028
656:              xor         s0, ra, a5
                  add         a6, t2, t4
                  bgeu        gp, a5, 661f
                  add         a1, zero, t5
660:              beq         t5, t2, 671f
661:              bne         tp, t5, 665f
                  slli        a5, gp, 5
                  sltu        a7, s5, s1
                  sub         s0, a6, s6
665:              sltu        tp, zero, a2
                  bgeu        a1, t4, 684f
                  ori         s10, a2, -1498
                  bne         a7, a4, 675f
                  slli        s2, s1, 1
                  slt         s11, s0, a7
671:              add         s2, s10, t6
                  add         t2, s7, t6
                  slt         s0, t0, sp
                  bge         t1, a0, 692f
675:              beq         s7, s10, 677f
                  sltu        s1, t1, t1
677:              bge         t3, a0, 688f
                  xor         t3, a0, tp
                  or          t2, s9, a4
                  xor         s6, s5, t6
                  nop
                  and         s2, s4, t4
                  sltiu       zero, a5, 1196
684:              xori        t3, zero, 850
                  addi        a2, ra, 379
                  or          a3, a3, s1
                  xori        t3, sp, -1751
688:              addi        a5, t1, -586
                  sltiu       zero, t1, -1474
                  slt         sp, t2, s2
                  lui         s4, 817495
692:              sll         zero, a0, a2
                  sub         gp, t6, a2
                  sltu        s3, s6, a2
                  blt         t2, s1, 703f
                  auipc       tp, 596030
                  slli        zero, t1, 7
                  blt         a7, a4, 716f
                  sltu        t4, tp, a7
                  sll         tp, t0, s4
                  bltu        t1, s4, 712f
                  bltu        a7, a7, 717f
703:              add         s10, t1, s3
                  sra         s8, a6, t1
                  nop
                  slti        s3, t2, 28
                  addi        zero, a3, -877
                  lui         a6, 779514
                  ori         s11, s10, 1546
                  slli        s1, a3, 5
                  srai        s11, s11, 6
712:              add         s1, s3, t6
                  srl         zero, s8, a7
                  sll         a1, a4, a7
                  addi        a1, t1, 1855
716:              nop
717:              add         a2, zero, s11
                  sub         s1, gp, t4
                  addi        s0, a6, 2018
                  xori        a3, s2, 1693
                  bne         s6, a3, 731f
                  xor         s7, s0, a6
                  sub         t0, s0, a4
                  sra         a3, t4, s6
                  add         s5, a6, a1
                  bne         a6, a7, 735f
                  beq         t2, s0, 733f
                  slti        s4, s0, 1712
                  and         t1, s1, t1
                  sltu        a6, s11, s5
731:              blt         t0, a5, 745f
                  auipc       t0, 612183
733:              lui         s10, 802628
                  blt         s8, a5, 736f
735:              bltu        zero, tp, 739f
736:              andi        t2, s11, 1001
                  beq         s10, a7, 757f
                  srai        s4, s0, 29
739:              sltu        a6, s3, t6
                  sltiu       a6, a5, -1321
                  srli        a5, s5, 1
                  ori         ra, s1, -1541
                  beq         a3, a1, 754f
                  bne         zero, a6, 752f
745:              slti        s2, a0, -1800
                  bge         gp, gp, 765f
                  srai        a1, gp, 31
                  srai        s7, ra, 24
                  sub         ra, s4, ra
                  sltu        s2, sp, t6
                  xori        s8, s7, 1000
752:              addi        a3, s0, -1169
                  srli        s9, t1, 7
754:              beq         a6, s8, 756f
                  sll         s2, s8, s0
756:              srl         a0, t5, a5
757:              bne         a0, s7, 759f
                  slti        t1, zero, -1385
759:              xor         s1, s2, ra
                  or          s4, a2, tp
                  xori        s7, s0, -380
                  srl         s6, s10, s5
                  ori         a7, a7, 1504
                  sra         gp, a1, s0
765:              sll         a0, a0, zero
                  slt         s4, t6, t3
                  bgeu        s4, a0, 785f
                  lui         s8, 169331
                  sltiu       t3, t6, 1248
                  xori        a1, a1, 448
                  bgeu        a2, zero, 777f
                  add         a6, a1, s5
                  beq         t6, t5, 775f
                  andi        s5, t0, 1278
775:              or          a0, t5, s1
                  bge         a0, gp, 790f
777:              bltu        a4, a7, 779f
                  ori         s3, s9, -950
779:              sltiu       s3, s9, 1836
                  slti        s1, t6, -1194
                  srai        a1, t6, 30
                  srl         a5, s1, ra
                  and         zero, s1, s4
                  sra         sp, s3, s0
785:              srai        t4, a3, 9
                  or          s7, t6, s2
                  bgeu        s9, s4, 795f
                  sltiu       t3, t3, 341
                  bltu        s7, s9, 796f
790:              andi        t3, t2, 593
                  sltiu       s4, s8, -27
                  slli        t3, a0, 11
                  ori         ra, a7, -1991
                  bge         s6, a5, 814f
795:              srai        a7, a5, 11
796:              blt         s6, a1, 814f
                  sub         zero, s3, s11
                  slt         zero, a2, a0
                  bge         a6, t3, 817f
                  lui         a3, 176782
                  srai        a0, a0, 24
                  nop
                  xori        t0, s11, 382
                  sub         s8, t5, t3
                  addi        s6, s8, -487
                  srl         s8, sp, t2
                  sub         gp, a0, t2
                  srl         t2, t1, ra
                  slti        s1, s9, -1077
                  srl         t4, s10, t3
                  add         a3, t3, gp
                  sub         s8, s7, t4
                  ori         sp, t6, -2018
814:              sltu        s1, s6, s10
                  nop
                  bgeu        a2, a5, 831f
817:              bge         sp, t4, 819f
                  slti        t1, t5, -1982
819:              bne         gp, a3, 830f
                  sltu        s1, a6, s11
                  bne         a6, s6, 832f
                  sub         s1, t4, s2
                  blt         gp, s9, 834f
                  sub         t4, s5, t3
                  andi        gp, s0, 693
                  xori        t0, a2, 212
                  ori         s10, sp, -293
                  sra         a2, a7, a7
                  andi        s9, gp, 1951
830:              bltu        tp, sp, 832f
831:              beq         a1, s9, 837f
832:              sra         s11, zero, s8
                  and         a0, a7, s1
834:              ori         gp, zero, 1727
                  lui         t0, 168697
                  beq         t5, a6, 840f
837:              and         a3, a5, sp
                  ori         gp, t5, -450
                  xori        t4, s2, 743
840:              srl         zero, tp, s1
                  blt         ra, s10, 861f
                  lui         t1, 537349
                  bltu        a5, t2, 861f
                  and         tp, s6, t2
                  bgeu        a4, a0, 846f
846:              nop
                  sub         ra, s8, tp
                  addi        a0, s10, -357
                  bne         zero, t4, 852f
                  srai        t0, s7, 17
                  slt         t1, a2, s3
852:              bltu        s8, a4, 863f
                  bge         ra, t0, 857f
                  nop
                  srli        zero, a4, 8
                  blt         a2, s1, 875f
857:              sltiu       s9, t4, 1592
                  blt         s7, s6, 876f
                  sltu        s4, t0, s11
                  srl         a3, s5, t3
861:              xor         a3, s6, a2
                  srl         s3, s4, t4
863:              blt         s11, a3, 870f
                  blt         s9, sp, 870f
                  lui         s4, 820973
                  bne         s8, s11, 875f
                  slt         a1, sp, a7
                  bltu        t2, a1, 874f
                  and         a2, gp, t4
870:              bne         t5, s4, 878f
                  and         a6, tp, a3
                  add         s1, a5, s5
                  add         a6, a0, s1
874:              sub         zero, s0, s2
875:              xori        zero, s4, 1661
876:              sltu        s9, a6, s1
                  slli        s2, s7, 27
878:              slt         s11, s7, a4
                  bne         zero, zero, 889f
                  ori         t1, a0, 1345
                  slli        a0, t3, 16
                  xor         sp, s8, gp
                  sll         s2, s2, a3
                  ori         s4, s5, -1464
                  blt         s2, t3, 889f
                  blt         s5, t1, 888f
                  slli        t4, s3, 31
888:              andi        zero, t3, -1490
889:              srli        s1, a6, 10
                  blt         gp, a0, 901f
                  lui         s4, 348074
                  sub         a1, gp, gp
                  sll         a6, ra, s3
                  add         tp, t3, s0
                  add         a5, a3, s2
                  bne         ra, s0, 900f
                  srli        zero, t3, 9
                  add         s3, t0, tp
                  xori        s5, t4, 1351
900:              sll         s0, s10, a6
901:              auipc       s1, 107371
                  slt         a7, t3, t4
                  slli        a6, t6, 20
                  srai        t2, a0, 11
                  bne         a5, t1, 913f
                  bne         a3, s3, 924f
                  sltiu       sp, s7, -849
                  srli        s9, s0, 0
                  sra         t4, s8, a3
                  xori        s0, s9, -52
                  slli        a0, s8, 21
                  bgeu        s8, sp, 922f
913:              lui         zero, 375895
                  bltu        s7, s3, 932f
                  li         s5, 0x0 #start riscv_int_numeric_corner_stream_6
                  li         t4, 0x669b7bcb
                  li         t3, 0x1
                  li         s11, 0x0
                  li         s9, 0x0
                  li         s10, 0x1
                  li         a5, 0x1
                  li         a7, 0x0
                  li         s1, 0x0
                  li         s2, 0x1
                  lui         s11, 247094
                  sub         t2, s9, s3
                  addi        s10, t1, 888
                  addi        a7, sp, -1708
                  nop
                  sub         s5, a0, a6
                  add         ra, gp, s11
                  addi        a1, sp, -1273
                  lui         s6, 67649
                  addi        a7, t0, -577
                  addi        a3, s7, -1836
                  lui         gp, 817365
                  nop
                  addi        s7, t3, 1445
                  addi        ra, t1, 696
                  add         s8, t3, s11
                  lui         gp, 1033613
                  sub         t1, s7, s5
                  sub         s7, zero, t6
                  sub         s5, t6, a2
                  add         a3, a3, ra
                  add         a6, s6, s10
                  lui         a3, 149586
                  addi        a5, a1, 104
                  addi        a5, t1, -138
                  sub         s8, gp, t6
                  sub         a3, t1, s6
                  nop
                  lui         s4, 228081 #end riscv_int_numeric_corner_stream_6
                  xori        t4, gp, -800
                  slti        t0, s6, -1022
                  srl         zero, a2, t3
                  bne         s11, t3, 920f
                  slt         t1, sp, zero
920:              sra         t3, t1, t1
                  add         s8, a3, a6
922:              xori        s7, a5, 546
                  srli        gp, a7, 23
924:              xori        a5, a2, 363
                  srl         s5, a7, a6
                  and         zero, tp, a6
                  srai        t1, a0, 22
                  addi        zero, zero, -334
                  blt         s6, t5, 949f
                  srli        s3, gp, 11
                  slti        zero, a1, 883
932:              sltu        a3, t1, s2
                  add         s4, sp, t1
                  lui         s6, 825513
                  sub         s5, a4, sp
                  ori         a7, a4, 175
                  bltu        t5, t6, 944f
                  or          zero, s4, a5
                  auipc       a0, 574612
                  beq         s9, s4, 951f
                  sll         a0, a5, s2
                  xori        t1, s2, 1651
                  beq         a2, t0, 949f
944:              sltu        s1, a2, s3
                  sub         a7, s3, t2
                  srl         zero, t4, a6
                  sltiu       s3, a5, -266
                  xor         a2, a3, t4
949:              auipc       s9, 768384
                  or          t3, a0, t3
951:              slt         s2, s1, t2
                  sra         a7, s5, tp
                  srli        s2, s5, 16
                  add         s11, gp, s6
                  auipc       s5, 565025
                  and         t0, t0, s9
                  lui         s3, 216157
                  xori        a7, t4, -734
                  blt         s7, t2, 968f
                  xor         ra, ra, s7
                  add         t0, a5, t0
                  ori         zero, tp, 1139
                  sll         s8, t4, t5
                  ori         zero, gp, 217
                  sltiu       t2, s7, 1983
                  or          gp, a3, s9
                  and         sp, a5, s8
968:              sub         s11, a5, a4
                  sltu        ra, sp, tp
                  sll         zero, t4, a4
                  sltu        s11, a2, t3
                  sltu        s6, s9, t1
                  addi        t1, t3, -352
                  blt         tp, s9, 993f
                  xor         a3, t2, zero
                  auipc       a3, 47666
                  slt         t1, s11, s9
                  ori         s2, s0, -561
                  slli        a3, a4, 11
                  srli        s9, tp, 0
                  sltiu       s9, a1, -1647
                  bltu        s7, t1, 984f
                  slt         t3, s11, s3
984:              and         gp, a3, s9
                  or          a3, s2, t6
                  slli        s11, s10, 25
                  bgeu        a1, a6, 989f
                  bltu        a5, t0, 994f
989:              slt         zero, t4, s6
                  sll         gp, s11, a7
                  sra         a3, a0, s0
                  blt         a6, t5, 995f
993:              xori        s3, s0, 29
994:              xori        zero, t4, 403
995:              ori         s10, s2, -82
                  sltiu       s5, s0, 1832
                  and         s2, a0, t1
                  nop
                  beq         s1, t3, 1000f
1000:             sltu        s9, t5, t3
                  andi        a7, a6, 872
                  xor         a7, t5, a0
                  srai        s7, gp, 3
                  lui         s3, 535307
                  and         t1, gp, s6
                  or          s3, a4, t0
                  slt         s6, s3, ra
                  sltu        zero, a7, s6
                  bne         s10, s9, 1020f
                  auipc       s1, 768414
                  lui         a6, 551571
                  or          a5, a3, t5
                  lui         ra, 562568
                  bne         s5, s1, 1032f
                  add         zero, s11, tp
                  bltu        s6, s4, 1036f
                  bgeu        s6, sp, 1023f
                  sub         s5, t4, a7
                  xori        t4, a2, -1378
1020:             beq         a0, t0, 1028f
                  slt         zero, s11, s9
                  xori        ra, s10, -1674
1023:             sub         t1, a2, ra
                  xori        a0, s4, 1586
                  sub         zero, s4, s11
                  bge         zero, sp, 1041f
                  beq         s9, s2, 1041f
1028:             nop
                  sra         s3, t2, sp
                  slli        t1, t6, 14
                  slt         s3, a0, s1
1032:             nop
                  sll         a1, t4, t1
                  sltu        zero, s4, t1
                  or          a3, a6, a0
1036:             beq         a7, t1, 1043f
                  bltu        s10, s9, 1055f
                  sra         s10, a5, t1
                  bgeu        a3, a2, 1050f
                  auipc       a1, 103972
1041:             sltiu       a3, s0, -1201
                  slti        ra, a0, -1891
1043:             add         t2, a4, s5
                  srai        s10, s5, 15
                  and         s4, t4, a4
                  sub         zero, t0, t1
                  srli        s9, s7, 15
                  sltu        s5, s2, s10
                  auipc       zero, 431705
1050:             addi        a2, a0, -1310
                  srl         t4, a2, gp
                  bne         s5, t6, 1058f
                  sll         a7, t2, a4
                  bne         gp, s2, 1060f
1055:             srai        sp, s11, 24
                  xori        t4, t3, -420
                  bne         a2, s5, 1065f
1058:             andi        s8, t2, 420
                  sll         s11, a2, a4
1060:             slli        a0, gp, 4
                  lui         a6, 657724
                  bgeu        s6, sp, 1082f
                  bne         a5, a5, 1074f
                  srl         a1, s0, a2
1065:             bltu        a6, zero, 1067f
                  sll         s1, a3, a4
1067:             slli        s2, t2, 17
                  addi        s7, s8, 331
                  or          t1, a4, a5
                  blt         a7, t5, 1088f
                  xor         s9, a6, a6
                  bne         s3, s4, 1083f
                  andi        t0, s5, 1181
1074:             blt         a2, s9, 1094f
                  or          s5, s5, a1
                  sll         t1, s3, s6
                  slli        t1, s10, 23
                  srli        s5, s10, 31
                  bge         t6, s11, 1086f
                  beq         t0, a4, 1082f
                  slt         s0, sp, s4
1082:             add         a0, s0, s3
1083:             or          t4, a2, zero
                  auipc       s6, 451196
                  add         s2, s0, t3
1086:             nop
                  lui         a6, 78879
1088:             sub         s0, s6, s1
                  slli        s11, a6, 17
                  slt         s0, a6, a4
                  nop
                  sltiu       zero, a4, 758
                  andi        gp, t0, 920
1094:             and         s8, s1, a0
                  beq         gp, s2, 1106f
                  srl         zero, t0, zero
                  or          s5, a5, s0
                  slt         a0, a3, a6
                  bge         a2, s3, 1108f
                  sll         a6, a4, t4
                  and         t0, t3, s6
                  srli        s1, zero, 19
                  sltu        s11, s2, a6
                  bgeu        s0, a6, 1115f
                  lui         t1, 1298
1106:             slti        s2, a1, 570
                  beq         a1, s3, 1125f
1108:             srli        sp, a4, 28
                  sub         zero, t0, s2
                  slti        s2, sp, 1279
                  or          ra, zero, s3
                  xor         s0, t2, t3
                  bge         s6, t5, 1131f
                  bltu        s10, tp, 1117f
1115:             sll         gp, s5, s1
                  blt         t2, s1, 1126f
1117:             bge         gp, s9, 1136f
                  sra         s9, s2, s8
                  sltu        tp, s3, s1
                  addi        s11, a3, 1483
                  sltiu       zero, zero, 2021
                  bltu        s7, t4, 1137f
                  bne         t3, t3, 1131f
                  xori        a6, s1, -1251
1125:             nop
1126:             or          a2, a4, t0
                  sltiu       t0, s6, 1782
                  andi        s3, t4, 1151
                  sll         t0, s6, a4
                  sub         zero, t5, s3
1131:             sra         a5, gp, t4
                  and         s3, s4, s11
                  xor         s1, a5, t1
                  blt         t0, ra, 1152f
                  slt         s5, t1, a3
1136:             blt         a0, s2, 1138f
1137:             sub         zero, s10, a7
1138:             sra         a2, s1, zero
                  andi        s9, s3, 1650
                  slt         s11, s3, s10
                  bne         tp, sp, 1148f
                  sra         zero, a0, t5
                  bltu        t3, a3, 1147f
                  xori        s1, gp, 824
                  and         s5, s6, s5
                  ori         a3, a7, 29
1147:             sltiu       zero, s6, 1494
1148:             bgeu        t4, s5, 1154f
                  auipc       zero, 927161
                  srl         a3, a5, t4
                  slli        s11, a7, 29
1152:             slt         zero, s2, s4
                  slti        sp, s11, -21
1154:             xor         zero, s2, s1
                  srai        s6, s1, 24
                  lui         sp, 148635
                  srl         a0, s7, t1
                  srli        s4, s6, 15
                  nop
                  sra         s6, s7, zero
                  srl         s11, t4, s2
                  srli        s4, zero, 7
                  addi        s7, a5, 1073
                  lui         t4, 866001
                  andi        a5, s0, 270
                  bge         t6, t0, 1167f
1167:             xori        t2, t0, -1806
                  beq         a0, s7, 1170f
                  sll         s4, s11, a6
1170:             sub         t4, gp, s3
                  sub         t3, t6, a0
                  slt         s2, s5, a2
                  blt         t6, s3, 1177f
                  xor         a6, s5, a0
                  bgeu        s11, s7, 1189f
                  and         a3, s0, gp
1177:             blt         sp, s7, 1184f
                  and         a5, t0, tp
                  srl         s0, s2, a6
                  xor         tp, s10, t4
                  nop
                  bgeu        s6, zero, 1197f
                  bne         t3, sp, 1201f
1184:             blt         t6, t3, 1194f
                  and         a2, a1, s3
                  srli        s5, s3, 18
                  sra         a1, s7, a3
                  andi        t1, a6, -86
1189:             blt         t3, s3, 1200f
                  and         a1, a5, s0
                  srli        a5, a7, 18
                  auipc       sp, 490653
                  xor         tp, t0, s0
1194:             slli        s1, a5, 4
                  blt         s6, s9, 1204f
                  andi        s1, a6, -1006
1197:             xori        s1, s2, -139
                  bltu        t0, a3, 1217f
                  slli        s9, s6, 27
1200:             ori         zero, a1, -340
1201:             bgeu        a3, a0, 1215f
                  ori         a1, s10, 144
                  srai        zero, zero, 10
1204:             addi        zero, s1, -1038
                  slli        a5, a2, 17
                  slt         zero, ra, t2
                  slli        s5, t1, 17
                  andi        s4, s0, -1601
                  andi        a7, t6, -1258
                  auipc       zero, 153067
                  slli        s10, a5, 31
                  and         s7, s3, a5
                  srai        s1, s0, 0
                  sll         a7, t6, t6
1215:             slt         s2, zero, a7
                  nop
1217:             andi        s6, s10, -735
                  andi        gp, s1, 758
                  or          sp, s0, s6
                  and         zero, ra, t2
                  xor         s7, t6, s10
                  and         t1, a4, t0
                  addi        t2, s2, -791
                  addi        gp, zero, 701
                  slli        s5, a6, 15
                  srai        zero, zero, 30
                  add         s0, gp, t3
                  xori        s5, a3, 617
                  xori        s0, s10, -69
                  bgeu        s11, s7, 1241f
                  beq         s3, a5, 1232f
1232:             sltu        t1, a0, s4
                  nop
                  bgeu        s9, s3, 1237f
                  sra         s3, tp, t6
                  sub         s6, s6, tp
1237:             bge         zero, a3, 1239f
                  addi        sp, s3, -1650
1239:             lui         a0, 597173
                  sub         s9, t3, t6
1241:             sll         gp, a7, tp
                  ori         s7, s5, -1799
                  sub         s7, zero, t1
                  andi        ra, s3, 1847
                  sltiu       gp, s10, -1137
                  sub         zero, s2, ra
                  sub         s11, s0, a5
                  slti        s5, s10, 1992
                  bge         sp, t5, 1269f
                  sub         zero, tp, sp
                  and         zero, zero, t5
                  slti        zero, s3, -419
                  nop
                  slti        s4, t1, 1519
                  bne         t2, s4, 1261f
                  slt         t1, ra, t5
                  and         s3, s11, t0
                  beq         s9, a7, 1260f
                  srl         s6, a7, s4
1260:             addi        s7, t3, -1391
1261:             andi        zero, s10, 1967
                  addi        s0, t6, -1604
                  or          s5, a4, s11
                  xori        s7, t1, 416
                  sltiu       s0, zero, -20
                  bge         sp, sp, 1272f
                  slli        s5, s4, 5
                  xori        a1, gp, 1257
1269:             srl         s1, a1, s9
                  slt         s3, t4, t3
                  sub         zero, s6, s1
1272:             sltu        tp, s4, s5
                  sra         t1, a2, a2
                  lui         a2, 307505
                  nop
                  slli        s8, a5, 8
                  add         a1, t3, t3
                  slli        s0, a3, 0
                  srl         a2, sp, t1
                  sub         a5, s1, t6
                  and         a7, t4, a3
                  and         t4, s5, a6
                  bltu        sp, t6, 1301f
                  bgeu        s11, a4, 1292f
                  slti        s10, s8, 947
                  srai        zero, sp, 0
                  slli        s7, s11, 18
                  xor         a3, s4, a4
                  bge         s9, t2, 1309f
                  slli        s9, sp, 25
                  beq         s3, t3, 1299f
1292:             bge         a6, a6, 1299f
                  srli        t3, s10, 14
                  or          zero, s7, a0
                  xor         t4, a1, s2
                  or          a0, a5, zero
                  ori         sp, t6, 192
                  slt         s10, s2, s2
1299:             slt         s11, s10, t6
                  slli        s9, a4, 7
1301:             sltu        s8, s7, t5
                  bge         s3, a0, 1313f
                  ori         tp, a7, 1000
                  addi        tp, s11, -282
                  blt         s5, a2, 1307f
                  sltu        zero, t2, a3
1307:             xor         s10, t6, a1
                  ori         zero, t6, -200
1309:             xori        sp, s11, -443
                  and         s7, s8, tp
                  bne         t1, s3, 1315f
                  ori         t2, a6, 1612
1313:             and         s10, s1, s7
                  addi        a1, a4, -300
1315:             blt         a7, tp, 1317f
                  xori        a2, s5, 1992
1317:             sub         s5, gp, s1
                  slti        s8, t2, 1648
                  auipc       s5, 175500
                  or          t4, s4, gp
                  nop
                  srl         t4, t4, t2
                  sub         a2, a7, t0
                  sltu        s2, a5, t3
                  srli        s1, s1, 4
                  add         s0, zero, sp
                  xor         t0, t0, t5
                  sra         sp, s4, t0
                  andi        s5, zero, -1512
                  sra         s4, s9, s10
                  sltu        t4, s1, a4
                  sra         t4, a3, a3
                  bgeu        s2, a2, 1339f
                  slli        t3, s5, 31
                  slli        s10, s3, 3
                  nop
                  sub         t4, gp, s3
                  bgeu        t0, s9, 1356f
1339:             or          zero, zero, s3
                  slli        a6, sp, 27
                  xori        a0, t4, 1423
                  bgeu        a7, s8, 1353f
                  sltu        t1, t5, a1
                  sll         t2, a0, gp
                  sltu        t4, zero, a1
                  lui         zero, 721511
                  ori         t1, s1, 938
                  slt         a2, s11, t1
                  add         t4, s1, s5
                  add         s9, t0, s7
                  addi        s1, a7, 89
                  bge         a4, a4, 1370f
1353:             bgeu        s6, t2, 1357f
                  slt         s7, ra, s9
                  and         zero, a4, s7
1356:             and         s8, tp, t4
1357:             slt         zero, s9, t1
                  ori         t2, t2, -1888
                  slt         t3, t0, a4
                  bgeu        s2, t4, 1363f
                  srai        s4, a6, 28
                  slti        a5, s2, 1620
1363:             slt         s1, s5, ra
                  bgeu        t2, s5, 1371f
                  sltiu       zero, s1, -860
                  add         a6, gp, s5
                  srl         s3, s3, a5
                  sra         s4, t3, t1
                  slli        a5, sp, 15
1370:             slt         t4, s10, s10
1371:             sltiu       t4, t1, 281
                  andi        zero, s8, -417
                  lui         tp, 205115
                  or          t0, s3, s11
                  xori        a0, s8, -1493
                  sltu        s5, s2, a0
                  auipc       s11, 997918
                  srai        zero, a6, 3
                  sll         s7, a3, s7
                  srli        t3, s11, 17
                  srli        tp, t6, 28
                  sra         s3, t0, s9
                  bltu        a7, t2, 1387f
                  ori         zero, s6, 1332
                  xori        zero, t0, -170
                  sub         zero, t6, s9
1387:             sra         s8, a4, a4
                  bne         s6, zero, 1403f
                  and         s11, a3, s2
                  addi        s3, s6, -1016
                  sltiu       s5, a3, -776
                  xor         s11, ra, t2
                  sltu        a6, s10, s11
                  sltiu       s11, t4, -1035
                  addi        gp, t3, 334
                  lui         tp, 574692
                  slli        zero, t5, 12
                  lui         tp, 232003
                  lui         s7, 1038716
                  srai        zero, t3, 27
                  slt         sp, s11, s3
                  auipc       s7, 139842
1403:             add         s11, a7, a1
                  beq         s11, a0, 1412f
                  sltu        s8, t5, a6
                  bge         s11, a7, 1413f
                  srl         t0, a7, t2
                  blt         sp, s0, 1417f
                  srl         zero, s5, t6
                  bltu        t4, a2, 1411f
1411:             and         s0, a7, t2
1412:             ori         s10, s1, 1998
1413:             slli        s3, t1, 20
                  xor         zero, a4, s1
                  slt         a7, a3, a5
                  slli        s5, s4, 14
1417:             sltiu       a2, ra, 1987
                  blt         gp, t0, 1420f
                  or          a7, s11, t3
1420:             andi        s11, t5, 913
                  nop
                  ori         s3, a0, -740
                  or          a0, s3, t3
                  sll         a3, zero, a2
                  bne         a3, s1, 1444f
                  slli        s5, t2, 7
                  add         s0, s4, t1
                  slti        gp, a7, -1945
                  srl         a6, a5, ra
                  auipc       t1, 764001
                  beq         s11, ra, 1441f
                  bne         s10, s0, 1434f
                  addi        a6, a6, 1004
1434:             blt         s7, t6, 1445f
                  and         a2, t5, t3
                  nop
                  lui         s6, 598015
                  sub         tp, a1, s11
                  blt         s2, zero, 1445f
                  bge         sp, gp, 1444f
1441:             nop
                  nop
                  slti        s7, s9, -692
1444:             srli        zero, s7, 19
1445:             slt         s11, ra, t3
                  srai        a1, s11, 17
                  srli        t1, a7, 6
                  addi        s3, s7, 1524
                  beq         a7, zero, 1467f
                  srai        sp, t6, 24
                  lui         s2, 741777
                  xor         t0, t5, t5
                  slt         t1, s9, s4
                  bne         s3, a5, 1456f
                  ori         t0, t3, -84
1456:             slli        t0, t1, 30
                  sub         s4, a5, s2
                  andi        s11, s2, -1637
                  bne         sp, s4, 1465f
                  lui         s6, 60205
                  beq         zero, t4, 1481f
                  beq         s11, zero, 1473f
                  xori        a0, t0, -1060
                  nop
1465:             beq         a1, t4, 1479f
                  xor         a3, s10, a1
1467:             sltu        gp, s7, t0
                  sll         sp, zero, gp
                  slt         a5, t0, t5
                  sub         t0, s5, s9
                  addi        s0, s5, -49
                  srli        s10, zero, 31
1473:             slti        zero, t3, -271
                  sra         a5, s6, s11
                  xor         a2, s1, t3
                  blt         s5, s0, 1484f
                  sra         t2, s8, t5
                  or          s5, s7, a4
1479:             sll         s5, s10, a1
                  beq         s11, s9, 1491f
1481:             srl         s11, s6, s6
                  xori        s6, gp, 912
                  andi        s3, s6, -1557
1484:             srli        zero, ra, 11
                  srai        zero, s10, 13
                  bltu        t1, sp, 1504f
                  or          zero, s9, s8
                  bge         s1, ra, 1499f
                  sltu        t2, s3, a4
                  beq         a3, t2, 1510f
1491:             xori        zero, sp, 1543
                  or          s1, s0, a7
                  sltu        zero, tp, zero
                  xor         s1, s4, ra
                  srai        t1, s2, 11
                  xori        t4, s7, 589
                  sltu        s5, s10, ra
                  bne         gp, s5, 1504f
1499:             srli        sp, t2, 1
                  sub         a3, s4, t1
                  srli        t2, s1, 15
                  srl         s7, s0, zero
                  beq         s9, a6, 1521f
1504:             bge         a5, a2, 1506f
                  beq         t6, s8, 1523f
1506:             add         a7, a2, t6
                  bgeu        s10, t5, 1525f
                  srli        t3, zero, 24
                  srl         s9, sp, s0
1510:             sll         t3, t0, a7
                  srai        a7, s3, 4
                  sub         a7, t5, s10
                  and         gp, a3, s0
                  srl         s9, s6, s5
                  and         s6, a3, a3
                  slt         zero, t2, s10
                  srli        ra, s7, 20
                  blt         t5, s3, 1524f
                  blt         t1, ra, 1539f
                  sltiu       s3, s6, 1583
1521:             sra         s3, a3, t6
                  xori        gp, s1, 941
1523:             add         s1, tp, a2
1524:             auipc       a1, 480778
1525:             sltiu       s3, s0, -1534
                  and         sp, s0, a5
                  bltu        t1, a5, 1538f
                  or          s8, s5, a4
                  lui         zero, 995931
                  srai        t1, s6, 8
                  nop
                  bne         s5, s6, 1543f
                  lui         s8, 216891
                  sltiu       a5, a1, 1542
                  sll         t2, s11, t4
                  bge         gp, a6, 1538f
                  ori         t1, t2, 28
1538:             blt         s3, a4, 1544f
1539:             and         s10, t1, sp
                  xor         zero, s11, t1
                  and         s6, s2, s5
                  slti        t4, t4, 803
1543:             slti        s1, a2, -821
1544:             srl         a2, zero, t4
                  bne         s11, t2, 1546f
1546:             sltu        s3, t4, s11
                  bgeu        t6, s0, 1554f
                  xori        s5, s4, 1519
                  blt         t6, s4, 1552f
                  bltu        s11, s9, 1564f
                  and         zero, a1, s8
1552:             xor         s2, s0, t6
                  sltu        gp, zero, s5
1554:             nop
                  blt         t1, a2, 1566f
                  sltiu       t0, a4, -1723
                  lui         t0, 1042496
                  slti        a0, s5, -139
                  slti        a3, ra, -1532
                  ori         s7, t6, -1113
                  sub         t0, s1, t2
                  xor         t0, s3, s4
                  ori         a0, t3, -1744
1564:             srli        t3, t2, 29
                  addi        s4, a2, -149
1566:             bgeu        t6, ra, 1574f
                  sltiu       s11, s8, 1147
                  xor         t3, t2, gp
                  bge         t4, s11, 1571f
                  xori        zero, t0, -887
1571:             bltu        t4, t5, 1580f
                  xor         a1, a4, s1
                  sub         t0, t1, a0
1574:             sltu        s9, a1, a0
                  bne         s8, t0, 1583f
                  srli        a2, zero, 9
                  srl         s4, s3, a1
                  addi        zero, t6, -974
                  slti        s8, zero, -686
1580:             auipc       gp, 65849
                  srli        tp, a0, 23
                  srl         s7, s8, s1
1583:             sub         zero, t2, a5
                  sltiu       s8, s6, 1163
                  srai        gp, sp, 31
                  add         s5, s0, s5
                  sltiu       s4, ra, 599
                  slti        s0, zero, -1530
                  srai        s5, t4, 1
                  andi        s0, a6, -951
                  sltiu       s6, s9, 562
                  sltiu       ra, a5, -495
                  addi        s3, t3, 1769
                  slt         zero, t3, a0
                  slti        t4, t5, -1411
                  srl         t3, a4, a5
                  bltu        a6, a4, 1599f
                  slt         a5, s2, a0
1599:             xori        s4, a6, -1921
                  and         a1, ra, t0
                  or          t1, zero, s4
                  sll         zero, sp, s4
                  ori         a5, a3, 8
                  bltu        s11, s8, 1614f
                  bgeu        a1, a2, 1623f
                  beq         s7, s5, 1617f
                  srai        t4, s6, 16
                  xori        s1, s6, 1687
                  add         s11, s4, t4
                  sll         t0, a4, a2
                  andi        a0, t5, 964
                  srl         s3, zero, t2
                  bne         s0, sp, 1633f
1614:             srl         s7, a3, a5
                  addi        s7, t4, -1979
                  sll         t0, s11, t6
1617:             addi        s4, s1, -179
                  add         s3, t3, t3
                  srai        s1, t6, 13
                  xor         s5, t1, s5
                  srli        t0, t0, 17
                  auipc       s3, 655221
1623:             slti        a2, s4, 903
                  addi        s5, a5, -347
                  srai        zero, sp, 2
                  sll         a2, s10, a7
                  nop
                  srai        s2, t4, 16
                  srl         s5, s0, s10
                  sub         a3, zero, t3
                  auipc       s8, 190336
                  and         a2, t0, s3
1633:             srl         t1, s8, s8
                  xori        s6, s11, -880
                  and         s6, a1, tp
                  xor         s1, s7, t1
                  ori         t4, t0, -978
                  or          t3, s9, a1
                  bgeu        t4, t3, 1641f
                  sub         s2, t1, s1
1641:             slt         gp, t1, s0
                  xor         gp, t2, a6
                  sra         a6, t6, s10
                  andi        t2, s3, 1665
                  bne         t3, tp, 1651f
                  slt         t2, a6, t6
                  andi        zero, a7, -1737
                  bne         s4, s3, 1663f
                  addi        a6, gp, 598
                  bltu        t3, t1, 1657f
1651:             bne         a2, gp, 1669f
                  blt         t5, gp, 1656f
                  sltu        s1, t0, a1
                  add         gp, a2, sp
                  sll         a3, sp, s1
1656:             bge         tp, tp, 1675f
1657:             sra         s6, t2, zero
                  blt         t6, s8, 1676f
                  xor         a0, s11, ra
                  or          a6, t3, gp
                  sltu        gp, t4, zero
                  and         s3, a3, t2
1663:             bge         s6, a6, 1667f
                  srl         sp, s3, s7
                  lui         zero, 81354
                  xori        zero, a1, -260
1667:             srl         s1, tp, sp
                  xori        a2, a1, -995
1669:             sltu        a0, t0, a3
                  xor         s4, s7, t5
                  ori         t4, s0, -2048
                  slt         ra, t0, a7
                  slti        s5, a1, -931
                  nop
1675:             and         s6, s8, a7
1676:             sra         t2, s9, s0
                  auipc       a3, 267184
                  blt         s6, t2, 1697f
                  lui         s3, 948726
                  add         t1, t4, gp
                  or          s9, s3, zero
                  bltu        s5, s1, 1697f
                  bne         s6, s3, 1701f
                  sltiu       t1, t2, 253
                  srl         tp, tp, a0
                  bge         t1, s3, 1697f
                  slti        a1, t6, 756
                  bgeu        gp, gp, 1697f
                  bge         ra, a1, 1700f
                  nop
                  lui         zero, 654550
                  srli        a3, s6, 31
                  sltu        zero, s10, a4
                  bgeu        s6, a4, 1712f
                  nop
                  sll         zero, gp, s5
1697:             beq         tp, a1, 1703f
                  ori         a5, tp, 1231
                  sll         t0, s0, gp
1700:             auipc       t1, 389287
1701:             bltu        tp, t5, 1708f
                  slli        s6, gp, 7
1703:             and         ra, tp, t3
                  srl         a2, t0, s8
                  slti        zero, s1, 1960
                  sra         tp, t2, s8
                  auipc       t1, 492446
1708:             addi        a7, s0, -854
                  add         s7, t3, sp
                  bgeu        a2, a0, 1718f
                  slli        t2, t1, 0
1712:             sra         a7, a2, sp
                  bne         s5, zero, 1731f
                  srl         s3, t5, a5
                  bge         zero, t5, 1729f
                  sub         zero, tp, a0
                  srl         t3, s11, a0
1718:             srli        t2, a7, 15
                  slti        t2, s9, 1220
                  slti        s4, ra, 1434
                  add         t4, t5, t3
                  beq         t1, s7, 1724f
                  sltu        a7, t3, gp
1724:             sra         s1, s4, a6
                  andi        zero, a7, -1494
                  sll         s3, s9, t2
                  sub         s2, t2, ra
                  auipc       ra, 323330
1729:             nop
                  srli        s6, t5, 1
1731:             add         a7, t4, s1
                  lui         gp, 284448
                  lui         a2, 240066
                  srl         zero, t2, a6
                  sll         s7, s0, t6
                  lui         sp, 727348
                  bge         s6, s5, 1739f
                  add         zero, s4, a4
1739:             srli        zero, s10, 14
                  slli        s7, s9, 20
                  auipc       t4, 760390
                  xor         s8, s1, s7
                  xori        zero, gp, -495
                  ori         zero, s1, -1022
                  slti        t3, t4, 1133
                  andi        s8, a1, 2046
                  srli        zero, tp, 17
                  bgeu        a6, t6, 1754f
                  andi        a3, s2, 1132
                  sub         s4, tp, t1
                  srl         zero, s6, s9
                  sub         s7, s11, s10
                  sra         a1, s5, t1
1754:             and         zero, ra, a5
                  ori         s8, s3, 341
                  addi        a1, a3, -366
                  lui         t1, 387412
                  sll         s0, t5, t0
                  srli        s2, s2, 21
                  xor         zero, t4, t6
                  slli        a2, s3, 19
                  xori        s6, a0, -1329
                  srl         t2, s2, a5
                  blt         gp, a0, 1784f
                  bltu        a0, s1, 1775f
                  srai        gp, s9, 18
                  srl         s7, s3, sp
                  ori         s10, s8, -841
                  bgeu        a2, t0, 1775f
                  srai        zero, s2, 20
                  xor         ra, gp, s8
                  auipc       t2, 46976
                  sltu        a2, a5, sp
                  xori        s7, s8, 1764
1775:             nop
                  bltu        t6, t0, 1778f
                  beq         ra, s5, 1779f
1778:             addi        t4, a1, 541
1779:             xori        s0, t4, 1576
                  sll         a5, t6, a7
                  bltu        a3, t6, 1785f
                  srai        s4, t4, 3
                  srl         t4, t4, s1
1784:             bne         s3, t0, 1804f
1785:             xor         s11, s3, s5
                  sltu        zero, t1, s2
                  srl         zero, zero, a6
                  blt         a7, a4, 1796f
                  ori         sp, s3, 1024
                  slli        s5, s6, 14
                  blt         s3, s11, 1809f
                  beq         s11, zero, 1795f
                  lui         t3, 1001662
                  slti        s8, t5, 1084
1795:             ori         s2, s11, 1039
1796:             bge         gp, t3, 1797f
1797:             sltu        s6, s9, a0
                  addi        zero, t6, 1026
                  sltu        sp, s2, s2
                  sub         a3, t4, s4
                  add         a1, tp, s11
                  or          s2, s0, s9
                  slti        s0, s5, 643
1804:             nop
                  xor         a6, s2, a7
                  bgeu        a3, s5, 1810f
                  or          t0, a2, t5
                  bltu        s2, a6, 1819f
1809:             auipc       a0, 256808
1810:             sltiu       gp, ra, -318
                  xor         a3, gp, a4
                  slli        a0, t4, 4
                  bltu        s0, a1, 1824f
                  lui         a0, 528867
                  sltiu       s1, t4, 661
                  srli        s8, s0, 19
                  bgeu        ra, tp, 1824f
                  andi        s11, a2, -1746
1819:             sltu        t4, s10, a0
                  xor         s7, a5, t5
                  sll         a2, t2, a3
                  beq         s4, zero, 1824f
                  srl         t4, s11, t5
1824:             sra         a1, a1, s6
                  sra         s2, s11, s7
                  sltu        s0, s5, a5
                  slti        s10, sp, 1757
                  addi        sp, s6, 214
                  sub         zero, t6, s1
                  bltu        a6, a6, 1838f
                  sra         zero, sp, s1
                  add         s5, a2, zero
                  or          s10, t1, a0
                  nop
                  nop
                  sltu        s9, a6, t3
                  add         s6, a0, s6
1838:             sltu        ra, s2, a5
                  bne         a6, t4, 1857f
                  slti        s10, a6, -246
                  slli        sp, tp, 13
                  bne         a2, a5, 1856f
                  bne         s1, s0, 1858f
                  srli        ra, a4, 29
                  sltiu       t3, a2, 1878
                  blt         s2, s7, 1866f
                  andi        t1, t5, 1237
                  beq         t1, ra, 1859f
                  sub         a3, s9, t3
                  srli        t2, s10, 23
                  lui         tp, 266735
                  srli        ra, s6, 29
                  sll         sp, t2, s2
                  beq         t6, t6, 1873f
                  sltu        t3, t4, a2
1856:             bge         t4, s2, 1860f
1857:             addi        t3, t6, -1128
1858:             bne         t0, s7, 1866f
1859:             nop
1860:             auipc       s10, 442333
                  nop
                  or          s7, tp, a4
                  andi        a2, t6, -1216
                  andi        zero, s2, 1938
                  srli        s5, gp, 4
1866:             blt         s2, a7, 1876f
                  sub         s5, ra, tp
                  lui         ra, 705629
                  bge         ra, s1, 1880f
                  or          a7, t1, ra
                  bltu        ra, t1, 1880f
                  srai        s11, a6, 25
1873:             or          s8, a5, s2
                  slli        s2, s7, 14
                  bgeu        s10, ra, 1893f
1876:             srai        t1, s6, 22
                  srli        s11, t6, 27
                  bgeu        t6, s3, 1884f
                  auipc       t1, 827837
1880:             auipc       s8, 947945
                  blt         t6, a5, 1901f
                  sltiu       s6, sp, 314
                  srl         s3, s2, t0
1884:             srli        a0, gp, 4
                  or          t1, t1, s10
                  sub         t3, s5, t4
                  srli        s9, ra, 19
                  srl         t2, ra, gp
                  beq         a6, s11, 1907f
                  nop
                  slt         s1, t2, t6
                  add         s5, t5, t2
1893:             srai        a7, s9, 19
                  andi        s7, a1, 1398
                  and         s5, s6, zero
                  sltu        a6, t6, s1
                  sltiu       a2, zero, -978
                  beq         t2, a6, 1900f
                  blt         t2, s3, 1906f
1900:             nop
1901:             srli        s3, a6, 16
                  bgeu        s2, s5, 1908f
                  sltiu       t2, s5, 746
                  and         s10, ra, zero
                  bne         t3, t5, 1912f
1906:             nop
1907:             bgeu        zero, t4, 1918f
1908:             blt         a4, s4, 1911f
                  add         a5, a7, s2
                  srl         s1, t6, a6
1911:             and         sp, s11, t2
1912:             bltu        s3, a4, 1918f
                  sub         zero, s5, s2
                  auipc       s10, 470394
                  nop
                  xor         s5, t3, t1
                  beq         s7, s0, 1919f
1918:             addi        s10, s6, 1160
1919:             bge         a5, zero, 1920f
1920:             beq         a3, t5, 1938f
                  xori        a3, tp, -1398
                  srl         s10, a6, t6
                  slli        s6, t2, 25
                  sltiu       s5, a0, 1488
                  xor         gp, t0, ra
                  sll         a0, t1, ra
                  ori         s11, a2, -194
                  bgeu        s3, s7, 1932f
                  nop
                  addi        s5, t5, 497
                  and         s5, a0, s10
1932:             xori        a7, a6, -1181
                  andi        s9, t2, 1329
                  xor         t2, sp, s4
                  bgeu        t1, t2, 1937f
                  sltiu       s11, a7, 223
1937:             slti        t1, s11, 281
1938:             bge         s9, t6, 1949f
                  bgeu        tp, a6, 1953f
                  slt         a7, s3, s2
                  or          a7, s0, s2
                  sltu        zero, s5, s9
                  sltiu       zero, tp, -784
                  bne         s2, s11, 1954f
                  andi        t0, a5, 780
                  add         s4, t0, tp
                  andi        s8, a5, -268
                  sra         s1, t1, s8
1949:             lui         s1, 610427
                  sra         s10, s11, s8
                  slli        a0, a2, 8
                  blt         s6, s9, 1959f
1953:             bge         a7, a4, 1955f
1954:             sub         zero, t0, s1
1955:             sub         s3, zero, a2
                  xori        a1, s1, -388
                  srli        tp, s1, 14
                  auipc       s6, 842882
1959:             sub         s5, s6, s9
                  blt         s11, t5, 1971f
                  srai        zero, t5, 14
                  lui         s4, 562028
                  sra         a7, s6, s2
                  sub         a6, s5, s5
                  slt         zero, a3, t0
                  bge         t5, a5, 1984f
                  sltu        s7, a2, a5
                  nop
                  srl         a6, a4, s3
                  slt         s6, a3, t2
1971:             bltu        t5, s4, 1980f
                  bgeu        s9, a1, 1987f
                  xori        t3, a5, 328
                  bltu        t2, a4, 1976f
                  beq         a6, t0, 1986f
1976:             and         a5, ra, s3
                  sub         a5, s7, t3
                  srli        t0, s9, 18
                  bge         s4, s9, 1981f
1980:             andi        s0, t6, -1450
1981:             ori         s1, a6, -2038
                  xor         a2, a3, s8
                  bge         zero, s0, 1994f
1984:             xori        zero, s4, -432
                  sltu        a0, s3, s1
1986:             nop
1987:             sub         s6, gp, zero
                  blt         t2, s9, 1994f
                  slt         t3, a7, s1
                  srl         s4, s5, a3
                  sltu        s10, s5, gp
                  srli        a6, s11, 27
                  srli        t1, a4, 27
1994:             srai        s10, a4, 15
                  sltu        s11, a4, s7
                  slti        t1, tp, -1366
                  sra         s10, a3, zero
                  sra         a0, s6, ra
                  slli        zero, s10, 15
                  srai        s1, a2, 13
                  addi        t3, a2, -1604
                  bgeu        s9, a7, 2008f
                  bge         a6, zero, 2006f
                  addi        s9, t0, 493
                  and         zero, a4, a0
2006:             bge         t5, a4, 2007f
2007:             andi        t3, a2, -417
2008:             slti        zero, a6, -70
                  sra         s7, a2, a6
                  bge         t3, s9, 2029f
                  slli        a6, gp, 17
                  beq         a4, a6, 2032f
                  slli        t2, t1, 20
                  sltu        t2, s6, a3
                  or          sp, t0, zero
                  bltu        s4, s9, 2023f
                  beq         ra, a2, 2028f
                  sub         t4, a0, gp
                  srai        s11, t0, 31
                  bne         t4, a7, 2024f
                  auipc       t3, 543956
                  addi        t2, a7, -1192
2023:             or          s6, s3, tp
2024:             auipc       t4, 473841
                  sub         t0, s11, t5
                  nop
                  srli        s9, s8, 7
2028:             xor         s4, a0, s7
2029:             beq         s11, s7, 2049f
                  xor         s3, a7, t0
                  beq         a2, gp, 2035f
2032:             bne         s3, sp, 2050f
                  auipc       t4, 84412
                  srai        a6, gp, 1
2035:             slti        t2, s4, 888
                  and         zero, s11, s6
                  sltiu       tp, s5, 1445
                  add         t2, a7, a7
                  beq         s0, t4, 2045f
                  xori        t3, a3, -2011
                  beq         t1, s7, 2059f
                  slt         zero, s7, a2
                  bge         a0, a1, 2051f
                  bne         a1, t6, 2062f
2045:             andi        s2, t5, -438
                  beq         s6, s3, 2054f
                  xori        s10, a7, -1884
                  ori         s6, s0, -1873
2049:             slti        s9, a5, 1173
2050:             lui         t1, 53007
2051:             slt         s3, t0, tp
                  lui         s8, 951366
                  xor         ra, s3, tp
2054:             srl         t0, a7, ra
                  blt         a0, s1, 2057f
                  andi        s11, t0, -1424
2057:             sltu        s8, a7, a5
                  nop
2059:             addi        a0, a2, 1893
                  srai        s7, t5, 20
                  bltu        a1, t0, 2070f
2062:             sub         s8, a0, s7
                  and         tp, s0, a5
                  xori        a5, t4, 687
                  sltiu       zero, tp, 1960
                  nop
                  auipc       a0, 27988
                  xor         t0, t4, s7
                  and         gp, zero, s9
2070:             bne         zero, s0, 2077f
                  bltu        s2, a6, 2073f
                  bltu        t6, a3, 2092f
2073:             bltu        t0, gp, 2075f
                  slti        a5, s8, 1485
2075:             or          a5, s1, ra
                  srai        a3, t2, 20
2077:             or          zero, s0, zero
                  lui         t1, 752224
                  bltu        sp, t3, 2098f
                  srai        gp, s2, 17
                  bne         tp, t3, 2092f
                  srl         a7, s6, tp
                  sltu        s5, tp, t4
                  slli        s4, s11, 24
                  sub         s1, a4, ra
                  blt         sp, a2, 2104f
                  lui         s9, 64918
                  sltu        s5, t3, s1
                  blt         s7, a2, 2097f
                  xori        a5, s3, -124
                  slt         s11, ra, a4
2092:             sra         sp, t6, a7
                  slti        sp, zero, 631
                  ori         tp, s0, 2005
                  beq         s0, a7, 2113f
                  sub         t2, a5, s10
2097:             srai        zero, s0, 30
2098:             xori        ra, s3, 1288
                  addi        s9, t3, 1308
                  lui         zero, 224881
                  bne         s11, a2, 2104f
                  addi        zero, a0, 604
                  bge         s7, a1, 2105f
2104:             beq         t0, ra, 2115f
2105:             and         s4, ra, a7
                  add         a6, a5, t2
                  blt         s6, s8, 2121f
                  srli        gp, s9, 17
                  ori         t1, t5, -653
                  srli        t0, s5, 20
                  sltu        a2, t6, s8
                  ori         s5, s10, -268
2113:             nop
                  sub         s9, s9, zero
2115:             add         a2, s1, a4
                  slt         zero, s8, t3
                  nop
                  add         s0, t0, s4
                  sltu        t0, a4, t3
                  bltu        a7, s4, 2124f
2121:             ori         a3, sp, 757
                  sra         a5, s6, s0
                  add         t0, a3, a0
2124:             and         sp, s10, s9
                  slti        zero, ra, 957
                  sub         a5, tp, t3
                  srli        s3, s3, 17
                  srl         s0, s0, ra
                  slli        a7, a3, 8
                  sra         a5, s6, t3
                  xori        s3, s5, 1705
                  slt         t2, s8, t6
                  xor         s5, a7, t3
                  blt         s4, t0, 2154f
                  sra         s2, a7, s3
                  add         s6, s4, ra
                  and         t4, a2, s0
                  xor         a1, tp, ra
                  lui         a6, 697711
                  xori        sp, a1, 443
                  bge         s1, sp, 2149f
                  srli        s6, tp, 4
                  sll         s2, t5, s4
                  andi        gp, s6, 1527
                  srli        s7, s3, 20
                  nop
                  blt         t6, sp, 2148f
2148:             srl         a0, t0, s11
2149:             bge         a6, t0, 2155f
                  blt         s5, s0, 2161f
                  slli        s2, s11, 17
                  addi        a5, ra, 1163
                  addi        t1, a3, -101
2154:             and         s1, t0, zero
2155:             beq         ra, a6, 2159f
                  xori        a6, t1, 930
                  ori         ra, zero, 243
                  bge         a7, s5, 2168f
2159:             auipc       t1, 209982
                  beq         a4, s0, 2167f
2161:             add         s4, s2, s11
                  addi        t3, a5, 230
                  sra         t0, s4, zero
                  sub         zero, s3, a1
                  slli        sp, s5, 25
                  srli        zero, s7, 0
2167:             bgeu        s9, s0, 2173f
2168:             srli        t1, s9, 5
                  addi        zero, s4, 378
                  bge         s5, s7, 2176f
                  slt         s6, t4, s11
                  ori         ra, t3, 1696
2173:             lui         s6, 698973
                  xori        s1, s7, 615
                  sll         s2, s8, a2
2176:             andi        s5, ra, 1901
                  addi        a3, ra, 1451
                  beq         t3, t2, 2189f
                  slti        a6, a0, -1654
                  sltu        s3, a0, t3
                  srl         zero, t3, t4
                  andi        s4, s6, 615
                  bne         gp, a0, 2201f
                  addi        sp, sp, 1
                  bne         a1, t4, 2203f
                  xori        s6, a6, 852
                  srli        s2, a6, 14
                  bne         s6, t2, 2203f
2189:             sra         s0, s2, a1
                  srli        zero, t2, 18
                  and         s7, s10, t4
                  sltu        s6, s2, s6
                  nop
                  or          zero, a7, t1
                  add         zero, t1, s0
                  srl         s10, s10, t5
                  ori         s4, gp, -329
                  xor         t2, a0, a2
                  sltiu       s4, s10, 1702
                  lui         zero, 13587
2201:             xor         zero, a0, sp
                  slli        zero, s9, 26
2203:             addi        s1, s2, -932
                  bltu        s3, zero, 2206f
                  sltu        a0, s7, a2
2206:             sll         a1, t3, ra
                  srai        zero, a3, 13
                  xor         zero, s5, a2
                  add         s10, a2, t1
                  ori         zero, t4, 1263
                  bltu        zero, zero, 2213f
                  addi        a1, s1, 1722
2213:             or          t4, t1, zero
                  slti        gp, s1, -922
                  addi        t1, s1, -1134
                  sra         s2, s11, s3
                  bgeu        s11, s10, 2235f
                  and         s9, tp, t2
                  sub         zero, s1, s3
                  srli        s4, a4, 25
                  and         zero, sp, a7
                  ori         s9, a4, 765
                  bne         t2, zero, 2238f
                  andi        sp, s5, -780
                  slli        s11, gp, 21
                  add         t1, s3, ra
                  addi        a5, ra, -184
                  and         zero, ra, s4
                  sub         s1, ra, t2
                  xori        t3, a5, -759
                  auipc       zero, 233589
                  xor         t4, t4, a5
                  sub         sp, t4, s6
                  ori         t4, s2, 1027
2235:             addi        sp, t1, -527
                  blt         ra, s8, 2243f
                  nop
2238:             sub         s9, a5, t5
                  slt         s0, tp, t3
                  ori         gp, tp, 393
                  slli        s11, s3, 3
                  add         s3, s8, s5
2243:             bltu        ra, a5, 2251f
                  slli        t1, s11, 16
                  and         a3, a1, ra
                  blt         t1, t3, 2260f
                  beq         ra, s1, 2256f
                  xor         s8, s2, s1
                  andi        s2, s2, 1798
                  lui         a7, 210327
2251:             slt         t3, t0, sp
                  add         a0, t3, s2
                  sltu        s4, s9, t1
                  sub         t0, a5, s1
                  bltu        s6, s7, 2266f
2256:             ori         s7, t4, 1028
                  sra         s2, s8, t1
                  slli        zero, t6, 20
                  blt         t5, a2, 2263f
2260:             bne         s11, t6, 2268f
                  ori         s1, t1, 619
                  slti        zero, t6, -1899
2263:             xor         t4, t1, a4
                  sub         zero, t1, s10
                  sltu        zero, a3, s4
2266:             sub         s4, s6, t2
                  and         s11, t2, a2
2268:             sltiu       s0, t2, -465
                  andi        s2, ra, -1130
                  xor         s11, zero, a5
                  xori        s9, s9, -1048
                  auipc       s2, 664563
                  andi        tp, s5, 665
                  ori         s2, t1, -642
                  sll         a1, t2, a6
                  and         t1, t6, t0
                  bgeu        s4, s4, 2278f
2278:             sra         t3, s7, t3
                  and         s4, s5, s2
                  bne         t0, s2, 2300f
                  slti        zero, gp, 868
                  sub         a6, t0, gp
                  sra         t2, tp, a6
                  slti        s8, s7, 1164
                  srli        s1, s6, 18
                  sltiu       a7, s4, -349
                  srai        zero, a2, 17
                  beq         zero, gp, 2306f
                  add         a7, ra, s8
                  blt         t1, zero, 2293f
                  sub         s1, s8, sp
                  bgeu        a1, zero, 2310f
2293:             slli        gp, t2, 4
                  or          t4, t3, a5
                  slti        s5, ra, -1416
                  sltu        s6, a1, a7
                  srl         t0, s11, a4
                  ori         ra, t0, -361
                  beq         t6, t4, 2305f
2300:             andi        zero, s4, 107
                  srai        t1, s5, 18
                  sub         a7, s8, s5
                  bne         sp, t5, 2305f
                  blt         t6, a3, 2310f
2305:             xor         zero, s2, t4
2306:             xori        zero, a7, 56
                  srli        s9, a4, 12
                  bne         ra, sp, 2328f
                  blt         a3, s5, 2320f
2310:             sub         a0, zero, s0
                  addi        a7, a6, 807
                  xor         s11, s1, tp
                  sll         s11, s0, s0
                  sub         a2, s10, s4
                  srai        s1, a4, 9
                  bge         gp, t0, 2318f
                  sra         s7, s2, s11
2318:             lui         s8, 908275
                  sltiu       s7, s3, -1254
2320:             sll         a2, sp, a0
                  slli        t3, t2, 13
                  and         s6, tp, sp
                  sltu        t1, s11, s10
                  slt         s5, a0, s6
                  sll         t4, zero, s4
                  ori         ra, tp, -118
                  xor         t4, tp, s5
2328:             slt         a7, t5, ra
                  sra         t4, s3, t2
                  sra         zero, t3, s2
                  addi        s4, gp, 1901
                  srl         zero, s2, a7
                  sra         zero, s8, ra
                  sltu        s0, gp, s10
                  bgeu        a3, t1, 2348f
                  sltiu       s9, s10, -1687
                  slti        a3, t4, 1553
                  add         a7, s5, a2
                  sll         zero, s5, s6
                  bge         a5, a7, 2348f
                  srl         s11, s9, sp
                  sub         s0, s3, sp
                  bge         s7, s7, 2347f
                  srli        s8, s10, 25
                  bltu        zero, s2, 2348f
                  srli        zero, t2, 19
2347:             add         a5, s6, s3
2348:             nop
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
.word 0xa6b703ba, 0x457bb072, 0x9668378f, 0x1c0c5290, 0xd4afc802, 0x7ba1ab45, 0xc43cf076, 0x1679d5cf
.word 0xbe5184cc, 0x4507aa64, 0xe6508401, 0x5f6e2a3b, 0x5686fc18, 0xd7caf267, 0x466c6b28, 0x5b6aac7d
.word 0xa21b57f7, 0xe6322386, 0x8d129692, 0xde3143b6, 0x610d3ba2, 0x577ed31c, 0x151f32ed, 0x117e38e9
.word 0x66604160, 0x89bbd27b, 0x636c5a11, 0xda52d278, 0x378ba810, 0xf2e9136e, 0xfac8093e, 0xd57947f1
.word 0x28c1e8bb, 0xf7cf5ec8, 0x9f300173, 0x77de21ba, 0x8330b632, 0x44206128, 0xd7767525, 0xdabaf3d7
.word 0xc90b2921, 0x86c24e45, 0x2831ed58, 0x1063c407, 0xc01884bd, 0x4b706b7e, 0x431217f4, 0x3c581224
.word 0x4c9f9f27, 0x707cc511, 0xc5e8a502, 0xfe9d0106, 0x99fa1c37, 0xe861a874, 0x57443231, 0x2fb7a458
.word 0x2ca35550, 0xeee835b9, 0x0e35d4a8, 0x15171ff9, 0x06b5518b, 0xd5417c08, 0xf232b3f0, 0x710c7666
.word 0x3ce1ba7c, 0x4ecdae70, 0x17b54da3, 0xdc25df6d, 0xae9a1546, 0x96d0bcab, 0x901bbba9, 0x7d140e2f
.word 0xea97fbf7, 0x6b914ba4, 0x71a0d024, 0xb01ee00d, 0x4cb74d3c, 0xcfa6eb78, 0x8b040d65, 0x6036500a
.word 0x451b9ad2, 0xea9e8a3f, 0x59d6faa5, 0xf6eb1ab4, 0x631be8e2, 0x37d0022e, 0xfeb19c03, 0x33fd8623
.word 0x2c72aafe, 0xa90aa3f0, 0xc4da10ae, 0x75dea318, 0x6edab891, 0x4a9722fd, 0x1270d99e, 0x6747cfbf
.word 0xc3f3c630, 0x807343db, 0xe9c4a77e, 0x90a5dd6c, 0x3c350e89, 0x8c1c84bf, 0x2d462755, 0xa695de06
.word 0x94642e2f, 0x304d1b5a, 0x40243a5b, 0x84b6135e, 0x2f12cdc5, 0x526eb520, 0xbeddfbd2, 0x65692ebb
.word 0x3cadd2e1, 0x1a59ac36, 0x73228086, 0x60982cda, 0x62bbbbe7, 0xdfd1092c, 0x26ab204c, 0x0d6b483a
.word 0xf9de0f28, 0xfcab6ba6, 0x57526a2f, 0x55218bb0, 0xb13add21, 0x44b60847, 0xec13fd43, 0x14471a4d
.word 0xa82252ce, 0xd00b0eb7, 0x74a23b5b, 0x52fccc35, 0xdb5892d2, 0x9df99042, 0x1a42458c, 0x8f6f577f
.word 0xd5b573c6, 0xe4a5d496, 0x69267ae0, 0xe046fbdc, 0xf546f174, 0x95787c96, 0x905535ca, 0xc1dd00b8
.word 0x7209096d, 0x77cbacbe, 0xe5a4f44f, 0xaea2b5c0, 0x1fee29bd, 0x0c48b317, 0x06c33197, 0x3059d184
.word 0xdeba1fde, 0x51346d47, 0x2db7db44, 0xd88ab114, 0xe81941c4, 0x462e1abd, 0x57b444e2, 0x14474bc5
.word 0x67f01416, 0x62d1cead, 0x264198a9, 0xdd87a06e, 0x9ca73dda, 0x6f7b38a6, 0xc6bd6f92, 0x9be71ae8
.word 0x7afea6fb, 0x5de39a85, 0xe08351bf, 0x4e7e4317, 0x911bda9e, 0x49f59cb3, 0x5f606f2e, 0xdddad611
.word 0x663dc358, 0x58771073, 0xd34dc380, 0x2e2caa46, 0x2e110532, 0x68f17daf, 0xd43aab92, 0xc84d2e4a
.word 0x688f426a, 0xfb776b42, 0x31639985, 0x4ae1aac0, 0x89cfcfdd, 0x504e5f7c, 0x2d22b23f, 0xc19fa8d4
.word 0x1c2f410e, 0x1b66d87e, 0x84a7e6d1, 0xaa0c7168, 0x04f0b193, 0x2b77d12b, 0x26166a2e, 0x6fa8fd73
.word 0x70d94b51, 0x1c6d017a, 0x5289ad5d, 0x61355730, 0x5d082666, 0xeceb89bf, 0x6494beed, 0xf745bf93
.word 0x6ad9b27b, 0xe7522042, 0x49e72c39, 0xaa021262, 0xa071c3ec, 0xbfdccfde, 0x7eba9125, 0x17ce7727
.word 0xddb649b2, 0x958153ba, 0xc2313d08, 0xd9f61a4e, 0x8720a6db, 0x844135b0, 0x5f8f8a61, 0xf1b15757
.word 0xcf4846dc, 0xf1887467, 0x9f83e131, 0xbe59f16f, 0x7ce0bba7, 0xd3311302, 0x3e696df1, 0x7695de5a
.word 0x2da179cd, 0x554be954, 0xc2dc52d9, 0x78036343, 0xc26dd7f6, 0x549d1d3c, 0x77cee142, 0x7e341610
.word 0xeb2b0207, 0x4a1ca310, 0xc5365abf, 0x74a489a4, 0xaead73e0, 0x342940a7, 0x525cc8fb, 0xb973fecf
.word 0xcc8836ce, 0x4169d7eb, 0x5e87f054, 0x9b793ada, 0xda334bfc, 0x41e80d6a, 0x5d5da627, 0xa49ba475
.word 0x6d0aba17, 0x473792f2, 0x15d6c9a3, 0x16971370, 0x035adacf, 0x95836812, 0xee1a89bd, 0xd0737b8c
.word 0x51b37574, 0x2eafd966, 0x48d944b7, 0x1c947c73, 0x66147def, 0x3b75d5e9, 0xb890e2bd, 0xb97ca348
.word 0x1cc3cfe1, 0x958ac92f, 0x1a24d4c3, 0xb71ff6ce, 0xed4848b5, 0x781e7e9a, 0x31fd4342, 0x67eef89b
.word 0x82948647, 0xcbb6dfea, 0x858587ee, 0xf91f919c, 0x8a4d0b86, 0xbed1660d, 0x2cc45645, 0xa208a04a
.word 0x4c14a304, 0x57ea9b6c, 0x3f9c0125, 0x743e9587, 0xa777a5ee, 0xe6bbdfb5, 0xaa5b57af, 0x3de6b738
.word 0x8a06c026, 0xaac309b7, 0x08c13349, 0xd8411efa, 0x09901fcb, 0xad6db264, 0x598dd029, 0x51162698
.word 0xa28fde4e, 0xbe0ba946, 0x3c2a289c, 0x738a40ec, 0x7dcd8ec0, 0xf80c0a00, 0xc5dc021c, 0x324ad953
.word 0x2454fc19, 0x9c459050, 0x3f11601b, 0xa38f5983, 0x385706a0, 0x8bb7fb86, 0x4f154300, 0xee9d28b5
.word 0x6bb87ca5, 0x69f1baf4, 0x5c21940c, 0xce9ba8fb, 0xbd2bb912, 0xda391217, 0xd6365348, 0x8839a446
.word 0x3dd58458, 0xb043b4a4, 0x21454ec9, 0x4bdb87eb, 0xc4e26431, 0x197b8ac9, 0xef798fd6, 0x003db165
.word 0x8e3c432c, 0xb9610eb8, 0xfad2f323, 0x5646988d, 0x90dd8bb5, 0x2dc28b02, 0x360803b7, 0x92f946dc
.word 0xc6303ddc, 0xe1c2414a, 0x69c12e03, 0x90b606d8, 0xb23cf44e, 0x13223b8a, 0x94b84e8c, 0xad5ee169
.word 0x46d85593, 0xa623d8a5, 0x5a1e2e21, 0x90e852f5, 0xe7ea889b, 0x62212f72, 0x693bb8d6, 0x75fb604a
.word 0xb406bb77, 0xa8080350, 0x465dc9c3, 0x75552171, 0x0c275f81, 0xfac8ba1c, 0x79311324, 0x46ea2697
.word 0x402a07a8, 0x45366040, 0xfd40a306, 0x774c6f25, 0x3bb6ec11, 0x73c65a3b, 0xc685013a, 0xaf58614c
.word 0x88c070ac, 0x9461bc27, 0x1101746c, 0xb9fe12dd, 0xc14bf19e, 0xd4fea64d, 0x0e2b74a6, 0x0835a8fb
.word 0xed00d605, 0xe1fae3d1, 0x7dd1a131, 0x67807d22, 0xebf018df, 0x53f9f3b7, 0xc0147ec6, 0x771de84a
.word 0x08982e8a, 0x9ecfe764, 0x047e3a7f, 0x19174b71, 0x7a85e658, 0xdc25ea78, 0x3cdfa06f, 0x19688b87
.word 0x0ceb42cc, 0x7530f71a, 0x96c54bb1, 0x7c5e0f62, 0x998382c8, 0x0b846b8a, 0xa22d76ce, 0xfe235792
.word 0x5cfde82f, 0x13d60b42, 0x9b5429ed, 0xcf3929f4, 0x5729c357, 0x2d194549, 0xd3a2515a, 0xbe93703a
.word 0xc2622f70, 0xef03cac7, 0x9debe8d2, 0x39970ef7, 0xa9b86d18, 0x044a7195, 0x1b70d6c1, 0x2b597805
.word 0x41fd938d, 0xc4c1cc5f, 0xce280773, 0xa02f9c6d, 0x975e9806, 0x2f53b397, 0x06f7373e, 0xe7ab0d4d
.word 0x6c6d02d4, 0xcdbd4821, 0x434a7932, 0x9b6cf464, 0xead574bd, 0x4ce557e5, 0xcec43327, 0x652047ed
.word 0x963751bb, 0x6852b3f9, 0x34fd396c, 0x8d35ca77, 0xe08691fd, 0x1d6e0156, 0xc4fa4a9b, 0xfc77e5fd
.word 0x4811a348, 0xe44c5dbe, 0xaeb3ba76, 0xa851ae3d, 0xadd62c23, 0x39abbb2f, 0x0dc3d59d, 0xb5622c7c
.word 0x45f20fb5, 0x3644d58f, 0x42e7a890, 0x6934cbaf, 0x7dcbf49b, 0x9f5d5283, 0x36bc83fb, 0xcaa23eee
.word 0xdeb55bdd, 0xc4465a93, 0xe672e62c, 0x55a62214, 0x159efb40, 0xb50d3a4f, 0x3e25da11, 0x12dbaedc
.word 0xc30e610d, 0xdf294db2, 0x6a115006, 0xdda0fcb9, 0x1f7b6abf, 0x3b55d5c5, 0x64d07c2c, 0x38655b62
.word 0x5319b4cc, 0x72a886dc, 0x205085e2, 0x420b32c3, 0x5a1a4217, 0x5a371ff9, 0x3edcc0a7, 0xd0030fda
.word 0xbaaa76bf, 0xb02c8808, 0x7e41f5f2, 0x8f8357e9, 0xce5b49cf, 0xb9c3b3ab, 0x7f2c0ce6, 0x0a1386fc
.word 0x9edf9fdc, 0xc881eec4, 0x462f887c, 0x9f7ae17f, 0x166d5e7c, 0xb53bdb42, 0x313d84fb, 0x966151c8
.word 0x2c948baa, 0xfc3b1f9c, 0x6479a2ca, 0xd42cbfcc, 0xca204d70, 0x13b848e3, 0xa7e54377, 0xcf2f8d2a
.word 0x977cb9f2, 0xd7694490, 0x85508813, 0x54abcf11, 0x56676e3f, 0x60587252, 0x0e3ced18, 0x87ea8fd3
.word 0x145acae8, 0x7c706d7b, 0x8ca52308, 0xe3d27a8d, 0x491e0b13, 0x2ebea02f, 0x40cbdaa1, 0x44218f49
.word 0xb48e6ed5, 0xe643f920, 0xd967d253, 0x79c98818, 0x1fd68ad3, 0xd4e00804, 0xf73f6e09, 0xf8c99170
.word 0xcd1f477c, 0x477647eb, 0xdcb1d40f, 0xcc96c4ae, 0x22c67a88, 0x04095579, 0x2714b8c9, 0xbbabe8b6
.word 0x8eb5c1a5, 0x70e13eb6, 0xe4abcba6, 0x86c83159, 0x25e16919, 0x22bb5a0b, 0x6ea8a16f, 0xe0ec7389
.word 0x95bb3f93, 0x7fd873df, 0x595d52df, 0xb3cc9fe3, 0x3d82b2d1, 0x40c9fef5, 0xf9712a76, 0x78cda440
.word 0x0a4cb610, 0x80993c28, 0xf5830dc5, 0x8ad6221c, 0x0f5e8cfa, 0x57349d87, 0xf9f64ec6, 0x7d63e5d7
.word 0x84b52094, 0xd1e9eda1, 0xc8139845, 0xe75c9dfb, 0x342b8cc1, 0xf4bb7bb4, 0x9a88bee5, 0xc47609fa
.word 0xbc116a83, 0x6da8ef85, 0xc663b0f1, 0xbccbd7fa, 0x9f8f3044, 0xe4adce09, 0xe80041fd, 0x27a2d0de
.word 0x30b011e2, 0x0b033c19, 0xa2faaa6e, 0x99a96471, 0xbacc6dc6, 0x049a8e13, 0x2537242a, 0x7bcaf1b5
.word 0x245831bb, 0x7cf62318, 0x74351de3, 0x2662fc85, 0xde162be6, 0x484346a9, 0x24fbb3b7, 0x2c8000dc
.word 0xaf357a86, 0x1488bd78, 0x078aed66, 0x45dd4221, 0xe0ac2525, 0xa6872c7b, 0xd070f7d5, 0xa1231d7f
.word 0x0fd07ada, 0x91113050, 0x0977344c, 0x388d560c, 0x389ba2a3, 0x940493bf, 0xe1c0620f, 0x01448771
.word 0x52912248, 0x33cd6e42, 0x4317cd47, 0xe4481f55, 0x1d4ff5d4, 0x80fb7abe, 0x768be171, 0xcef4d7b5
.word 0x8c0b5e75, 0xac630116, 0x4b84e36c, 0x80d1b893, 0x6c70471e, 0xc8650d89, 0x31f39a4f, 0x3f9c47b2
.word 0xd0dd8612, 0x7c99e212, 0xe1bf1930, 0x66b7bde4, 0xe7965aae, 0xeea9b1d0, 0x9393e069, 0x51b6c03f
.word 0x6edaa989, 0x3b2cf3f4, 0xd0609f80, 0x4a315294, 0xa7c29453, 0x0e4e7ef3, 0xbe726f53, 0x7cf008f8
.word 0xcec997a9, 0x84c696a3, 0xcb27e69a, 0x40912e65, 0xa39acc90, 0xbe92f173, 0xc6931d2b, 0xb23fb8d8
.word 0x469decf4, 0x432e39f9, 0x14b05b7c, 0x1ba4a447, 0x14220789, 0x041155be, 0x08230641, 0xd3be2f71
.word 0x9f80deb8, 0x9476b0a5, 0xe689d15b, 0x5d15b9fe, 0x9aa73126, 0x640f5d1b, 0x0b4781c1, 0xa237b362
.word 0x03ede57c, 0x7df646da, 0xd2f480f5, 0x4d2a39c9, 0x3eaec7c4, 0xf8675a3a, 0xb7ccf7e7, 0x3a636097
.word 0x336959f5, 0x78487b45, 0xe1c9107c, 0x560da875, 0xf6e39571, 0xe1e2931e, 0x0b06db68, 0xee514362
.word 0xa0f2094c, 0xd5a77c82, 0xf8484f01, 0x5f231813, 0x362595d7, 0x0681ee1c, 0xf25ef46b, 0x357de189
.word 0x88a27f3c, 0xac3780d3, 0x63bfc534, 0x71f9288e, 0xaefacac1, 0x052e16da, 0x2da20eca, 0xd14b9a0d
.word 0x6e514d8f, 0xa8bfe278, 0x5c58ec61, 0x355fba68, 0xd4de0dc8, 0x83ca19ba, 0x48628c39, 0xd27ca78c
.word 0x86d68f93, 0x2b625b95, 0xa6393f34, 0x9d659634, 0x1faec2e9, 0xeea8cfb1, 0x86249ea3, 0x3e30da0b
.word 0x1af68864, 0x7ff88c96, 0x4c4c6787, 0xf2919469, 0x43f7a304, 0xf1d508b1, 0xf1b6f71b, 0x6642be53
.word 0xbd376657, 0xd04cec1b, 0x43a13439, 0x18da2f73, 0xeeb540d1, 0xcd267775, 0xb870d865, 0xaabb182f
.word 0x12c3af2a, 0xdb56ac61, 0xb148fe6a, 0x9e1044e3, 0xbdd495d7, 0x92612b49, 0x0c371842, 0x200122d1
.word 0xcbb75057, 0x1a766106, 0xabb177df, 0x4b5b9ec7, 0x66cad9e0, 0x395e188f, 0x787462b9, 0x36e67492
.word 0xf01987d8, 0xd667bb40, 0xfe795578, 0xb62536ae, 0x5cc6c089, 0x2b2af81e, 0x019b6883, 0xf3ba6499
.word 0xafbb9995, 0x904d4657, 0x57889731, 0x17447f91, 0x173d7afc, 0xd92909b1, 0xdb954f8b, 0xa7ab94cd
.word 0xad97fc0e, 0x5fdf2669, 0x575a1390, 0x7d0ed12e, 0x4bba66f6, 0x8c620db5, 0x5f4b420d, 0x65c04803
.word 0xbd7a0a6c, 0x0a44990e, 0x766fcff9, 0x9f7887a6, 0xf3cfa99b, 0x131335c6, 0xf5f5b5ef, 0x814219f2
.word 0x495c7cf9, 0x40f0ebec, 0xbe175eb0, 0xcfae4c62, 0x5f74a53f, 0x22b45fe5, 0x5475a7af, 0x7abe3919
.word 0x9a324582, 0x2ed7877f, 0x5e953020, 0x78f6f32a, 0xcf2f3c80, 0x7ec973a5, 0x8ba8a390, 0x510c58b0
.word 0x0e23cab4, 0x1d76a6b0, 0x49798815, 0xeddc8d68, 0x05bf3556, 0xc20702b8, 0x6181aec8, 0x327c2c52
.word 0x1eba628a, 0xdfeb5b45, 0xfe078af1, 0xf63c99d7, 0xebf306d0, 0x3a5ff73c, 0xbfc4fc04, 0xf5cab61b
.word 0xf8ae1951, 0x1831419b, 0xf6c2141c, 0x36c2a711, 0xc15e7ec6, 0x4edcef73, 0xd2ee2455, 0xdcc34234
.word 0x2d5208f1, 0xe4724104, 0x8d1a7be5, 0xaeeb85e2, 0x66df3b29, 0xf54cc97a, 0xd837ae9b, 0xa531a542
.word 0x09e56125, 0x5beb25cf, 0x9d43ecd2, 0xfcd51058, 0xd5ee5224, 0x575bf9b0, 0xc613a9b3, 0xb91869bc
.word 0x2618c60e, 0xc408268c, 0x5074b247, 0x5c2f3fec, 0x82239203, 0x8e05bb50, 0x907ebfa2, 0x683b6f3b
.word 0xb97f8d1d, 0x6d3098d7, 0x438abdcd, 0xaaa3c6e3, 0xe20e08ee, 0x00b75ead, 0x3dc454a3, 0x0940ee5f
.word 0xa899de32, 0xdd029f5e, 0xf986b398, 0xa2e4f582, 0x83b2daba, 0xa1cbe9c2, 0x262bfe2b, 0x30e7de58
.word 0x2bdf0a34, 0x42e192e4, 0x3daf2a62, 0xc4d1a97d, 0x6bf0b2c2, 0x5f27e25f, 0x99b971e0, 0x93b85c03
.word 0x0d4343f5, 0x371c1a6d, 0x4d25b555, 0x5d7b6d20, 0x5d30e157, 0x96a5c6e2, 0xccca8bad, 0x3f909a25
.word 0x562d1616, 0xd5050641, 0xf55e9da4, 0x57670334, 0x4cbc3994, 0x3517ee4d, 0xa6d5e8f1, 0x195306d5
.word 0x4ae02a0f, 0x7175f703, 0x886ea42d, 0x4b6e52ea, 0xe5801ca9, 0xae78e40b, 0x28a0619d, 0xd80fc7a2
.word 0x5a02d847, 0x2188d78e, 0x3f5e53eb, 0x569962be, 0x2542fad9, 0x9d448e7e, 0x5cbebb43, 0xed319f4c
.word 0xde032908, 0x9506e339, 0xecb62871, 0x523a39f0, 0x531595dd, 0xc1c85815, 0x11cab8fa, 0x0490cc33
.word 0x80b6639a, 0xeb498940, 0x35d36a1f, 0x0392ba6f, 0xd26a9c34, 0x3c47b201, 0xec2b5be9, 0xf04c9a0a
.word 0x0caa6613, 0x1bf84ccc, 0x02adaa74, 0xcb796c1a, 0xb9cacd99, 0xc0074dc8, 0x8d027556, 0x8cbcb355
.word 0x009bf89e, 0xde180b04, 0x1c218577, 0x997aae8e, 0x1d1b2720, 0xee4ef8d4, 0x6238e8c8, 0x2da7869e
.word 0x9f27cc9e, 0xf79ad627, 0x5b88b9c4, 0x30bb6342, 0xdbf854f9, 0x36bd0799, 0xddd864a1, 0xad17101d
.word 0x4fe596f8, 0xa4dad815, 0xb291537d, 0x27ab96a0, 0x8adaa201, 0x07a45289, 0x6675467d, 0xbf451692
.word 0xcc8e47d2, 0x1a3dc48a, 0x2290295c, 0x65393f2c, 0x866e61a7, 0x0d60baf4, 0xa4adf186, 0x18412887
.word 0x7c1e5dfe, 0x0d73f62d, 0x1f5d1053, 0x73e0ce02, 0xaf830716, 0xde35565a, 0xf67b2f50, 0xb7e0bf5f
.word 0x0c141e25, 0xdc207876, 0x8a26af42, 0x364b3337, 0xfe7f8ad1, 0x06935cf0, 0xb3313349, 0x61f6b249
.word 0xa1f0e512, 0x836326ee, 0xb831eedc, 0xafaec476, 0x3c1755a3, 0xa5f25f28, 0xd271b7a1, 0x8632f2d6
.word 0x8d8f895e, 0xfdc20448, 0x4c52d245, 0xc84169c0, 0x5511610e, 0x3d78d026, 0x132c0ac5, 0x3ce15515
.word 0x1a6e24e2, 0x56c8cebb, 0x23dff587, 0xe3780bca, 0xc262fd64, 0x5b4e48d6, 0x2b45b7a9, 0xca289eb1
.word 0xa1b3d1af, 0x62c23783, 0x6f987bc5, 0x06976512, 0xea37ea8a, 0x3fc2d97d, 0x494629c8, 0xc906e87c
.word 0x7960527d, 0x8f509541, 0x8a4250b4, 0x1f65f9b6, 0x45662c00, 0xa6f6f258, 0x5bc582ab, 0x6a2176bb
.word 0x569830b6, 0x2185d22d, 0xc32b1ab3, 0x0ac7956f, 0xccc3e7cd, 0x602bb2d1, 0x2690800a, 0x61fae594
.section .region_1,"aw",@progbits;
region_1:
.word 0xba43bb85, 0x666b6807, 0x6ab0e089, 0xc6a49116, 0x14603f9d, 0x526a939f, 0xbda9122e, 0x279495f8
.word 0x63414401, 0xc24973d9, 0x59b837cd, 0x4cfefeec, 0x1d3bcadb, 0xc803b8b3, 0x34160183, 0x3a66f63b
.word 0xc8e8fa2f, 0xbfcfb273, 0x05d41200, 0x992dea15, 0x5298e4f3, 0xd0dd77b9, 0x7b7887fc, 0x5a6aa36e
.word 0xcf860349, 0x38a991d6, 0x81923cc1, 0xa1b1776e, 0xc9af428b, 0x0953f09f, 0x33ac819a, 0x8b8e9f40
.word 0x89e0b959, 0xd5557eba, 0x4c2a9ef5, 0xa341fd9b, 0x8397443d, 0x2ed01aaf, 0x621b1f8e, 0xae36b6fe
.word 0x01d6f77a, 0xba632aac, 0xe1565749, 0xdbd16a43, 0x03b6d791, 0x2a3ad8ae, 0x02460b59, 0xbd380577
.word 0x91123770, 0x37367d9c, 0x6eb8b52c, 0xf950caad, 0xe80e2417, 0x0a2c4a51, 0x3ae6bb54, 0x202c8046
.word 0x42c11179, 0x73abb798, 0x2754fa64, 0xe40594c5, 0x4b76513c, 0x25d19f4c, 0xf8a5530f, 0x8d117d90
.word 0x1a6fa24e, 0x18eab5fe, 0xf9cf5189, 0x7a09e899, 0xd660a242, 0xa6e12a54, 0xce837fb3, 0x3ed8a6ac
.word 0xad649762, 0xc9b5cb2c, 0x5d44435e, 0x9baadded, 0x88f06ace, 0xcfd3ade9, 0x67acbbf6, 0x05c609c8
.word 0xbad7888b, 0x361c04c2, 0xa2fdc653, 0x1973c91c, 0x417a7fc6, 0xa6042588, 0x9ca90ea4, 0xa9dfd96a
.word 0xa9cf6e7b, 0xae7a5678, 0x0f5484f1, 0x4dcccbfd, 0x235be365, 0xa40b08dc, 0x42cae80d, 0x3bfe516c
.word 0x4ded2af4, 0x23fe680a, 0x716a8d74, 0xd6b3d8ca, 0x0033edd1, 0xbaec8036, 0x876650fc, 0xfa3567e1
.word 0x207c7bb1, 0x5dd7eb8d, 0x07c8e8cc, 0x0fc3870a, 0x4965562f, 0xd92f984c, 0xc706a2e3, 0x23010bb0
.word 0xfbc7aee8, 0xe28edd4f, 0x770fa938, 0x695bc333, 0x43a891c0, 0xa3cf61a4, 0x235c1831, 0x2ab4717f
.word 0x38dfa178, 0x6c222700, 0xed21585f, 0xeeed4d6f, 0x8ef1dd88, 0x9c7bd56f, 0x495215e2, 0x86e5844c
.word 0xb4982902, 0x9453fe2d, 0x8d0d5c59, 0x20aee7e4, 0x5d749fe0, 0x4c3a651e, 0x33102f51, 0x2eb3a143
.word 0xdfb5fda6, 0x6ece7570, 0xb63aabfc, 0xb8ca18c1, 0xb423c036, 0x2bc61c68, 0x8667b9f2, 0x0190ae6b
.word 0x0b095be7, 0x23046eb1, 0x737c1874, 0xe17b362d, 0xa340d3fc, 0x3a40b7c3, 0x751aec77, 0xdf22e14c
.word 0x4c0fa85a, 0x0071ca5f, 0x39c8089a, 0xb9cefc97, 0x12de6cd8, 0x8b5504e1, 0x6f98697b, 0x083e82f8
.word 0x25aa8e16, 0x4d489a7b, 0x344759f8, 0x8a2f57b7, 0x11e1ba5d, 0xe6f791f1, 0x8e609380, 0x7aec9ee6
.word 0xddc400dd, 0xcb586ca9, 0xe6549f20, 0xe1f8615a, 0xe689b4dd, 0x881119e5, 0x02303d37, 0xe0603c97
.word 0x15accf5f, 0xddace76f, 0xed3cdc25, 0xe5912f24, 0x8a5c12e6, 0x8433456b, 0x859cad2f, 0x2a1e24cc
.word 0x384ab729, 0x08b6515c, 0xe9203d59, 0xc4544631, 0x6ef956ea, 0xc8d1f6b8, 0xba058ed6, 0x5e90a341
.word 0x01c0d3ba, 0x5b920ef5, 0x1aeded5a, 0x532fb33d, 0xae9d20ac, 0x5669fb94, 0x331ecdd8, 0xf4aaefbe
.word 0x69213694, 0xa8fced63, 0x39163ddd, 0xbb9dd345, 0x4696131f, 0xf25deec0, 0xa83ffda7, 0x7bdbe8d3
.word 0x33de6017, 0x50baa289, 0xb5be198d, 0x0d2423e4, 0x1a1f67dd, 0x6f446e4e, 0xf67e17ca, 0x5c874d54
.word 0xc62302c1, 0xca686e2d, 0xf55f3c95, 0xca5899f5, 0xd8eba42d, 0xd420c55d, 0x4becc42f, 0xc5a0d07a
.word 0x10923c33, 0xe08cdeab, 0x8ef3afd9, 0xac97c045, 0x928200f9, 0xbf2ecd5a, 0x20c7cc61, 0x243edb78
.word 0x4b27abe7, 0xc36d2ad6, 0x3b13677c, 0x1b6a4bde, 0xafac512f, 0x64a092e5, 0x21fed788, 0xb2902f08
.word 0x488c1bf8, 0xc34f29f6, 0x9f46040a, 0x458fba9b, 0x5c6159f8, 0xda514f87, 0x32e22a56, 0x741dd45c
.word 0x0f64fd3d, 0x2b50598c, 0xe91ae943, 0x095fa66d, 0xb66b9ce9, 0x7d221405, 0xd4daf9a6, 0x5c65a8c8
.word 0x6629a0e7, 0xf2e0fe6b, 0xfdd35250, 0x4050731a, 0x26b6a454, 0x80b4b19f, 0x90ea96c6, 0xeb941c8c
.word 0x3da11f7c, 0xa22d53eb, 0x84fb6a3e, 0x330c91c0, 0x899579a4, 0x86f9d341, 0xd5fb174d, 0x3ee71bf8
.word 0xe5ab21d5, 0x0e7587c4, 0x7ef61423, 0xc3798344, 0xd3585ce7, 0xb92e2629, 0x26e987a8, 0x41ab36ed
.word 0xd258d0db, 0xba9854d8, 0x5e1e31b1, 0xaca1b9b4, 0x5ef09f5c, 0x5c5a72e4, 0xdd214d75, 0xabd66eaf
.word 0x4ef99ce8, 0x629a9708, 0xb6a10922, 0xdf26b86e, 0x9173e509, 0x2da7e907, 0x52cab443, 0x0813b498
.word 0x4b95bc52, 0xc99436a7, 0xfecc6168, 0xd5584dd2, 0x94d50e17, 0x0e29d6db, 0x11dac1f4, 0xaa5db21f
.word 0x35093934, 0x714a7278, 0xcee6d6b7, 0x9bb69c7e, 0x1f1b1b43, 0x7456768f, 0xe4edbe71, 0xc1f8c165
.word 0x423c6791, 0xf095836e, 0xe8a39ab2, 0xa8e8e120, 0xd5488627, 0xdda6b85f, 0x241c1f1c, 0x321bac77
.word 0x664fb319, 0xd8ed3ae0, 0xb5147534, 0x296a4df9, 0xa6e17584, 0x3f406a88, 0xbbd98dd4, 0x4ec2b3a9
.word 0x906cafb4, 0xb01cd8c1, 0x84c8e0f3, 0xa314febb, 0x667bfd71, 0xbecfafe1, 0xbdc1eff5, 0x7f42d5cd
.word 0x56c394f3, 0xb50b12d9, 0xb931a495, 0x7d6122d4, 0xe6ad98fc, 0xd886f6a3, 0x406202a7, 0x3d4e2a02
.word 0x7e8f4606, 0x751d6002, 0x0c119a04, 0x81ef8847, 0xd019833c, 0xb7f71067, 0x54d60f55, 0x9769e0ce
.word 0x0c046c9a, 0x7186aa85, 0xfab85f6e, 0x5a44aef1, 0x385738d6, 0x7435fbba, 0x0d504041, 0xf29c5c1d
.word 0x67610722, 0x28a2c21b, 0x36b327a0, 0x02edc313, 0xe6b1e03c, 0x48b99d33, 0xd43c3a4a, 0xa7fee1af
.word 0x8785a84c, 0x22a56ef6, 0x35e8e3d1, 0xa9e77c98, 0xb5c461a4, 0x06555f8a, 0xd89d851f, 0xa97505bc
.word 0x17a657fd, 0x19de5d6e, 0x7c372efc, 0xdc077098, 0x3a679ad2, 0x669ee8c2, 0xd6c5608c, 0xc76ad85a
.word 0x5708d010, 0x1d7734e5, 0x236585fe, 0x97b075dd, 0x86c6b4fb, 0x66a624ee, 0x1d31b49b, 0xfb6f3dfc
.word 0xb635c383, 0xef47a462, 0xf1e39c93, 0xbd365371, 0x604db1c4, 0xdc33d563, 0xb3978889, 0xd00d596f
.word 0xb6305eb7, 0x9888a380, 0x52ab752a, 0x7b189f3a, 0x8cfeb6d4, 0x1f8d8d73, 0x6cb2429a, 0xddcb28e2
.word 0xa1bcad26, 0xe8151352, 0x68fc95a5, 0x06b6f650, 0xd4d70677, 0xf2571a13, 0x69cf00e7, 0x7565176f
.word 0x850fb49a, 0xe8a4f51d, 0x4bf0aaf7, 0x100c7635, 0x45969636, 0xbe395bee, 0x27c7415d, 0x36e09a35
.word 0xcd93ba90, 0xfcb7b77c, 0x59125bc5, 0x60324585, 0xb7be8466, 0xbbd0b448, 0x59237cfd, 0x45ba0d17
.word 0xa150a26d, 0x10d8b638, 0x75bc0ac2, 0x3c698fa3, 0xf737c308, 0xb827b614, 0x33d2a9d5, 0xd7be5b1f
.word 0xa08813b1, 0x409807f0, 0xdd69769c, 0x54c61c05, 0x1c5e8915, 0xbd2ce4e1, 0xae879ef5, 0xaee375fd
.word 0x1dcdda37, 0x65866405, 0x28742a62, 0x6f70fbb9, 0xbc4c2192, 0xba30e61f, 0xf4d1160a, 0x4576b943
.word 0xf1ead6d2, 0x53fbe967, 0x5a05313c, 0x14b1b7ea, 0xd2299111, 0x099fbe80, 0x9e93cfa0, 0x99dec090
.word 0x078f06c4, 0x4d0e4307, 0x75a983e5, 0x355dc4cd, 0xed3a5a07, 0xce994873, 0x3ab20585, 0x9e1c1d41
.word 0x99166782, 0x52e5234f, 0xb68c6dd0, 0xb298964a, 0xe99b67ae, 0x6dec773c, 0xe566a0af, 0x9c117447
.word 0x1101c54b, 0x650a3a47, 0x1fc66cf9, 0x0e75a6a2, 0x5c1f5bf9, 0xbf63d521, 0x2fa4471b, 0x1bf74609
.word 0x35aaf1c3, 0x5873bd49, 0xb319c10d, 0xd2c31dd3, 0x71e26e11, 0x65c29624, 0x4710efe3, 0xd50d99e8
.word 0xf5564d60, 0x8c3d0a97, 0x55d9a94d, 0x50e213d0, 0xcdbfa391, 0x6260e96d, 0xd4d151b5, 0xab3e0695
.word 0xf0f3de30, 0x901b49f8, 0xbecf8fe5, 0xabb58d2a, 0x3a76bc97, 0xe33b1abc, 0x4e5016ad, 0x75e2b56a
.word 0xef835259, 0xc0475795, 0x27e28c38, 0x3028a042, 0xa1a55460, 0xab77562b, 0x49daae54, 0xb4b3bc5c
.word 0xbedb5226, 0xf4144286, 0x9a89a676, 0x7a93355e, 0xf785dc75, 0xcbf99375, 0xf9869bf2, 0xb0bdc04c
.word 0x0d985c0a, 0xbcf77030, 0xcdc22977, 0x743752ad, 0x27abcdec, 0xe634b72b, 0xba6f8444, 0x61a65f3e
.word 0x7088dc7d, 0x1c6fbb8e, 0x4b4d0203, 0x42d1dde9, 0x4847fdd4, 0xf7741b30, 0x94c1661a, 0xd49d7721
.word 0x5ac343f4, 0xcf8e96c9, 0xc0f95d1e, 0xa1a27643, 0x5f94a724, 0xc2b7cbdc, 0x76af6ee7, 0x93a21f6b
.word 0xc2e8ef83, 0x3504066c, 0x76ee44bb, 0x2ab23fe1, 0x07259cb0, 0x21837088, 0x7fe2c21c, 0x21ca829a
.word 0x84e0c44d, 0xb579503d, 0x3e13bcf5, 0xc9ba21fc, 0x7526fbe5, 0xf253a893, 0xf6249f2f, 0xd1791505
.word 0xaf381853, 0x9e5f53aa, 0xb14b66a5, 0x8b700047, 0xad177d33, 0xc5309b19, 0xaeec931a, 0x41c12aa5
.word 0xa9f12e5c, 0x53169599, 0xab832a9e, 0x8e6df149, 0x64a2e370, 0x31269c8c, 0x4b640494, 0xefb1bdcb
.word 0x3f5ceb11, 0x1e63ca64, 0x230e6199, 0x10403f17, 0xc22e0057, 0x6bce40c9, 0x2166ea2d, 0x285d442e
.word 0x445adcb4, 0x69347500, 0x7eb86a03, 0xcca6a326, 0xaa1b47b9, 0x02382a79, 0x3309496f, 0x92ab2eb5
.word 0x33bf6a79, 0xb0c6c9b8, 0x6b19aa1f, 0x95b9e572, 0xbed9af80, 0xa00a3bd4, 0x5b889ab0, 0x6622b212
.word 0x5bf3e13a, 0x51818231, 0x052357e8, 0x40526c1d, 0xe4c13295, 0x76b26cef, 0x07cfa462, 0xbfceee98
.word 0x17fa83ee, 0x0c970520, 0x3335f3b0, 0x9c8fc061, 0x3e4ead16, 0x6fa89301, 0x4c37917d, 0x0e078b4a
.word 0xca19bece, 0xd187576e, 0xc85080e6, 0x2c7d3587, 0xbafdbde6, 0xec050e2c, 0x66d70d39, 0x828cb883
.word 0x7db857db, 0xf6e5184b, 0xa379ddc3, 0xf57a172a, 0x2ad78b0e, 0x2ef1188a, 0x194eb8c6, 0xee748236
.word 0x03b2419f, 0x6c4da410, 0x5e0a2123, 0xb89ac65a, 0xaec5c3a2, 0x12e42e5e, 0x71469dc3, 0x9d3c9d4c
.word 0xb316cf49, 0x986def88, 0x6582a627, 0xc4e65054, 0xd8807f88, 0x3639879f, 0x6db74498, 0x9234eb4b
.word 0x9918eb3b, 0x7ae51f14, 0xd68dbaa4, 0xad6d3e8b, 0xbf0364d1, 0x73c87e0d, 0xacbc1b84, 0x36e1a12e
.word 0x05c169c6, 0x2e5e0192, 0x52364b48, 0x7004e9d7, 0xafb26201, 0x5d5710e3, 0x2e4df23c, 0x19d0be09
.word 0xdf9577cb, 0xf31377c8, 0x846816bb, 0xbd60e552, 0x6d8a0f29, 0xa82026a4, 0xc3dbba12, 0x248f08a3
.word 0x43f30d58, 0x867335c9, 0x9884a051, 0x0354cd66, 0xcd4bad13, 0x6f2c13fd, 0xa65cd88b, 0x51c6666c
.word 0x22164149, 0x0242f316, 0x0ec98f31, 0xab67b7d1, 0x8ed1a632, 0x9d23c380, 0x582d2de7, 0x9eaa0661
.word 0xfefafa74, 0x59c1612e, 0x0f78851e, 0x6cceb85e, 0x7b4c2dc8, 0x1c6c9bc3, 0x2805ce86, 0x22254952
.word 0x3ce8655a, 0xf7f8d02b, 0x8ef7b8d1, 0x37e19ec9, 0x8eef734a, 0xc4757ed2, 0xc9a03a26, 0x43ddfdc4
.word 0x4e4a1b32, 0x4729a6ad, 0x7898b8ad, 0x5e5e2ce2, 0x37be779b, 0x481736cd, 0xb167b905, 0xca3542d2
.word 0x3311f5ce, 0xf4fc3485, 0xcfbf0ff3, 0x87a222e7, 0xcfbe638f, 0xb8dd4afd, 0x7db8d9cc, 0x5a0fbc5f
.word 0xde13c8d4, 0x7e279f73, 0xd2142678, 0x80ec97e0, 0x5a23fa1a, 0x37d00d46, 0xb67e910a, 0xdf1b5f79
.word 0x00aca444, 0xcc6f2523, 0x665a147d, 0xd5b21f6e, 0x9ced9d91, 0x02004583, 0x13577ff8, 0x6ba729ee
.word 0x98d54d68, 0x1b991ef7, 0xd70f817d, 0x7f67a874, 0x884d3460, 0x15b5126b, 0x61492e89, 0x9273900c
.word 0x1ee008df, 0x4cb2a505, 0x9c150d4e, 0x062474c5, 0x4aaecee2, 0x470e8b50, 0x7bbc8f54, 0x9be0e382
.word 0xe55395cc, 0x811eae0e, 0x0c6c77d2, 0xbb201440, 0xc0a4cddd, 0xc4ed248a, 0x97c856f8, 0xd9583f0d
.word 0xbf664f12, 0xac1af0a5, 0x172de3ba, 0x7342e24b, 0x7de7f71a, 0x48273936, 0x152d3a18, 0x586cb750
.word 0xdb071def, 0xd0591de8, 0x80023e71, 0x0fb220e8, 0x4fa1e2b9, 0xc3e2fd66, 0x34fa2a14, 0x36ee9ab9
.word 0x956ad506, 0xc9e62cc3, 0x3cdaa336, 0x605aacb2, 0x8d22a5b7, 0xb024a453, 0x4df337c3, 0x0806d0f6
.word 0xa41ecf2a, 0xac545b72, 0x247701c3, 0xab65da5b, 0x515b7a66, 0x377c7b3e, 0xa4e2070c, 0xee353767
.word 0xfcb54150, 0xb7f575a3, 0x2671d502, 0xbbe30ae2, 0xb029fadc, 0x213c15e3, 0x735d4c62, 0x2436f1f1
.word 0x4019be96, 0x6f6c9890, 0x9dd56566, 0x68f0fcf4, 0xfe056f60, 0xd36bcf77, 0x6ef18649, 0x8ca3e247
.word 0x916ac437, 0x6e70ee50, 0xe9d41635, 0xcde581b4, 0x90e11989, 0xb7bd2145, 0xa6f0d883, 0xb94b0c4e
.word 0xfba7b5fe, 0x380dedab, 0x8e6536bb, 0xcc24949f, 0xcf812ff3, 0xea040855, 0xec117ff3, 0x52feadf7
.word 0x750f9023, 0xd879c9b6, 0xdb571d82, 0x180577be, 0x421a1780, 0x007bf1ec, 0x39ef334d, 0x0f34fa41
.word 0x04eae599, 0xedda3742, 0xe660571c, 0xe97cc7a5, 0xb5b12b59, 0xe5f417d8, 0x0db4c6c1, 0x98b1d48b
.word 0x5bfda704, 0xa2d58218, 0x493f77b2, 0xf5fb4497, 0x7ffae5fa, 0x289ac0e2, 0x256f73ad, 0xdfb3bfa1
.word 0xf577b76e, 0x58bff79d, 0xea893f37, 0x03b4305d, 0x48e0471b, 0x5c4072dd, 0xb29d98ba, 0x337dd2db
.word 0x38e8ceb1, 0xb822d25d, 0xb2324c45, 0x80086f7f, 0x9eb14a82, 0x8ff00354, 0xc8178317, 0x5311c6fc
.word 0xf88bf3f6, 0xabd5d1e5, 0x2f1db20b, 0x1fce0ced, 0xf6ad93b2, 0x06d5b79b, 0x982b9f34, 0xae6cfbb6
.word 0x84d8a8d1, 0x5e78a990, 0xd77e3896, 0xb2fcc242, 0x91b0c32a, 0xfe48e908, 0x6ee3928e, 0x69fa586c
.word 0x7fe31860, 0xb848ac75, 0xc68faafd, 0x8a94de56, 0xed445bb2, 0x07c40589, 0x13dc0a67, 0x2448e636
.word 0x6d871b64, 0x8ebe23fc, 0xdbf177ce, 0x776b2f03, 0x524ca862, 0xe108fe37, 0x89384921, 0x269eb25c
.word 0x8e4a6829, 0x9758428d, 0x8aaf27cb, 0xa82d4cc2, 0x61aabbb7, 0xc7a602ac, 0xf54d9cd9, 0x7c140050
.word 0xf819231f, 0xfde9e811, 0x9915fa6d, 0x50fec23e, 0xab37a5df, 0xfde1e5fd, 0xd497f971, 0x546140eb
.word 0xec18237e, 0xa0a93c4a, 0x91546e17, 0xd9ada5fc, 0xe91c63f8, 0x9e6f40d1, 0x8598c765, 0xdc364144
.word 0x91707660, 0x051fc0e5, 0xf49d2d82, 0xa918cdfd, 0xa78bf8da, 0x951f7e65, 0x682b3ec4, 0x6285648a
.word 0xea640928, 0x0332c529, 0x63adbc3f, 0x557f0a49, 0xb094135a, 0x6a482a38, 0x5bc7fd36, 0xc55b4e9c
.word 0x2208af07, 0x816aabd7, 0xaaac3b5a, 0xf07e23c7, 0xda9fa117, 0xb806dd66, 0x29f1aa7e, 0xd3311961
.word 0xa663bdd6, 0xf2c0a232, 0xd6f75196, 0xfea3670f, 0xd2a1ea84, 0x28241ce7, 0xf69293a4, 0xf38a146f
.word 0x72c2feb3, 0x6538ee24, 0x06b421c0, 0x50f556f3, 0x17d76b66, 0x9cf360a2, 0x0511b755, 0x8078cf26
.word 0x877c8728, 0x2ed5ce26, 0xe741d8ea, 0xdc814244, 0x5156df45, 0x39a49607, 0x84f8d31e, 0x3e87decc
.word 0x7af8d84e, 0x1fa401f8, 0x1310bc6d, 0xd09efa4b, 0xc0b139bd, 0x7ee6af66, 0x6eccfaf2, 0xe271d089
.word 0x34b268c7, 0x98cb0ff4, 0xcb033108, 0x37f760b3, 0xeeaae12a, 0x63860a61, 0x1071644b, 0x98258545
.word 0xdc270308, 0x18eb3020, 0xca8ee5a4, 0xa41f7829, 0xb8fac72e, 0x560d414a, 0x40a2c893, 0x76d79fb0
.word 0xf61534d4, 0x4ef2111b, 0x99564956, 0x745831a7, 0x78af0c8f, 0x4737800d, 0xdf448b72, 0xdc561260
.word 0xc47d74a5, 0xb5ba996f, 0x937b13f6, 0x0f627035, 0x4bd051d1, 0xb03acff9, 0x0411cb64, 0x793278ab
.word 0xba906a00, 0xa2583746, 0x00b992cc, 0x2a493fc6, 0xb1b6020f, 0x5f9a1943, 0x2aae88a0, 0x6129d9f2
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
                  csrrw x14, 0x340, x14
                  add x14, x30, zero
                  1: addi x14, x14, -124
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
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
                  lw x1, 4(x14)
                  lw x2, 8(x14)
                  lw x3, 12(x14)
                  lw x4, 16(x14)
                  lw x5, 20(x14)
                  lw x6, 24(x14)
                  lw x7, 28(x14)
                  lw x8, 32(x14)
                  lw x9, 36(x14)
                  lw x10, 40(x14)
                  lw x11, 44(x14)
                  lw x12, 48(x14)
                  lw x13, 52(x14)
                  lw x14, 56(x14)
                  lw x15, 60(x14)
                  lw x16, 64(x14)
                  lw x17, 68(x14)
                  lw x18, 72(x14)
                  lw x19, 76(x14)
                  lw x20, 80(x14)
                  lw x21, 84(x14)
                  lw x22, 88(x14)
                  lw x23, 92(x14)
                  lw x24, 96(x14)
                  lw x25, 100(x14)
                  lw x26, 104(x14)
                  lw x27, 108(x14)
                  lw x28, 112(x14)
                  lw x29, 116(x14)
                  lw x30, 120(x14)
                  lw x31, 124(x14)
                  addi x14, x14, 124
                  add x30, x14, zero
                  csrrw x14, 0x340, x14
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  lw x1, 4(x14)
                  lw x2, 8(x14)
                  lw x3, 12(x14)
                  lw x4, 16(x14)
                  lw x5, 20(x14)
                  lw x6, 24(x14)
                  lw x7, 28(x14)
                  lw x8, 32(x14)
                  lw x9, 36(x14)
                  lw x10, 40(x14)
                  lw x11, 44(x14)
                  lw x12, 48(x14)
                  lw x13, 52(x14)
                  lw x14, 56(x14)
                  lw x15, 60(x14)
                  lw x16, 64(x14)
                  lw x17, 68(x14)
                  lw x18, 72(x14)
                  lw x19, 76(x14)
                  lw x20, 80(x14)
                  lw x21, 84(x14)
                  lw x22, 88(x14)
                  lw x23, 92(x14)
                  lw x24, 96(x14)
                  lw x25, 100(x14)
                  lw x26, 104(x14)
                  lw x27, 108(x14)
                  lw x28, 112(x14)
                  lw x29, 116(x14)
                  lw x30, 120(x14)
                  lw x31, 124(x14)
                  addi x14, x14, 124
                  add x30, x14, zero
                  csrrw x14, 0x340, x14
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .s_region_0,"aw",@progbits;
s_region_0:
.word 0xb2ef7d6f, 0xf47b7876, 0x4e45d971, 0x05bc6ff3, 0xd04f2be7, 0x75721bc1, 0x8df9bdb9, 0xf4929b3d
.word 0xb3ced5c0, 0x08927ca7, 0x5175794d, 0x81b12e15, 0x0a68157f, 0x2fe51941, 0x0de4e39f, 0x5f4d0eac
.word 0xf2518264, 0x1eb527bf, 0x624fd16b, 0xfa71df8c, 0xe3212292, 0x32ad7bd6, 0x7c5a5b69, 0xb4951f78
.word 0x510c4888, 0xcf8f9c4b, 0x86d7a78b, 0xfacf7da0, 0x75fcb81a, 0x6907c13a, 0xc23ec0f2, 0x31e2ada6
.word 0x161050a1, 0x8fc5655e, 0x98030809, 0xe1e6e08b, 0xe0227fa4, 0x250a2d28, 0x7986c7c2, 0xcc2b8b0a
.word 0x0a08d052, 0x4f709c21, 0x5e686cd3, 0x479ca79d, 0xbc6606fc, 0x44bdd24b, 0xe516484f, 0x30a3c0b4
.word 0xa6115a30, 0xeb61e35b, 0x06f07658, 0x0235d462, 0x9c5e4e8a, 0x5828f227, 0x68aff778, 0x53ac03c4
.word 0xdba2358d, 0xf74c622a, 0xb45fdb9e, 0x0806401f, 0x72bae9dc, 0xe76be5c6, 0x82fefbf5, 0x73b17c40
.word 0xb43f834a, 0x02839334, 0x6e96dfd9, 0x3436d859, 0x27e789a7, 0x06a3e34a, 0x273e460c, 0x5dbdacd2
.word 0xa3c49473, 0x3971895e, 0x9addc413, 0x13633086, 0x78347404, 0x1ddb7d00, 0x433b2c51, 0xcb17b480
.word 0x604fcf49, 0x14be8fba, 0xa8f53bb0, 0xf613422b, 0xd57e09f3, 0x5ff7cdcb, 0xb6c5030f, 0xe49b1e4d
.word 0xf1d58c90, 0xeb763a47, 0x50010483, 0x045eb21a, 0x5019bae3, 0x2cf1c4b6, 0x96db7488, 0x73f04b71
.word 0xed5a2cdd, 0xbe861c4c, 0x7ad86e4b, 0x0ee8651b, 0xb5e6f922, 0x60568e1c, 0xb317f96f, 0xe33b9f22
.word 0x4a2bcdf7, 0x3e9646e7, 0x6b2b8f2e, 0x37848662, 0xfcb98549, 0x77f2071e, 0xe5945c56, 0x1b0405b1
.word 0xaa0408f0, 0x50f4d098, 0xd7518d8b, 0x63763fea, 0xf71cdebd, 0x34b8d89d, 0xad2b38f9, 0x3f4df2c3
.word 0xaf60d19a, 0x2c269be9, 0xba87efe9, 0xa9474ee1, 0x0c2c1192, 0xb4ac10cc, 0xf69d9e31, 0x6584de17
.word 0x2225ad3b, 0x092b2c49, 0x774ce317, 0xefa5c1cb, 0xe842c8a9, 0xe9f7fada, 0x1d008696, 0xeef0f56e
.word 0xeb5cb798, 0x21fdc87c, 0xb71d32d6, 0x86983ea8, 0xf22d05aa, 0x45a1b1a6, 0x2a8f077f, 0xf9e3b696
.word 0x6dee1abc, 0x9284a8b4, 0x0d62bcba, 0x9942e4c1, 0xf28019c4, 0x78e45b10, 0x2d1509bd, 0xcb75bb9a
.word 0x625a2974, 0xbe934f9e, 0xd35e74c0, 0x95adacb0, 0xbec57191, 0x580da518, 0xfea09d8d, 0xc8a8be74
.word 0xd0e4bc88, 0x42335869, 0x2dce1d61, 0x8a5b7821, 0xb2db0a7b, 0xe518751b, 0x4eddd4fa, 0xc6ddc0dc
.word 0x352e5f0c, 0xa759a5e9, 0x6b9a4fc5, 0x5521e8a1, 0xb6d3f85e, 0xdc03fe4f, 0xacc1a27f, 0x6f884c66
.word 0x5749c0bd, 0xc9e75630, 0xee05968e, 0xef849eae, 0xd3606a7f, 0x8f22365c, 0xf41a8c27, 0x11ecbfa8
.word 0x7f6cd511, 0x7bd37845, 0x6aa08b16, 0xebd54742, 0x27e29a58, 0x558602bc, 0xa1c5ae2c, 0xd8edc4fa
.word 0x65007ee2, 0x6baf0e1c, 0x6bb083cc, 0x4ca5a8b6, 0x5e617288, 0xa6176996, 0xec3f1455, 0x750176a8
.word 0xda4d42e3, 0x5095ca76, 0x8f9bac93, 0x60004f52, 0x4c9283ee, 0xe36776b3, 0x5779d766, 0x1db229a1
.word 0x8ecd198a, 0x3f123b91, 0x4db1b26a, 0x52c5a3d8, 0xa8b931eb, 0x26d92371, 0xb6dfd2dc, 0x8a5e1e08
.word 0x0dfdc0d1, 0x41488255, 0xd1afce80, 0x13cffe74, 0x4e3c37b7, 0x7fc8918a, 0xd3a359d6, 0xb1785697
.word 0xe0024eee, 0xd828a082, 0xaefce36e, 0x4a25b073, 0x1afdf48e, 0x09ac3118, 0x05927818, 0x120a1f91
.word 0xab308349, 0xf488c13f, 0x02b0794c, 0x6dd5bc7d, 0x10431ffd, 0x00a66e33, 0x0d87d03b, 0x1440beab
.word 0x1648f090, 0x4b626c90, 0xe22e87de, 0x32645348, 0x8a75b219, 0x75768a7e, 0xf6fa9dd4, 0xbf911576
.word 0x76f16d55, 0x1e67b1e6, 0x414848d5, 0xc40dbd33, 0x873fded6, 0xdee8f2b8, 0xe6dddbf6, 0xfb8af2e8
.word 0x2854d587, 0xd74ca4e9, 0xd669bb70, 0x40c2d660, 0xde120b45, 0xcf5fa9e7, 0x11107188, 0xc954ca90
.word 0x3c1510d1, 0x36173db2, 0xc83a7c22, 0x5976c407, 0xb14de27d, 0xb57cdfd5, 0x11d0099f, 0xc721b738
.word 0x135c511a, 0xdcee8fec, 0x09fbd5ae, 0x6d1ba7e0, 0x66c6d8b4, 0x7147e605, 0xa6a0440e, 0xd80e62ce
.word 0xf2710566, 0x58db5d93, 0xc986ac18, 0xd49a9d5d, 0x10e507a1, 0x63599ac9, 0xfc1084da, 0x73847bc8
.word 0x366c280b, 0x020fa940, 0xc6c4f3e2, 0xb5262800, 0x580b62ae, 0x54017ad5, 0xb7e0f18b, 0xe204b67e
.word 0x0d2cdfd5, 0x5eb711bb, 0xc2f3e4c8, 0x544a964d, 0xb5bc7cef, 0x0cb4a46c, 0x2ce3080d, 0x659f9983
.word 0xd81b7a68, 0x18faa744, 0x41507a0a, 0xb7e169c9, 0xbb5a0110, 0xa9e323dc, 0xaa45ca39, 0xc5a48c1f
.word 0x41cd294f, 0x8b0b0cf4, 0x8c77b1ee, 0x04fb4f7d, 0x0084c0eb, 0xca24a990, 0xef12189b, 0x077602bc
.word 0x910d8431, 0x2a5b7c97, 0x10e3dc40, 0x08d26cd4, 0x6753c4dd, 0xf0b015c6, 0xc5dba345, 0xf4910f1e
.word 0x5cfd7df9, 0x0669b32d, 0x26b08534, 0x066badfc, 0xc4d53668, 0x4baa0013, 0x10ecea2c, 0xd95bbc45
.word 0x800d813e, 0x24cc037a, 0x6e0fb13d, 0x24bce9c9, 0x33912d2a, 0xf675ba63, 0x1fe0da68, 0xe87d2c1d
.word 0x1cb5eaed, 0xb4ef0a0b, 0x6eb16858, 0x20f8635d, 0x770d86d5, 0x99154a14, 0x6537c140, 0x9fdf07f1
.word 0xa5027de7, 0xb9ed6bee, 0x722f12b0, 0x4b2535fa, 0xd4c4d27c, 0x83156fe2, 0x8c51a428, 0xf00ecd12
.word 0x00b5d33b, 0x242ebf23, 0x4907f48b, 0xa5f63443, 0xa58e5c22, 0x3b00f4fa, 0xf0599571, 0x56c45892
.word 0xcfbc21d9, 0x74f9ab93, 0xdf575ab1, 0xcdb517df, 0x424b2faa, 0xa2ea697b, 0x1fae8f30, 0x17cc0921
.word 0xa0000b69, 0xaffd1b2a, 0x7b063bcf, 0x2e212dac, 0xfeeb90e5, 0x560be2e6, 0x7df0e8bd, 0x49b5ef9a
.word 0xfb81872e, 0xfe9ffda7, 0xa6a912db, 0x17d092c5, 0x60e9e2d8, 0x11b7f7a9, 0xc2db72e5, 0x861ad83f
.word 0x7f5a3ede, 0xe1bcf4fc, 0x29bb065e, 0x1230390a, 0xdc7182d1, 0xb282e837, 0xa647c611, 0xbfbe63f5
.word 0x21af3511, 0x6d3508fd, 0x86dc5271, 0xde4ba7fb, 0x7201fcac, 0x41e949b7, 0xe378941d, 0xf061db91
.word 0x2b041900, 0xcd82c8bb, 0x22fa554b, 0x5e7bbc1f, 0x9eeef3fa, 0x46da235a, 0xafa91cb9, 0x8d9892b6
.word 0x957284be, 0x2aba9071, 0x906b9f26, 0xfa39decb, 0xdd0cc9aa, 0x78f96b8d, 0x8bbfa791, 0xe416b5e8
.word 0x0d18474f, 0x5b929f19, 0x31b7f774, 0xf3292301, 0x8490f307, 0x80631ccd, 0x81d8c87f, 0x05e75f1b
.word 0x4ba2672a, 0x9f4c8089, 0x17092cc2, 0xb1f71bcb, 0x4816a8c5, 0xe39768fc, 0x238abb31, 0xa9d5f316
.word 0x8377597c, 0x015d19f7, 0xc7eeb140, 0x03b0b054, 0x7bef151a, 0x235de23f, 0x284c0765, 0x32cdc439
.word 0xd93499dd, 0xe6970843, 0x4555978c, 0xb94f0ac4, 0x667f5e57, 0x9472ae03, 0x3c8c7ccb, 0x385560aa
.word 0x4df466d1, 0x6845d41c, 0x2e09680a, 0x9f824428, 0x04c5e624, 0x0a696e44, 0x075d4f75, 0xd47f3054
.word 0x0db1f3c9, 0x38e4681e, 0xb305e513, 0xeaea0424, 0x32b11bf7, 0xc6a26f4b, 0x4ab17df3, 0xf96f69af
.word 0xa7c7e129, 0x32507aa4, 0x1e3cf3f7, 0xda8e2428, 0xc14265de, 0xa93ba283, 0x8da67be9, 0x72d6f878
.word 0x5e735b3c, 0x9ad40c23, 0x23a7661d, 0xbbb4db54, 0x69b35249, 0x8ca0ef14, 0x4a873f12, 0xb834f0bb
.word 0xaeb59a02, 0xd79bbe70, 0xf60c5115, 0x4adc4b75, 0x81872930, 0x25f7112a, 0xd786b14f, 0x1d50f604
.word 0xcf380f07, 0xf0902408, 0x4cb30241, 0xa3fac98a, 0x185d8751, 0x09c4e991, 0xc8494968, 0x4cee4718
.word 0x573cda99, 0xbc6d4b70, 0xda11ad70, 0xe79f203a, 0xb72f08dd, 0x61f9f0ef, 0xabe9b362, 0x6946ab77
.word 0x61a6bf0c, 0xb7f347f8, 0x736814db, 0xd04aaaa6, 0x1df0c15c, 0x2ea76f27, 0x9e0c1bc1, 0x0c883019
.word 0x335e3a24, 0xca6e2ffa, 0x80f98b85, 0xd319c44b, 0x0e350251, 0x7b58dfbc, 0x514ec145, 0x6122cf3a
.word 0x0b5d5616, 0x712b2621, 0x4071b5a4, 0x63fdd601, 0x2e56ccef, 0x3b6b0ff0, 0x3471f2ad, 0x57960bb0
.word 0x44be9f07, 0x7de70a5f, 0x05209baf, 0x98b7fed3, 0xdb66aadf, 0xfb3f2698, 0x411ad795, 0x707e66df
.word 0xe731e610, 0x4b3a1935, 0x0096829b, 0x12ec8b3c, 0x94941586, 0x42692376, 0xb3830f78, 0xe1954231
.word 0x4e946eea, 0x328d2194, 0x1d07eb3b, 0x690946cc, 0x1c852c30, 0x14b2238d, 0xd55ed733, 0x6bedd830
.word 0x89998c51, 0x6406022e, 0xf95b10e3, 0xabefc169, 0xa4ac26c7, 0x48789624, 0x3c26caf8, 0xe44b990c
.word 0x35103498, 0x347bf12d, 0x51ad22b8, 0xa68f2f9a, 0xf33b8701, 0xebd4f40e, 0x41c2c254, 0x749e1559
.word 0xe52280ab, 0x420515d0, 0xfaedefeb, 0x78cdb4eb, 0xc21c1343, 0x1f5d494c, 0xc541a2f1, 0x790a7edb
.word 0x9693bb8e, 0xe2ae0849, 0x23944952, 0xdd858d4f, 0x9de74e62, 0xaae05351, 0x28bde430, 0xf736ee1c
.word 0x10889a5e, 0xf3c9ec2e, 0x1c32b2a0, 0xa90dbe83, 0xd12a4002, 0x8fd60a4a, 0x0f55e376, 0xc9dca27c
.word 0x021f8a11, 0x612ce259, 0x8fcce25d, 0x54f3fe28, 0x46d9d2be, 0x48a423f4, 0xdafb2a16, 0x017dc6b2
.word 0x56a015ea, 0x2de9caaa, 0x0bc2d890, 0x40b97410, 0x300c3353, 0xad8d1adc, 0xd28cb7b5, 0xc29f7be0
.word 0xae60cda0, 0xe525a3cd, 0x449e5c4a, 0x16f28e5c, 0x9e8153b3, 0xa2126135, 0x0c84d2a5, 0xe943e7c9
.word 0x5ff67d34, 0x178d0800, 0x5216f89e, 0x1b0921d3, 0xa9701a75, 0x0321c639, 0x8dbb0280, 0xbad4da18
.word 0x1747d019, 0x365929b9, 0x521d8c2e, 0x41d7c6c7, 0xb61b8f51, 0x49b8a0b7, 0xed18c9ef, 0xea5178df
.word 0xc60b0b49, 0x561844f8, 0x82d8bdf3, 0x53b0f872, 0x01b8e4a4, 0x5c0b44d1, 0x557b4e89, 0x0f853ba1
.word 0x8ced56ce, 0x52163e62, 0xc23b8e4d, 0x9de6cc5e, 0x0ca467d4, 0x14a2fbca, 0x7b6d4e7d, 0x35f4c9da
.word 0x0db9677f, 0xbb415b61, 0x69c9145e, 0x52c208c2, 0xdcf6df7b, 0x8f6be44f, 0x6ee861d0, 0x27e0c5af
.word 0x789d40d8, 0x2166e0ea, 0x05347218, 0x5bc7f6e0, 0x11b825c0, 0xb922bd23, 0x77b826b0, 0xf7f48e42
.word 0xf9b7fd5a, 0xdaea098d, 0xf123fb89, 0xc01506fd, 0x4e4dfd3c, 0xde76b9e9, 0xa7692510, 0x8c7a9196
.word 0x00a64fa3, 0x543eb424, 0x5de50d6a, 0x582e146d, 0x15b84186, 0xef51293b, 0x0ea0a3a3, 0xd26273a3
.word 0x725a2a13, 0x73f5460f, 0xec7d2668, 0x2766bcef, 0x59bbfc84, 0x9b66cba6, 0x3bd7a76d, 0x0485abdb
.word 0x3a538bb4, 0x94e30c01, 0xdcddedeb, 0xbe42df28, 0x99d4688f, 0x85a2cbdf, 0xbf3b07b5, 0x887de5d7
.word 0x75efe2d0, 0x23454b49, 0x0447ae1c, 0x4bd24fad, 0xb6741137, 0xe5909441, 0x7c025279, 0xde59737f
.word 0xd775e482, 0xacd1f99c, 0xae87daa7, 0x97a9d8cf, 0x9238201b, 0x569f2ad6, 0xb90d4499, 0x62299486
.word 0x9a584de5, 0x4a75fd0a, 0x6f012066, 0x2643b964, 0x694149e5, 0xa969735a, 0xccf703bb, 0xad986605
.word 0x8d89ab94, 0x92646f30, 0x6f944e58, 0x9ef759dc, 0x4d403c73, 0x17643629, 0xb49509b7, 0x5a16e7b3
.word 0xaf540c08, 0xb6614932, 0xb01f2387, 0xc1f34859, 0x82fa9292, 0x29dff85c, 0x3a7da91e, 0xf5a9fd9c
.word 0x13304b74, 0xadac9b86, 0xb116c937, 0xb97e6960, 0xf490f32b, 0xb9407495, 0x47e06807, 0x7b7053ab
.word 0x752e9137, 0x8adf48b3, 0xa310b751, 0xf927fc7c, 0x0f118ba0, 0x6b2246de, 0x7c780f7f, 0x2a39c1d4
.word 0x4d34d7bb, 0x6510dff5, 0x1f75464b, 0xae0f3cab, 0x07ce0e13, 0x5becfceb, 0x10831bb0, 0x1f9d0818
.word 0xbfeb4102, 0x3b8e51f0, 0xfe1f9d49, 0xd28f1307, 0xc49b6547, 0x4f45da26, 0xdd982df6, 0xaa79edf8
.word 0x2313e770, 0x8c119bce, 0x62f1a119, 0xbd80fafa, 0x4857b062, 0xabe3608d, 0xf4cbc8af, 0x1caf45d6
.word 0xc5fc9ccb, 0xe0b4a6f5, 0x31dc1bca, 0x0fcfb48f, 0x93e9e92f, 0x494fa766, 0xb010bd88, 0xe73a6a44
.word 0x5b46bd62, 0x339c593f, 0xa7de7633, 0x50f05cd3, 0xd0dea02e, 0x84859d56, 0x1bf9aae5, 0x92fa210d
.word 0x989c5859, 0xd7b3de2c, 0xecf030f9, 0x1c2ee2ab, 0x8d064d43, 0x84506403, 0x0a4d36e7, 0xb04d3488
.word 0x1503e038, 0x99e5926f, 0xcd1efd1d, 0xbe5547d5, 0xf94ac48a, 0xac13d723, 0x83211ff3, 0xd9cbc224
.word 0x2c0fcde9, 0x3c64de19, 0x9917f5fd, 0x1833c14f, 0xdc08ec36, 0x95668f14, 0xfcc16287, 0x98855654
.word 0x4b976578, 0xc3d57b2b, 0x176bd1e7, 0xabf9e916, 0xb6e27bb2, 0xe27ac4d5, 0x79324e31, 0x6c14fa84
.word 0x4b756665, 0xfc6a8306, 0xf57e407a, 0x28e81a9c, 0x85af6c42, 0xdab631d9, 0x482356e6, 0x4e41021d
.word 0xaeadd339, 0xb2d1b864, 0x5e22acb9, 0x71f73f34, 0x3514396d, 0x33811786, 0xef09eaad, 0xb8b5fa8f
.word 0xd094acc6, 0xae500267, 0x3f93041e, 0x7bd4b709, 0x23e0b4bc, 0x3dcf63f5, 0x09bf8e61, 0xf3f3baf3
.word 0x91a98e56, 0xa2dc9343, 0x763f0046, 0x1bf4c3fe, 0xf2f8b749, 0x8a91cd17, 0x0b2761f2, 0xca6f6d55
.word 0x41974edf, 0xa3986ad1, 0x506deab6, 0x4e13bbeb, 0x7728a8df, 0xd8ce822f, 0x8c8b9a6d, 0xf070649e
.word 0x4405d1ac, 0xba4ae649, 0x775c2fbe, 0x2c9782f4, 0x4ddd6e9c, 0x2ec217f7, 0xaa4f9680, 0x776702b2
.word 0xfba51f73, 0xd1125e7c, 0x25eb923c, 0x80a9fa82, 0x29a2f43b, 0x33ea8842, 0xc1cac7c8, 0x682bc968
.word 0x05f2fed2, 0x4fbe157d, 0x6c9a1e63, 0xf6f08c13, 0x541ce4f7, 0x2473c141, 0x52525862, 0x3d4e65bc
.word 0x01512b7f, 0x6d1cb6d3, 0xa80e95a8, 0x69299421, 0xf5e47d01, 0x7063deaa, 0x501b856f, 0xa56e8fd0
.word 0xfc16aac9, 0x316f470c, 0xa5c7c889, 0x55e820a2, 0xd80a2b13, 0x6220c24e, 0xf15b1129, 0x0193290e
.word 0x8c2a7b45, 0xa4ed03f7, 0x5afc034f, 0x9df20aea, 0x7cfba86d, 0x1f1fe1d6, 0xe68c9161, 0x485ead13
.word 0x253e8bce, 0x94c8d69a, 0x585a7d78, 0x26068318, 0x17e7e402, 0xe88f1494, 0x6727a5cc, 0x0c497513
.word 0x0d04d772, 0x71814581, 0x5cdd65e2, 0x8bf892ee, 0xeafd066a, 0xcac211a2, 0xf2c549c5, 0x9c6e4220
.word 0xc4214373, 0x436572ee, 0x864c4237, 0x7b67a688, 0x52ab5bf6, 0xbe1aadbf, 0xba15e979, 0x3e59957d
.word 0xe69e2ea4, 0x6b95954c, 0xf3b5d396, 0x1de1f277, 0x6d5fa8c9, 0x5cd7206f, 0x0225262b, 0xedc5d3b9
.word 0x2627a5d7, 0xd4b75b61, 0x689b2f96, 0x127dda6e, 0x4522ed5c, 0x90182413, 0x33d1db18, 0x044904e0
.word 0x86127e6a, 0xba876358, 0xef6e3351, 0x22758501, 0xa5a149f1, 0xe4ade2c7, 0x927bde41, 0x690eda1e
.word 0x57573751, 0xac3d5704, 0x3352d305, 0x75a15011, 0x35848386, 0x3732b030, 0x0b99e087, 0xd1c1602c
.word 0xa255691c, 0x91156c7a, 0xfd5e0d4d, 0xaa757f3c, 0x422f44ee, 0xd297431c, 0xd21bca3f, 0xd5dbec4c
.word 0xeff5b487, 0x7cd7e558, 0xf3285685, 0x262887a0, 0xa9c6b1ce, 0x7cee607e, 0x8068a3ac, 0x9b23a574
.word 0x8ab18203, 0x9035e7a0, 0xe1fdebbc, 0xa787ea54, 0xd386bbd5, 0x9c5faf2c, 0x64c003be, 0x63230717
.word 0xebb84f82, 0x668f4d05, 0xf9a7c608, 0x518763cd, 0x377483c0, 0x95373e7b, 0x84367cda, 0x42257fd4
.word 0xaaa304d5, 0xdfa17b9c, 0x6aa50ce1, 0x7a27b2a5, 0x85fc2f87, 0xd0295972, 0x8a9fb2e3, 0x36c357e9
.word 0x79a6afed, 0xd1dece37, 0x0ba30bac, 0xc786bb51, 0x430534df, 0x099a7c01, 0xc7062fe7, 0xd88a4583
.section .s_region_1,"aw",@progbits;
s_region_1:
.word 0x68709add, 0xb784942c, 0x4f273062, 0x47adf5b0, 0xde119b0f, 0x89f09817, 0xdc59e214, 0x227175b3
.word 0x32c2b210, 0x67768414, 0xced47cf6, 0x18ee662c, 0x7cd1d600, 0x7d6a0683, 0xf86a14a5, 0x139e4f1d
.word 0xe027fea9, 0xa5f90296, 0x0c5c1ff2, 0xa825d74f, 0xf1b4f095, 0x17c3e22c, 0x67dd57ba, 0x446f1023
.word 0x9b310850, 0xcce34fea, 0xbd7b5964, 0xa404cf07, 0xaa1709ca, 0x5b281cf2, 0x904d42ab, 0x197b9fe5
.word 0x2c76cc2d, 0x22770aec, 0xfbe382aa, 0xfc042f9c, 0x097af5a5, 0x7bed8004, 0xf68395be, 0x63b8b116
.word 0xc5182207, 0x4e2da004, 0xa98ba43e, 0xf6701eed, 0xfef5f8a7, 0xe31ad031, 0x4365499a, 0xd767e778
.word 0xf2ae71c6, 0xeeb603c0, 0xbe98d977, 0xaea22395, 0xbf60aaf1, 0xc78875b3, 0x6e9fed94, 0x49ef4330
.word 0xc89a3629, 0x333027f6, 0x3c27b938, 0x22f0c52e, 0xc85a715f, 0x204ab80a, 0x00765ef6, 0x0092c8f4
.word 0x9909b7a3, 0xe9bb08d8, 0x3b4357fd, 0x4db6a48e, 0xf372edc7, 0xae7a3d7b, 0x43ae3cee, 0xd88f9d3c
.word 0xf8d6ba09, 0xb9a63e37, 0xe4975bc5, 0x4792f44f, 0x629bb267, 0x0b01b223, 0xa56f24d5, 0x3802c4bc
.word 0xbef34f2c, 0xe8cd871c, 0x5411eb0f, 0xaabc0e72, 0x26364cdd, 0xb3a7f21c, 0x895cc7d5, 0x7ab4cc47
.word 0x2a9e5890, 0x0e7b26c3, 0xe1c2a17d, 0x30584c1f, 0x97331609, 0x23628af9, 0xe063c4a7, 0x86a4b56b
.word 0x009b1c98, 0x0d07b258, 0xe93cf50f, 0xac972615, 0xb9bd0613, 0x5ca672f7, 0xf7bf29dc, 0xef809699
.word 0x056aef05, 0x3fad571c, 0xf9bf547e, 0xf9657f73, 0x4b8aa32e, 0x9bf37816, 0xbe6bfb1d, 0x08a821cf
.word 0xc89105fd, 0x67bad3bd, 0xb35276d7, 0xc1b7893a, 0x0bf46964, 0xc979c56c, 0xcdd7697d, 0x9abe60c9
.word 0x99ba2bc8, 0x513f3a08, 0xd59646e8, 0x899f3dec, 0xd6ccb827, 0x1f97bd0f, 0x81e0d6c9, 0xb5f53331
.word 0x94b29a51, 0x6a16c9a5, 0xe6296060, 0xa1d6e994, 0x66442736, 0x5f2442c7, 0x5e64a08d, 0x4b524cc9
.word 0x8db594c2, 0x411540bd, 0x1ae08d31, 0xa496c67d, 0x0a5e0d15, 0x9192e7a3, 0xf83e47be, 0x015f13e2
.word 0xb6a4d74e, 0xdc986e83, 0xbdcbe453, 0x97add9e4, 0xd5ecdca7, 0x85ae5652, 0x975620a0, 0x9b837e2a
.word 0x7656bdcd, 0x02588406, 0x4363fe6a, 0x83532414, 0x8db8a0aa, 0x0adc6321, 0x7856cab8, 0x2fbe1150
.word 0x2e5f88d9, 0x21afb6e0, 0x951e11d2, 0x0f8c12b1, 0x9ad376db, 0xb098158b, 0xcf316d9b, 0xaa38c737
.word 0xdc2599a3, 0x8a38bdab, 0xe4c57d2d, 0xc62a6f8a, 0xe984f11c, 0x6acae428, 0x87a2cd21, 0x700b4299
.word 0x265e52c1, 0xe9b8d59e, 0x9c4f54a1, 0xc3cebb20, 0x165d9e81, 0xfe66aa9b, 0xe350a2bb, 0xd62a1e63
.word 0x2ffc4a22, 0x555ad88b, 0xed00facb, 0x7f402a4a, 0x3ba5b405, 0x1cae8c52, 0xbd34e2d1, 0xcb659283
.word 0x83536b06, 0x7d8856ab, 0xbd491cc1, 0x36a90bdc, 0x9d4a51f7, 0x35e4c681, 0x6300e77e, 0xe5ed4c32
.word 0x8252f998, 0x637b88f5, 0x733b0476, 0x5bdc8c52, 0xb9172f02, 0x028990cb, 0xdfcb8854, 0xbe76e182
.word 0x2fd8e93e, 0x090a7b37, 0x857cbfe3, 0x9e0f0c0e, 0x283e5296, 0x88984221, 0xe163799a, 0xaa4c0cd6
.word 0xa732cd67, 0x503df643, 0xfcbd5675, 0xb4d9288a, 0x6343a018, 0xd3a4434b, 0x2f90c425, 0xd2fc9be0
.word 0xd2bc9735, 0xbbcfc536, 0xf75c2958, 0x98b00bd6, 0xebbd67c5, 0x0245f4be, 0x70d38c13, 0x32c0f173
.word 0xec739b37, 0x77a154ca, 0x5888017d, 0x133f0237, 0xddf4daa1, 0x364ff0be, 0x2e631c2d, 0x9658f2fe
.word 0xac4e83b8, 0x67968b4e, 0xcd747712, 0x14b5c02d, 0xed7ad560, 0x9fed4920, 0xfacb62aa, 0xa9859971
.word 0x60b74a39, 0x8fcc4a22, 0xf77c6261, 0x54d44bf9, 0xb605a42f, 0x1d72134c, 0xef87cc75, 0x1a5b47ad
.word 0xd89613b6, 0xcd5a66b3, 0x1b6e8c9e, 0x3219b6ed, 0x27733bcd, 0x7a0e336a, 0x2000d1bf, 0x106d3a1f
.word 0x2d671d64, 0xa6ccb08f, 0x07c12e2b, 0x243f7a4e, 0x7c6ebf83, 0xb072b9f0, 0x3b369cac, 0xb4dc4fd0
.word 0xd46d81eb, 0x125694d7, 0xc58086e3, 0x2e2e8d81, 0x615e39ee, 0xe6a1ea1c, 0xf30bd042, 0xd2fa4595
.word 0x96058a57, 0x3436af74, 0x5d007f54, 0xdd7969ae, 0x7d2152f9, 0x192700a6, 0xe58004a8, 0xf5921ac3
.word 0x53604270, 0x622c415d, 0x97e2a3ef, 0xd103cf12, 0xb05dcc63, 0x8895b4c2, 0xd582cf6f, 0x921ba4eb
.word 0xcb604311, 0x180e61ba, 0x2141d1cb, 0x975d62dc, 0x1ba64dcb, 0xfef542c9, 0x352688bb, 0x86cd5976
.word 0x7588c992, 0x994089d5, 0xeedbcafb, 0x49d585f1, 0xc86f7bb7, 0x6ffbbb0a, 0x0708ef29, 0x06ec3e61
.word 0x78186696, 0x9f8fcc17, 0xcf426859, 0xbfd6ddb1, 0xa50d0b8f, 0x0bb8d25c, 0x478049e3, 0x55fde583
.word 0x619b4309, 0x9df7e336, 0xc9562d7b, 0xa8381328, 0xb021f0f3, 0x0df3607a, 0x9819e930, 0xf9512b93
.word 0xb56a0079, 0xf28b8110, 0x78cce565, 0xfeef32ed, 0xe508dcbb, 0x8cb10ee8, 0x2478fd9d, 0x90728c1d
.word 0x3f4ac956, 0xc13114da, 0xba2c9ca7, 0x446b536a, 0xa7c4a1ea, 0xefec4dfb, 0xe5cbed74, 0xe01ca22c
.word 0xbd91c1a2, 0xfcd669e0, 0x05ca3182, 0x310b742d, 0xd1842125, 0xe8f6bcac, 0xfc232555, 0xd245f37d
.word 0xf9a76c20, 0xdcd9b7e2, 0xabd402d4, 0xfcc73dc8, 0x53c05178, 0x673ea67a, 0xb90d376d, 0xd11955bb
.word 0xa135484c, 0x8636401a, 0x519754bc, 0xc1794337, 0x0b7be42b, 0x2336d1ca, 0xdfb0d646, 0xc657466b
.word 0x6f2acd7c, 0x915c8b28, 0x26b5865c, 0x87d8b129, 0xa8fa196b, 0x5626086d, 0x8262f0d5, 0xcb5fabea
.word 0x22039535, 0xf0edc651, 0x57e239fd, 0x38e21d3c, 0xbf8d8d5a, 0xfd50f247, 0x445e4bfa, 0x64796cb4
.word 0xb84b9a70, 0xe6086a49, 0xf4624875, 0xcd569199, 0x777e5c4b, 0xba1a6262, 0x4e312145, 0x7340e92e
.word 0x1a83640e, 0xb7f07e49, 0x787807c2, 0x78c791d2, 0x17af0f7e, 0x0a030eb9, 0x9c742e22, 0x47c09e78
.word 0x37bd4433, 0xad4bacf0, 0x090b8d83, 0xfa11f887, 0xc4a54a2d, 0x16f3e007, 0x6518e722, 0x31dd9ab8
.word 0x641f964f, 0x74714b24, 0x858d87bc, 0xf5a1fc56, 0xdca2d504, 0xbcf35c03, 0x28a76ce7, 0x8e49aaae
.word 0xa02b483d, 0x046fface, 0xf5987f40, 0xe1b5870f, 0x263ccf37, 0xe47abe07, 0x7702c3a1, 0xfc838c0c
.word 0x62cdb6dc, 0x52ee014f, 0x7f8910de, 0xb2b75125, 0xbb2304a9, 0x5e809e57, 0xd6477559, 0xb661f820
.word 0x98b94dce, 0x01538125, 0xbca4c734, 0xa82299dd, 0x8be1ef5a, 0x99ad9eec, 0x48b897d4, 0x54c49fea
.word 0x41c91ccd, 0x9cbf69fd, 0x6ae084e7, 0x7ec8026e, 0x895d7c9b, 0xf99bbc81, 0x04d88fd9, 0x3b8dbb38
.word 0xf0e24660, 0x271d589d, 0x06ba115b, 0x844cb0c6, 0x5b3670f4, 0xee8f54e3, 0x9ea4131c, 0xc1312f4f
.word 0x79b60f50, 0xb0267abe, 0x29f1ed1a, 0x48b33b60, 0xfde66232, 0xc5a5e974, 0x7db2f162, 0x6961adf0
.word 0xb0740c7c, 0x39c63b8f, 0x01f6bbbd, 0x7e8eb578, 0x08e9770a, 0x8d505a83, 0x85f9b8e3, 0x94264b7f
.word 0xf5921122, 0x3718c6af, 0x6cee51ec, 0x7c2b3b28, 0xf5f58288, 0x6b3f0f69, 0x94639f3e, 0xf1e01174
.word 0xc5912925, 0x58bedc43, 0xf0fa659a, 0x7a1329c1, 0x9ca0ce30, 0x1f493c17, 0x63ca28a5, 0x34071c8a
.word 0xaa57db0b, 0xe01a659d, 0x6a208594, 0x133f6071, 0x4e203da0, 0xca8fcf1d, 0x1dfa44a1, 0x5a240676
.word 0xeee41882, 0x88cac374, 0x7d170f00, 0x55780f5f, 0x2e0f8683, 0x4fe3c20e, 0x7f2a1520, 0x36a625fa
.word 0xddc8eb6f, 0x938475f8, 0x94fd27cc, 0x1df876ac, 0x373d7851, 0xb49d4735, 0xc6fa940e, 0x3819a0a9
.word 0x891d99bc, 0x8de41df3, 0x80c285a1, 0x670af56f, 0xcde5b4a8, 0x5d57211f, 0x5099e124, 0x92f44a64
.word 0x8fc4f393, 0xe2e3e99c, 0x63ad9246, 0x0426e995, 0xe9773fae, 0x9eb997e0, 0xb19ec055, 0x05a946a4
.word 0x9e9abde1, 0x06ec20b7, 0x944a5abf, 0x794c694e, 0xc36516f8, 0xf0e05901, 0x36666230, 0x25d9c92b
.word 0x4c8faa00, 0x79288ee5, 0x5a6492e1, 0xa4f2c918, 0xdfae6d80, 0xac2434ad, 0x52b690d2, 0x7d5a72a5
.word 0x861a54dd, 0xcdf0b9fe, 0x55aaddbd, 0x045eaf00, 0xa7025f45, 0xe3b10ef0, 0x448929a9, 0xc12a382a
.word 0xd01a909b, 0xe0f452c5, 0xc3d58b18, 0x7ad9e956, 0x71a25d13, 0xc066d14e, 0xcb9a0154, 0x52ed13e6
.word 0x88f7a671, 0xe913077d, 0xfd2fe541, 0x3856e765, 0x9cc98035, 0xc09a6183, 0x89cadbda, 0xa9e3f282
.word 0x5d60d8dd, 0x2f2e6c1b, 0xa1935a61, 0x76e05035, 0x7f81929e, 0x76dacb41, 0xcdab228e, 0xd06dfc08
.word 0x281ca20f, 0x312d44ac, 0xce58b832, 0xc4f6ec70, 0x0f842338, 0xeb403eef, 0x7c5f8292, 0x4f1d83c1
.word 0xad07bc83, 0x97d87c34, 0x2df34fd0, 0x1ffc57be, 0x5c0b2538, 0x62ba0739, 0xd2cdd6fe, 0x8b030df0
.word 0x744e9ef1, 0xf2535ca3, 0x16b8a8fd, 0xcc259200, 0x38d8f8cd, 0x63600dba, 0x5cc29368, 0x2374e599
.word 0xe5a1452f, 0x6cc2942d, 0x467ab3c2, 0xf3f3dc50, 0xdde2c2f6, 0xdf6764e7, 0x8dc40425, 0x9d1b77c5
.word 0xcb639871, 0x98dffcc6, 0xb7cff8f7, 0xc6c0fbf3, 0xcf4f85ce, 0xb49c9e6d, 0x9c2252cc, 0x8206d1b8
.word 0xabb629f4, 0x5dc4e31b, 0x69204baf, 0x1a10ae20, 0x7a06691e, 0xfc49aa34, 0x2dcfeafd, 0x029b3057
.word 0x2ed56161, 0x33f99ed2, 0x6144baa5, 0xfd30d87f, 0x6bee5b04, 0xba709800, 0xac896f05, 0xcd73caaa
.word 0xd48762f4, 0x0510a2f6, 0x88760c22, 0xc4d74f91, 0xcf560c57, 0xc148aaae, 0x721a102a, 0xb4a87820
.word 0x187fa150, 0x37dcf1cb, 0x7a7a8f3c, 0xf326faa8, 0xc53b0c7e, 0x30102116, 0x70a93142, 0x55f8abb1
.word 0xc5f4cf41, 0x1fb3de50, 0x1f131ee3, 0x869b319b, 0xafafba66, 0x1ec98518, 0x750fd448, 0xb18af6cf
.word 0x1257b4a9, 0xf1f796ca, 0x5de15929, 0x3d91874b, 0xe2c68cde, 0xf56c899f, 0x9c0f526f, 0x4886b41f
.word 0x68eb4ee1, 0xeee694bb, 0x594f18d7, 0x35b10133, 0x56e84c35, 0x75cf6613, 0x6e8cd95c, 0xb2126886
.word 0xf557e722, 0x036751f5, 0xe1e458f9, 0x0bd8237a, 0xb8534d1b, 0x1ab1dfa5, 0x11139a12, 0xcba9eafd
.word 0xf59e5b3e, 0x463edb23, 0x47e2dfc2, 0x73c655e6, 0xb79d999d, 0x8ba6ee44, 0xe0ac3286, 0x36e863c0
.word 0xfec12912, 0xf9839620, 0xcaab77ab, 0x8520df07, 0x9d4b8cc9, 0x5c10e79c, 0x4d6530c8, 0xd604a7e1
.word 0x11679d4d, 0xabc09959, 0x58205e82, 0xfad851fb, 0x56c3c3df, 0x3f0eb165, 0x3a0ea067, 0xd55feae8
.word 0x01141fea, 0x86cf5603, 0xb9c0e48e, 0xdeb34369, 0xa22aa696, 0xd9dbcff4, 0xb09659c0, 0x97f75255
.word 0x79039d72, 0x395a58d3, 0x22cd8750, 0x76c07edf, 0x265195ee, 0xaa2fea99, 0x6fa726c9, 0x82447eda
.word 0x903809cc, 0x205d3f76, 0x340947ae, 0xec7cb846, 0xa8b890fa, 0xdeca4da6, 0x9e287bed, 0x3b56981f
.word 0x2e07881c, 0x3edee0ed, 0x47916425, 0x8d2d84eb, 0x1405de47, 0x2e53c6c0, 0xcb4dd71b, 0xeb4e42bc
.word 0x605b4a99, 0xa6787641, 0x7ff19d1c, 0xc0347c74, 0xd3b4551c, 0xbf47f082, 0xe3395756, 0xf41d13a4
.word 0x636370a5, 0x41a18edf, 0x1968b39d, 0xba1f024d, 0x38b7e75d, 0xad3b06f5, 0xece8216f, 0xa878cd94
.word 0x13759342, 0x92769d2c, 0x02387125, 0x5d5b4fe2, 0x8299a9c2, 0xe8056461, 0xe071d162, 0xfb9d269f
.word 0xee87cd72, 0x6f30149d, 0xb2008dec, 0x652ec806, 0xb76372e7, 0xb62afcb4, 0xc122cdbf, 0x577e693d
.word 0x594d6dd9, 0x660b1df6, 0xec158e09, 0xcd552be0, 0x49d96e8d, 0x570c9413, 0x8bcb1ece, 0x9f523538
.word 0x80ea66b9, 0x5bd4fd8f, 0xe1f5fd85, 0x2c9c561b, 0x1fef8ed8, 0xf8e8a716, 0xbe7f5346, 0x45a96f06
.word 0xda509491, 0xb3240fc0, 0x07aaae6e, 0x90767b90, 0x5995ca62, 0x0e2c78be, 0x5ee52683, 0x3d5c9ead
.word 0xc02c02b7, 0x2c76ec23, 0xeb3a7d25, 0x6ca89ed9, 0xc85dd9f7, 0x3085f73c, 0xbc8cee67, 0x59afc095
.word 0xc08af1ef, 0x9caf0def, 0xc82a96db, 0xb069e6ab, 0xcd08502a, 0x249a0e6b, 0xcfd168c5, 0xb3436e58
.word 0xf7378018, 0xf1e5a59a, 0x02b86e86, 0xba45bf84, 0xa117faf8, 0x50a071e4, 0x926895bd, 0xebf0cb5e
.word 0x476c9b32, 0x6b480210, 0x8f74c0cc, 0xd07467e4, 0x52e34a20, 0x6e04112e, 0xadddad37, 0x49557002
.word 0x903ba1bf, 0x230b5d02, 0x82f59940, 0x252c7c19, 0x9b8de9fd, 0x9c10796a, 0x2a1e090c, 0x12516321
.word 0x68680af3, 0xf5262b3c, 0x2b3cec14, 0x44702070, 0xa0dffd7c, 0xcaa40b94, 0x2313a0c7, 0x1dc6d402
.word 0x0224ce2c, 0xd1fd2aba, 0x34237318, 0xf7893f1b, 0x43dbdbbe, 0xf99deb77, 0xe9a2d130, 0xa9df2df7
.word 0x7eb7de4c, 0x0767ad6b, 0xf586063d, 0xfcd20409, 0xdae88507, 0x413b8137, 0x2f6480f1, 0xe8cfdb2c
.word 0x007e57af, 0xc162d077, 0x34c80a9c, 0xab824d0f, 0xb27ec78e, 0x251eca41, 0xdd4d9bd7, 0x1ab7f863
.word 0xdc1a0feb, 0x7773f0c7, 0xe07e2536, 0xb896302c, 0x44310645, 0xda37f8c3, 0x56f816dc, 0x89cdc04b
.word 0x22c15497, 0xd95f40a2, 0xabd6ac3e, 0xb52f7338, 0xfefd884c, 0xbdba2833, 0x8e3f7094, 0x209e7f9f
.word 0x4188ba66, 0xa9a265b3, 0x49de03dc, 0x820e7996, 0x1522da24, 0x0c490d27, 0xfce59953, 0xf98b2386
.word 0xa0e17383, 0x28f772a7, 0xd50a3dc4, 0x39a0dfa6, 0xe34091cd, 0xfb1ff427, 0xd7acbb02, 0x9309ef9d
.word 0x3d83ac8e, 0x01cc3e23, 0x70f0da58, 0x6652cd2f, 0xbffee53b, 0x10978c03, 0x2b3207c4, 0xac30a074
.word 0xcca57774, 0x721b2e55, 0x038b3faa, 0x81d9377b, 0x81c92a0b, 0x789b72ca, 0x1270499a, 0xa1006ccd
.word 0x956c07bd, 0x0d676e69, 0x543688b3, 0x492fe1c5, 0xc51d7293, 0x42caae71, 0x236ad1c3, 0xe91ffd2f
.word 0x37a27a94, 0x1df55f1c, 0xb0270563, 0x9bcb978a, 0xcf1f6957, 0xb8b19078, 0x5ede716e, 0x56153615
.word 0x7e0944ce, 0x626863a7, 0x550aee1e, 0x04499270, 0x1b010b15, 0x9b052a08, 0xed98fcd2, 0x7b3c9574
.word 0xc92e0522, 0xb3d07b8b, 0x96243819, 0xb16a45d1, 0xb5197588, 0x8e4ddfbf, 0x01b4752c, 0xd04f4b43
.word 0xfb00a50f, 0x4d9f4b30, 0x422514ca, 0xd157618d, 0xb7697197, 0xbcc7dc55, 0x044c8f90, 0xbcdb44f1
.word 0xeb1c8d6f, 0xcda5ab4b, 0xc0df54d7, 0x06965169, 0xadee3ab1, 0x5010a096, 0x0f26bb1a, 0x6d1a9b04
.word 0x96430222, 0x8d4fc7f5, 0x07e1b2f6, 0xbbc778c7, 0xf1ba326c, 0x90f47722, 0x29545143, 0x735813ca
.word 0x3e32fbe8, 0x60963744, 0x9e2fe2b6, 0x09f181ed, 0x5e57edd8, 0xe6b10068, 0xb5fd32cf, 0x09cf1956
.word 0xc2176078, 0xd0c20fec, 0xdc00c7de, 0xbfbfa89a, 0x47e92352, 0xb677e584, 0xd8b7f0d5, 0x4f24f31f
.word 0x2d161a31, 0x51bd90d9, 0x4e9e4ce4, 0x8a6bee7f, 0xb9b59918, 0x04b0fe12, 0x666e5063, 0xd71bd435
.word 0xdcf6ba85, 0x2c82735a, 0x4d95b4ad, 0x6549b336, 0x81b24dac, 0x90c55a4d, 0x3ac159d4, 0x90dc881a
.word 0xb52946a7, 0x34a420d4, 0x4b3b6b56, 0x62b62df7, 0x370fa389, 0xf578d5ce, 0xc3455456, 0x2fe84e60
.word 0x6c1a73d3, 0xa17b9ffe, 0x6c148409, 0x3294c9c9, 0xe542dc9e, 0x3be22ff1, 0xf6c6c12a, 0x17780970
.word 0xd30ec425, 0xee4d8ab3, 0xfd5298f4, 0xbc633398, 0xb1f041db, 0xe0161082, 0xd9fbc95e, 0xf8f4db79
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 4999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
