`timescale 1ns / 1ps

module mux_data_8b_tb();

    reg [7:0] in0_tb;
    reg [7:0] in1_tb;
    wire [7:0] out_tb;
    reg sel_tb;
    
    mux_data_8b dut(
        .in0(in0_tb),
        .in1(in1_tb),
        .sel(sel_tb),
        .out(out_tb)
    );
    
    initial begin 
            sel_tb = 0;
            in1_tb = 0;
            in0_tb = 0;
        #5  in1_tb = 8'b00110101;
            in0_tb = 8'b01001111;
        #5  sel_tb = 1;
        #10 in1_tb = 8'b00001111;
            in0_tb = 8'hF0;
        #10 sel_tb = 0;
        #5  in1_tb = 8'hAA;
            in0_tb = 8'd25;
        #5  sel_tb = 1;
        #5  in1_tb = 8'd0;
        #5  sel_tb = 0;
        #5  in1_tb = 8'd1;
            in0_tb = 8'b10101010;
        #10 sel_tb = 1;
        
        // #20 $stop();
    end

endmodule
