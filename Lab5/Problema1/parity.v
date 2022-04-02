`timescale 1ns / 1ps

module parity (
    input [3:0] in,
    output reg out
);

always @(*) begin
    if (in % 2 == 1) begin
        out = 1;
    end  else begin
        out = 0;
    end
end
    
endmodule
