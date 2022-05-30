`timescale 1ns / 1ps

module Vowel_checker_struct(
        input [7:0]data_in,
        output out
    );
    wire out_1;
    wire out_2;
    wire out_3;
    wire out_4;
    wire out_5;
    
    Comp C1(
       .in0(data_in),
       .in1("a"), 
       .out(out_1)
    );
    
    Comp C2(
       .in0(data_in),
       .in1("e"), 
       .out(out_2)
    );
    
    Comp C3(
       .in0(data_in),
       .in1("i"), 
       .out(out_3)
    );
    
    Comp C4(
       .in0(data_in),
       .in1("o"), 
       .out(out_4)
    );
    
    Comp C5(
       .in0(data_in),
       .in1("u"), 
       .out(out_5)
    );
    
    assign out = out_1|out_2|out_3|out_4|out_5;
endmodule

module Comp
    (
        input [7:0] in0,
        input [7:0] in1,
        output reg out
    );
always @(*)
    begin
    if(in0 == in1) assign out = 1;
    else assign out = 0;
    end
endmodule
