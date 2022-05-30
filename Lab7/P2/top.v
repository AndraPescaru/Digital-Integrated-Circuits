`timescale 1ns / 1ps


module top(

    input [3:0] adr,
    input wen,
    input[3:0] din,
    input clk,
    output [3:0] dout
    );
    
    
wire [3:0] wire_counter_ram;

wire [3:0] wire_ram_rom;
    
counter counter_top(
    .clk(clk),
    .cout(wire_counter_ram)

);

ROM ROM_top(

    .in(wire_ram_rom),
    .out(dout)

);

RAM RAM_top(

    .wr_addr(adr),
    .wr_en(wen),
    .wr_data(din),
    .clk(clk),
    .rd_addr(wire_counter_ram),
    .rd_data(wire_ram_rom)
);



    
    
endmodule
