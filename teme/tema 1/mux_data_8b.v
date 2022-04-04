`timescale 1ns / 1ps

module mux_data_8b(

    input [7:0] in0,
    input [7:0] in1,
    input sel,
    output reg [7:0] out
    );
    
    always @(*) begin
        if (sel == 0) begin
            out = in0;
        end else begin
            out = in1;
        end
    end 
    
endmodule
