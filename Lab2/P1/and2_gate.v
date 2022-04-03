`timescale 1ns / 1ps

module and2_gate(
        input in0,
        input in1,
        output out0
    );

        assign out0 = in0 & in1;
        
endmodule
