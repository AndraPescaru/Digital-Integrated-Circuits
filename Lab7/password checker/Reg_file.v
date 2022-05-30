`timescale 1ns / 1ps

module Reg_file(
        input [5:0] in,
        input rst,
        input clk,
        output reg [5:0] out
    );
    
    always @(posedge clk)
        begin
        if(rst) out <= 0;
        else out <= in;
        end
endmodule
