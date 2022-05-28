`timescale 1ns / 1ps

module sr_latch(

    input in0,
    input in1,
    output out0,
    output out1
    );
    
    assign #1 out0 = ~(in0 | out1);
    assign #1 out1 = ~(out0 | in1);
    
endmodule
