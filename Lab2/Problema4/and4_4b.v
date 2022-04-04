`timescale 1ns / 1ps

    module and4_4b(
        input wire  [3:0] in0,
        input wire  [3:0] in1,
        input wire  [3:0] in2,
        input wire  [3:0] in3,
        output wire [3:0] out
        
    );
    
    assign out = in0 & in1 & in2 & in3;
    
endmodule
