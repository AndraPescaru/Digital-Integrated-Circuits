`timescale 1ns / 1ps

module tb();

    reg in0_top;
    reg in1_top;
    reg in2_top;
    reg in3_top;
    reg [1:0] sel_top;
    reg [3:0] data_top;
    wire out0_top;
    wire out1_top;
    wire out2_top;
    wire out3_top;
    
    top dut(
        .in0_top(in0_top),
        .in1_top(in1_top),
        .in2_top(in2_top),
        .in3_top(in3_top),
        .sel_top(sel_top),
        .data_top(data_top),
        .out0_top(out0_top),
        .out1_top(out1_top),
        .out2_top(out2_top),
        .out3_top(out3_top)
        
    );
    
endmodule
