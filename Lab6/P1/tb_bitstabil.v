`timescale 1ns / 1ps

module tb_bitstabil1();

    reg tb_data_in;
    reg tb_clock;
    wire tb_data_out;
    
    bitstabil dut(
        .data_in(tb_data_in),
        .clock(tb_clock),
        .data_out(tb_data_out)
    
    );
    
    initial begin
    
    end

endmodule
