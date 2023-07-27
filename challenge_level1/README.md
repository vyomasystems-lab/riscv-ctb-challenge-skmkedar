Challenge 1 documentation:

Challenge1_logical:
    The Test.s assembly file was having errors. First Error: in one of and instruction the register used was z4 which is not valid. so i changed it to x4 because of valid register for and operation the error got resolved here(and s7,ra,z4 changed to and s7,ra,x4). Second Error: andi instruction was use in one line but instead of giving immediate vlaue the register was provided so i changed the instruction from andi s5,t1,s0 to andi s5,t1,0 and the error got resolved.
Challenege2_loop: 
    in this challenge the Assemble test given was wrong which was causing the instructions to run in loop. upon giving corect exit to the loop the test worked fine. 
     initial logic: loop:
                    	lw t1, (t0)
                        lw t2, 4(t0)
                        lw t3, 8(t0)
                        add t4, t1, t2
                        addi t0, t0, 12
                        bne t3,t4 loop
                        j fail
    
    updated logic: 
                    loop:
                    	lw t1, (t0)
                        lw t2, 4(t0)
                        lw t3, 8(t0)
                        add t4, t1, t2
                        addi t0, t0, 12
                        bne t3, t4, fail        # check if sum is correct
                        addi t5,t5, -1
                        bnez t5, loop
                        j pass

                        so in above example the t3 and t4 used to have correct result for all 3 inputs but there was no logic to exit the loop so i modified the logic to exit the loop plus i changed the pass and fail condition to run the test normally and it worked.

Challenege3_illegal:
    In this challenge when the illegal instruction came the interrupt serving routine was going to the same address and then it was continiously going into loop causing hang in the test so i changed the mepc register and then updated it with next address, i used next address as t0+8 because the mtvec handler has .align 8 as parameter. so when the mtvec handler routine was called it used to serve it and update the mepc register which will go to next address this way the hang issue was resovled.
