`timescale 1ns / 1ps


module Desen(
        input               clk,
        input               rst,
        input               start,
        input               stop,
        input       [11:0]  seed,
        input       [11:0]  prev,
        output      [3:0]   out
        
    );
    
    wire        out_FF;
    wire [3:0]  out_CNT;
    
    FlipFlop FlipFlop_1(
        .clk    (clk),
        .rst    (rst),
        .toggle (start | stop),
        .out    (out_FF)
    );
    
    Counter #(4)Counter_1(
        .clk(clk),
        .rst(rst),
        .en (out_FF),
        .out(out_CNT)
    );
    
    Lut Lut_1(
        .adr(seed + prev + out_CNT),
        .out(out)
    );
    
    
endmodule
