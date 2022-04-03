`timescale 1ns / 1ps

module and4_gate(

    input in0,
    input in1,
    input in2,
    input in3,
    output out
    );
    
    wire w0;
    wire w1;
    
    and2_gate poarta_1(
        .in0(in0),
        .in1(in1),
        .out(w0)
    );
    
    and2_gate poarta_2(
        .in0(w0),
        .in1(in2),
        .out(w1)
    );
    
    and2_gate poarta_3(
        .in0(w1),
        .in1(in3),
        .out(out)
    );
    
endmodule
