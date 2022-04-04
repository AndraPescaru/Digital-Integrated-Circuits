`timescale 1ns / 1ps

module sum_4b(

    input c_in,
    input [3:0] a,
    input [3:0] b,
    output wire [3:0] out,
    output wire c_out
    );
    
    assign {c_out,out} = a + b + c_in;
    
endmodule
