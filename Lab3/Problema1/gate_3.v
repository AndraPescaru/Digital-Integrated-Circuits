`timescale 1ns / 1ps


module gate3(
    input in0,
    input in1,
    input sel,
    output reg out
);

    // Varianta 2 cu ALWAYS and if
    
    always @(*) begin
        
        case (sel)
            0: begin
                out = in0;
            end
            1: begin
                out = in1;
            end
        endcase
        
    end
  
endmodule
