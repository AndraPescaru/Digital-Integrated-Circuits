`timescale 1ns / 1ps


module gate2(
    input in0,    input in1,
    input sel,
    output reg out
);

    // Varianta 2 cu ALWAYS and if
    
    always @(*) begin
        
        if (sel == 0) begin
            out = in0;
        end else begin
            out = in1;
        end
        
    end
  
endmodule
