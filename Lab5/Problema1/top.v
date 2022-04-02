`timescale 1ns / 1ps

module top(
    input in0_top,
    input in1_top,
    input in2_top,
    input in3_top,
    input [1:0] sel_top,
    input [3:0] data_top,
    output out0_top,
    output out1_top,
    output out2_top,
    output out3_top
);

    wire w1;
    
    mux4 mux_4 (
        .in0(in0_top),
        .in1(in1_top),
        .in2(in2_top),
        .in3(in3_top),
        .sel(sel_top),
        .out(w1)
    );
    
    wire w3;
    wire [1:0] w2;
    
    parity parity_top(
        .in(data_top),
        .out(w2)
    );
    
    mux2 mux_2 (
        .in0(~sel),
        .in1(sel),
        .out(w2),
        .sel(w3)
    );
    
    demux4 demux_4(
        .out0(out0_top),
        .out1(out1_top),
        .out2(out2_top),
        .out3(out3_top),
        .sel(w2)
    );
    
endmodule
