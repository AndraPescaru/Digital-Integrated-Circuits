`timescale 1ns / 1ps

module Counter#(parameter n=4)(
        input               clk,
        input               rst,
        input               en,
        output reg  [n-1:0] out
    );
    
    always @(posedge clk)
    begin
        if(rst)out <= 0;
        else
        begin
            if(en)out <= out + 1;
            else out <= out; 
        end
    end
endmodule
