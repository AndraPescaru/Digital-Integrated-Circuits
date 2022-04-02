`timescale 1ns / 1ps

module tb(); 

    reg [7:0] in0;
    wire [7:0] out0;
    wire [7:0] out1;
    
    reg ok;
    
    codor_cezar test1(
        .in(in0),
        .out(out0)
    );
    
    codor_cezar test2(
        .in(in1),
        .out(out1)
    );
    
    initial begin
    
        in0 = "a";
     #4 in0 = "m";
     #4 in0 = "k";
     
     #10 $stop();
    end
    
    always @(*) begin
    
        if ( out1 == out0 ) begin
            ok = 1;
        end else begin
            ok = 0;
        end
    
    end
    
endmodule
