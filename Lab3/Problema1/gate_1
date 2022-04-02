`timescale 1ns / 1ps


module gate1(

    input in0,
    input in1,
    input sel,
    output out
    );
    
    // Varianta 1 cu Assign 
    
    // out = w1 | w2
    
    wire w1;
    wire w2;
    
    assign w1 = in0 & ~ sel;
    assign w2 = in1 & ~ sel;
    assign out = (in0 & ~ sel) | (in1 & sel);
    
endmodule
