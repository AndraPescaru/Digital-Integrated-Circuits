`timescale 1ns / 1ps

module tb();

    reg in0_tb;
    reg in1_tb;
    reg in2_tb;
    reg in3_tb;
    wire out_tb;
    
    or4_gate dut(
        .in0(in0_tb),
        .in1(in1_tb),
        .in2(in2_tb),
        .in3(in3_tb),
        .out(out_tb)
    );
    
    initial begin
    
        in0_tb = 0;
        in1_tb = 1;
        in2_tb = 0;
        in3_tb = 0;
        #5 in3_tb = 1;
        #5 in3_tb = 0;
        #5 in3_tb = 1;
        #5 in3_tb = 0;
        #5 in3_tb = 1;
        #5 in3_tb = 0;
        #5 in3_tb = 1;
           in2_tb = 1;
           in0_tb = 1;
        #5 in3_tb = 0;
        #5 in3_tb = 1;
        #5 in3_tb = 0;
           in2_tb = 0;
           in0_tb = 0;
        #5 in3_tb = 1;
        #5 in3_tb = 0;
        #5 in3_tb = 1;
           in2_tb = 1;
        #5 in3_tb = 0;
    
        #20 $stop();
    
    end

endmodule
