`timescale 1ns / 1ps
module Structural(
        input       [11:0]  seed    ,
        input       [11:0]  prev    ,
        output reg  [3:0]   data_out
    );
    
    reg [11:0]temp;

    always @(*)
    begin
        case(seed[1:0])
        0:  data_out = prev[3:0];  
        1:  data_out = prev[7:4];
        2:  data_out = prev[11:8];
        3:  
            begin
            temp = 3 * prev + 4;
            data_out = temp[3:0];
            end
        endcase
    end
endmodule
