`timescale 1ns / 1ps

module mux2 #
     (
        parameter data_size = 2
     )

    (
        input [data_size - 1 : 0] in0,
        input [data_size - 1 : 0] in1,
        input sel,
        output reg [data_size - 1: 0] out
        
    );
    
    always @(*) begin
        if (sel == 0) begin
            out = in0;
        end else begin
            out = in1;
        end
    end 
    
endmodule
