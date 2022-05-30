`timescale 1ns / 1ps


module TOP(
        input clk,
        input rst,
        input en,
        input [7:0]data_in,
        output [7:0]data_read,
        output [7:0]cons,
        output [7:0]vowel,
        output check
    );
    wire is_vowel;
    wire out_counter;
    wire out_reg_file;
    
    Pass_check P(
        .in(data_in),
        .en(en),
        .rst(rst),
        .clk(clk),
        .out(check)
    );
    
    Vowel_checker_struct V(
        .data_in(data_in),
        .out(is_vowel)
    );
    
     Demux D(
        .in(data_in),
        .sel(is_vowel),
        .out0(cons),
        .out1(vowel)
    );
    
    Counter  Count(
        .clk(clk),
        .rst(rst),
        .en(en),
        .out(out_counter)
    );
    
    Reg_file R(
        .in(out_counter),
        .rst(rst),
        .clk(clk),
        .out(out_reg_file)
    );
    
    RAM Cons(
	   .clk(clk),
	   .w_en(en & ~is_vowel),
	   .addr(out_reg_file), 
	   .w_data(data_in),
	   .r_data(data_read)
    );
    
    RAM Vowels(
	   .clk(clk),
	   .w_en(en & is_vowel),
	   .addr(out_reg_file), 
	   .w_data(data_in),
	   .r_data()
    );
    
endmodule
