`timescale 1ns / 1ps

module bitstabil(

    input data_in,
    input clock,
    output data_out
    );
    
    wire wire1;
    
    D_latch Master(
        .data(data_in),
        .en(~clock),
        .out0(wire1),
        .out1()
    
    );
    
    D_latch Slave(
        .data(wire1),
        .en(clock),
        .out0(data_out),
        .out1()
    );
endmodule
