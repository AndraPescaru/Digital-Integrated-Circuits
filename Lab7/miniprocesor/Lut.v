`timescale 1ns / 1ps

module Lut(
        input       [3:0] adr,
        output      [3:0] out
    );
    assign out[0] = adr[3];
    assign out[1] = adr[2];
    assign out[2] = adr[1];
    assign out[3] = adr[0];
endmodule
