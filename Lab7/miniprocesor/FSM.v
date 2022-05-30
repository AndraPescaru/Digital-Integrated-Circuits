`timescale 1ns / 1ps

module FSM(
        input               clk     ,
        input               rst     ,
        input               start   ,
        input               stop    ,
        input       [11:0]  seed    ,
        input       [11:0]  prev    ,
        output  reg [3:0]   data_out
    );
    
    localparam stare_init   = 2'd0;
    localparam stare_add    = 2'd1;
    localparam stare_noadd  = 2'd2;
    
    reg [1:0]stare;
    
    always @(posedge clk)
    begin
        if(rst) 
        begin
            stare <= stare_init;
        end
        else
            begin
                if(start == 1)stare <= stare_add;
                else if(stop == 1)stare <= stare_noadd;       
            end    
    end
    
    always @(*)
    begin
        case(stare)
            stare_init  :   data_out  = seed[3:0];
            stare_add   :   data_out  = data_out + 1;
            stare_noadd :   data_out  = data_out;
        endcase
    end
    
endmodule
