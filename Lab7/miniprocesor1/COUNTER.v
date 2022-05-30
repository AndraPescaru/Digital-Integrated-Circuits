`timescale 1ns / 1ps

module COUNTER(
        input           clock     ,
        input           reset_n   ,
        output reg[31:0]out        
    );
    
    always @(posedge clock)
        begin
        if(reset_n)
            begin
            out <= out + 1;
            end
        else out <= 0;
        end
endmodule
