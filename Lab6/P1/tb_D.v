`timescale 1ns / 1ps

module tb_D();

    reg tb_data;
    reg tb_en;
    wire tb_out0;
    wire tb_out1;
    
    D_latch dut(
        .data(tb_data),
        .en(tb_en),
        .out0(tb_out0),
        .out1(tb_out1)
    );
    
    initial begin
    
    end

endmodule
