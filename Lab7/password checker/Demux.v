`timescale 1ns / 1ps


module Demux(
        input [7:0]in,
        input sel,
        output reg [7:0]out0,
        output reg [7:0]out1
    );
    
    always @(*)
        begin
        if(sel == 0)
            begin 
            out0 = in;
            out1 = 32;
            end
        else 
            begin 
            out1 = in;
            out0 = 32;
            end
        end
endmodule
