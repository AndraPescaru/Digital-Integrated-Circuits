`timescale 1ns / 1ps

module RAM(
        input       [5:0]   r_adr   ,
        input       [5:0]   w_adr   ,
        input               w_en    ,
        input       [11:0]  w_data  ,
        output reg  [11:0]  r_data
    );
    
    reg [11:0] MEM[0:63];
    
    
    always @(*) 
    begin 
        r_data = MEM[r_adr];
        if(w_en) MEM[w_adr] = w_data; 
    end
    
endmodule
