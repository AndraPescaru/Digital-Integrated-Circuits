`timescale 1ns / 1ps


module counter(

    input clk,
    output reg [31:0] cout

    );
    
    always @(posedge clk) begin
        cout <= cout + 1;
    
    end
endmodule
