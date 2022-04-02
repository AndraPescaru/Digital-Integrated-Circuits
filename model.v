`timescale 1ns / 1ps

module model(

    input [7:0] in,
    output reg [7:0] out
    );
    
    always @(*) begin
    
        if ( in >= "q") begin
            out = "a" + 7 - ("z" - in);
        end else begin
            out = in + 7;
        end
 
    end
endmodule
