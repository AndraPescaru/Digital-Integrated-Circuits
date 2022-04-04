`timescale 1ns / 1ps

    module tb();
    
    reg [3:0] in0_tb;
    reg [3:0] in1_tb;
    reg [3:0] in2_tb;
    reg [3:0] in3_tb;
    wire [3:0] out_tb;
    
    sum_4b dut(
        .in0(in0_tb),
        .in1(in1_tb),
        .in2(in2_tb),
        .in3(in3_tb),
        .out(out_tb) 
    );
    
    initial begin
    
            in0_tb = 0;
            in1_tb = 0;
            in2_tb = 15;
            in3_tb = 7;
        #5  in1_tb = 3;
            in3_tb = 4;
        #5  in0_tb = 1;
        #5  in3_tb = 9;
        #5  in0_tb = 2;
        #5  in3_tb = 6;
        #5  in0_tb = 3;
            in1_tb = 15;
        #5  in3_tb = 0;
        #15 in0_tb = 15;
        
        #20 $stop();
        

    end
    
    
endmodule
