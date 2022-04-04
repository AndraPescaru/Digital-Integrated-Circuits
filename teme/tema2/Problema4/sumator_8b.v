`timescale 1ns / 1ps

module sumator_8b(
    
    input carry_in,
    input [7:0] in0,
    input [7:0] in1,
    output [7:0] out,
    output carry_out
);

    wire wire_sum_4b_1_sum_4b_2;

    sum_4b sum_4b_1(
        .c_in(carry_in),
        .a(in1[3:0]),
        .b(in0[3:0]),
        .out(out[3:0]),
        .c_out(wire_sum_4b_1_sum_4b_2)
    );
    sum_4b sum_4b_2(
        .c_in(wire_sum_4b_1_sum_4b_2),
        .a(in1[7:4]),
        .b(in0[7:4]),
        .out(out[7:4]),
        .c_out(carry_out)
    );
    
    assign {carry_out, out} = in0 + in1 + carry_in;
    
endmodule
 
