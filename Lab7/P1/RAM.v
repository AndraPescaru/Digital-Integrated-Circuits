`timescale 1ns / 1ps

module RAM(

    input wire clock,
    input wire [1:0] addr_read_write,
    input wire we,
    input [2:0] data_write,
    output reg [2:0] data_read

    );
    
    reg [2:0] memorie_efectiva [0:3];
    
    always @(posedge clock)
        begin 
        data_read <= memorie_efectiva[addr_read_write];
        
        if (we == 1 ) begin
            memorie_efectiva[addr_read_write] <= data_write;  
        
        end
        
        
        end
    
endmodule
