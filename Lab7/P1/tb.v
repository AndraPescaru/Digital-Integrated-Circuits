`timescale 1ns / 1ps

module tb();

    reg tb_clock;
    reg [1:0] tb_addr_read_write;
    reg tb_we;
    wire [2:0] tb_data_read;
    reg [2:0] tb_data_write;
    
    RAM dut(
    
        .clock(tb_clock),
        .addr_read_write(tb_addr_read_write),
        .we(tb_we),
        .data_read(tb_data_read),
        .data_write(tb_data_write)
        
    );
    
    initial begin
    
        tb_clock = 0;
        forever begin 
            #5 tb_clock = ~tb_clock;  
        end 
    end    
    
    initial begin
    
    tb_addr_read_write <= 0;
    
    tb_data_write <= 0;
    
    
    end 

endmodule
