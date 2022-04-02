`timescale 1ns / 1ps

module mux4(
    input in0,
    input in1,
    input in2,
    input in3,
    output out,
    input [1:0] sel
);

wire w1, w2;

mux2 mux_0(
    .in0(in0),
    .in1(in1),
    .sel(sel[0]),
    .out(w1)

);


mux2 mux_1(
    .in0(in2),
    .in1(in3),
    .sel(sel[0]),
    .out(w2)

);

mux2 mux_3(
    .in0(w1),
    .in1(w2),
    .sel(sel[1]),
    .out(out)

);
    
endmodule
