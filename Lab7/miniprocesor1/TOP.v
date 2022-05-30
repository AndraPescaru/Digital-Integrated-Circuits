`timescale 1ns / 1ps

module TOP(
        input       clock       ,
        input [1:0] adr_r_a     ,
        input [1:0] adr_r_b     ,
        input       sel         ,
        input       w_en_n_1    ,
        input [1:0] adr_w       ,
        input [3:0] data_in     ,
        input       reset_n     ,
        input       w_en_n_2    ,
        output[2:0] out_leds    ,
        output[6:0] out_7seg    
    );
    
    wire [3:0]  out_ALU;
    wire [3:0]  out_MUX;
    wire [31:0] out_CNT;
    wire [3:0]  out_DATA_RAM_a;
    wire [3:0]  out_DATA_RAM_b;
    wire [1:0]  out_INSTR_RAM;
    
    MUX Multiplexor(
        .in0(out_ALU)    ,
        .in1(data_in)    ,
        .sel(sel)        ,
        .out(out_MUX)
    );
    
    COUNTER Numarator(
        .clock  (clock)     ,
        .reset_n(reset_n)   ,
        .out    (out_CNT)    
    );
    
    assign out_leds = out_CNT[29:27];
    
    DATA_RAM DataRam(
        .clock  (clock)         ,
        .adr_r_a(adr_r_a)       , 
        .adr_r_b(adr_r_b)       , 
        .w_e_n  (w_en_n_1)      ,
        .adr_w  (adr_w)         ,
        .data_w (out_MUX)        ,
        .out_a  (out_DATA_RAM_a),
        .out_b  (out_DATA_RAM_b)    
    );
    
    INSTR_RAM InstructionRam(
        .clock (clock)          , 
        .w_e_n (w_en_n_2)       ,
        .adr   (out_leds)        ,
        .data_w(data_in[3:2])   ,
        .out   (out_INSTR_RAM)   
    );
    
    ALU AritmeticLogicUnit(
        .in0    (out_DATA_RAM_a),
        .in1    (out_DATA_RAM_b),
        .instr  (out_INSTR_RAM),
        .out    (out_ALU)
    );
    
    TRANSCODER SegDecodor(
        .in    (out_ALU),
        .out   (out_7seg)
    );
endmodule
