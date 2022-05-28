`timescale 1ns / 1ps

module D_latch(

    input data,
    input en,
    output out0,
    output out1

    );
    
    assign #1 out0 = ~( (~data & en) | out1 );
    assign #1 out1 = ~( out0 | (data & en)  );
    
endmodule
