Challenge 2 Documentation:
    
    Challenge1_instructions:
        in this challenge we are expected to generate the correct test file with help of aapg. in this first scenario the aap was configured with rv64m mode also but we wanted to generate only rv32i instructions, so in config file did one change by changing the settig the rv64 value to 0 in line no 66 of rv32i.yaml file. and the aapg generated the correct test vectors which i was able to run properly.
    
    challenge2_exceptions: 
        in this scenario we were supposed to generate a test with help from aapg which will generate test with 10 illegal instructions with correct handler code. i have generated the 10 illegal instructions by setting ecause02 option as 10 in rv32i.yaml file at line no 181. used the custom trap handler and the tets is working fine. changes done are in line no 123,137,209