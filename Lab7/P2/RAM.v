`timescale 1ns / 1ps

module RAM(
    input  [3:0] wr_addr,
    input wr_en,
    input [3:0] wr_data,
    input clk,
    input [3:0] rd_addr,
    output [3:0] rd_data

);

reg [3:0] memorie_efectiva [0:15];

assign rd_data = memorie_efectiva[rd_addr];

always @(posedge clk) begin
    if (wr_en == 1) begin
        memorie_efectiva[wr_addr] <= wr_data;
    end
end 

endmodule
