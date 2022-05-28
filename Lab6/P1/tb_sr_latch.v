`timescale 1ns / 1ps

module tb_sr_latch();

    reg tb_in0;
    reg tb_in1;
    wire tb_out0;
    wire tb_out1;
    
    sr_latch dut(
        .in0(tb_in0),
        .in1(tb_in1),
        .out0(tb_out0),
        .out1(tb_out1)
    
    );
    
    initial begin
    
        tb_in0 = 1;
        tb_in1 = 0;
    #10 tb_in0 = 0;
    #10 tb_in1 = 1;
    #10 tb_in1 = 0;
    #10 tb_in1 = 1;
        tb_in0 = 0;
    #10 tb_in1 = 0;
        tb_in0 = 0;
        
    #20 $stop();    
    
    end


endmodule
