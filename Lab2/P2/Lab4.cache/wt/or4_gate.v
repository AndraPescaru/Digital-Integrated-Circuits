`timescale 1ns / 1ps

module or4_gate(

    input in0,
    input in1,
    input in2,
    input in3,
    output out
    );
    
    wire w0;
    wire w1;
    
    or2_gate or2_gate1(
        .in0(in0),
        .in1(in1),
        .out(w0)
    );
    
    or2_gate or2_gate2(
        .in0(in2),
        .in1(in3),
        .out(w1)
    );
    
    or2_gate or2_gate3(
        .in0(w0),
        .in1(w1),
        .out(out)
    );
    
endmodule
