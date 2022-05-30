`timescale 1ns / 1ps

module DATA_RAM(
        input             clock       ,
        input       [1:0] adr_r_a     , 
        input       [1:0] adr_r_b     , 
        input             w_e_n       ,
        input       [1:0] adr_w       ,
        input       [3:0] data_w      ,
        output reg  [3:0] out_a       ,
        output reg  [3:0] out_b      
    );
    
    reg [3:0] MEM[0:3];  
    
        
    always @(*)
        begin
        out_a <= MEM[adr_r_a];
        out_b <= MEM[adr_r_b];
        end
    always @(posedge clock)
        begin
        if(w_e_n == 0)
            begin 
            MEM[adr_w] <= data_w;
            end
        end
    
    
    
endmodule

module INSTR_RAM(
        input             clock       , 
        input             w_e_n       ,
        input       [2:0] adr         ,
        input       [1:0] data_w      ,
        output reg  [1:0] out      
    );
    
    reg [1:0] MEM[0:7];  
    
    always @(posedge clock)
        begin
        out <= MEM[adr];
        if(w_e_n == 0)
            begin 
            MEM[adr] <= data_w;
            end
        end
    
    
    
endmodule
