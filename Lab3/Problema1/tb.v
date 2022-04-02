`timescale 1ns / 1ps

module tb();

    reg in0_tb;
    reg in1_tb;
    reg sel_tb;
    wire out_tb;
    
    gate1 dut(
        .in0(in0_tb),
        .in1(in1_tb),
        .sel(sel_tb),
        .out(out_tb)
    );
    
    initial begin 
        
        sel_tb = 0;
        in0_tb = 0;
        in1_tb = 0;
    #10 in0_tb = 1;
    #10 in0_tb = 0;
    #10 in0_tb = 1;
        in1_tb = 1;
    #10 in0_tb = 0;
        in1_tb = 0;
    #10 in0_tb = 1;
        in1_tb = 1;
    #10 in0_tb = 0;
    #10 in0_tb = 1;
    #10 in0_tb = 0; 
        sel_tb = 1;
    #10 in0_tb = 1;
    #10 in0_tb = 0;
    #10 in0_tb = 1;
        in1_tb = 0;
    #10 in0_tb = 0;
    #10 in0_tb = 1;
        in1_tb = 1;
    #10 in0_tb = 0;
    
    #20 $stop();
    
    end
    
    /* initial 
        begin 
        in0 = 0;
            forever #10 in0 =~ in0;
        end
    */
    
endmodule
