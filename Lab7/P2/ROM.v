`timescale 1ns / 1ps
module ROM(
    input [3:0] in,
    output reg [3:0] out
);

always @(in)
    case(in)
        0: out = 4'b0000;
        1: out = 4'b0110;
        2: out = 4'b0011;
        3: out = 4'b1110;
        4: out = 4'b1011;
        5: out = 4'b1111;
        6: out = 4'b0111;
        7: out = 4'b1100;
        8: out = 4'b0001;
        9: out = 4'b0101;
        10: out = 4'b1101;
        11: out = 4'b1010;
        12: out = 4'b0010;
        13: out = 4'b0100;
        14: out = 4'b1000;
        15: out = 4'b1001;
        default: out = 4'b0000;
    endcase
endmodule
