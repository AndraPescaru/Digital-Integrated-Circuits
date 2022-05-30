`timescale 1ns / 1ps

module ALU(
        input       [3:0] in0    ,
        input       [3:0] in1    ,
        input       [1:0] instr  ,
        output reg  [3:0] out
    );
    
 always @(*)
     begin 
     case(instr)
        0: out <= in0 + in1;
        1: out <= in0 - in1;
        2: out <= in0 & in1;
        3: out <= 0;
        endcase
     end   
endmodule
