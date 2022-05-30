`timescale 1ns / 1ps


module Counter(
        input clk,
        input rst,
        input en,
        output reg [5:0]out
    );
    
    
    always @(posedge clk)
        begin
        if(rst) out <= 0;
        else
            begin
            if(en) out <= out + 1;
            else out <= out;
            end
        end
endmodule
