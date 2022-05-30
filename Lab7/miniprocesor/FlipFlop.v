`timescale 1ns / 1ps

module FlipFlop(
        input      clk,
        input      rst,
        input      toggle,
        output reg out
    );
    
    always @(posedge clk)
    begin
        if(rst)out <= 0;
        else
        begin
            if(toggle)out <= ~out;
            else out <= out; 
        end
    end
endmodule
