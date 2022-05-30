`timescale 1ns/1ps

module tb();

    reg [3:0]  adr ;
    reg        wen ;
    reg [3:0]  din ;
    reg        clk ;
    wire [3:0] dout;
    
    top dut(
        .adr(adr), 
        .wen(wen), 
        .din(din), 
        .clk(clk), 
        .dout(dout)
    );
    
    initial begin
        clk = 0;
        forever begin 
            #5 clk = ~clk;
        end
    end    

endmodule
