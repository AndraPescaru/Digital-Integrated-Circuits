`timescale 1ns / 1ps


module RAM(
	   input  clk,
	   input  w_en,
	   input  [5:0] addr, 
	   input  [7:0] w_data,
	   output  [7:0] r_data
    );
    
reg [7:0] memorie_efectiva [0:63];   

assign r_data = memorie_efectiva[addr]; 
    
always@(posedge clk)
begin    
    if(w_en == 1)
    	begin
    	memorie_efectiva[addr] <= w_data;
    	end 
end    
    
endmodule
