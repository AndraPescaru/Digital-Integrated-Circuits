`timescale 1ns / 1ps

module demux4 (
    input in,
    output reg out0,
    output reg out1,
    output reg out2,
    output reg out3,
    input [1:0] sel
    
);

always @(*) begin
    if (sel == 0) begin
        out0 = in;
        out1 = 0;
        out2 = 0;
        out3 = 0;
    end
    
    if (sel == 1) begin
        out0 = 0;
        out1 = in;
        out2 = 0;
        out3 = 0;
    end
    
    if (sel == 2) begin
        out0 = 0;
        out1 = 0;
        out2 = in;
        out3 = 0;
    end
    
    if (sel == 3) begin
        out0 = 0;
        out1 = 0;
        out2 = 0;
        out3 = in;
    end
end
    
endmodule
