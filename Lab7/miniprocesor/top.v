`timescale 1ns / 1ps

module TOP(
        input               clk,
        input               rst,
        input               start,
        input               stop,
        input       [5:0]   adr,
        input       [11:0]  seed,
        output      [11:0]  data_read,
        output      [11:0]  data_curent
    );
    wire [11:0]out_delay_REG;
    wire [5:0] out_CNT;

    
    Desen Desen_1(
        .clk    (clk),
        .rst    (rst),
        .start  (start),
        .stop   (stop),
        .seed   (seed),
        .prev   (out_delay_REG),
        .out    (data_curent[11:8])  
    );
    
    REG delay_Reg(
        .clk     (clk),
        .rst     (rst),
        .data_in (data_curent),
        .data_out(out_delay_REG)
    );
    
    Counter#(6) Counter_2(
        .clk    (clk),
        .rst    (rst),
        .en     (stop),
        .out    (out_CNT)
    );
    
    RAM Ram_1(
        .r_adr   (adr),
        .w_adr   (out_CNT),
        .w_en    (stop),
        .w_data  (data_curent),
        .r_data  (data_read)
    );
    
    FSM Fsm_1(
        .clk     (clk),
        .rst     (rst),
        .start   (start),
        .stop    (stop),
        .seed    (seed),
        .prev    (out_delay_REG),
        .data_out(data_curent[3:0])
    );
    
    Structural STR_1(
        .seed    (seed),
        .prev    (out_delay_REG),
        .data_out(data_curent[7:4])
    );
 
endmodule
