`timescale 1ns / 1ps

module MUX(
        input       [3:0] in0    ,
        input       [3:0] in1    ,
        input             sel    ,
        output reg  [3:0] out
    );
    
    always @(*)
    begin
    if(sel) out = in1;
    else out = in0;
    end
endmodule
