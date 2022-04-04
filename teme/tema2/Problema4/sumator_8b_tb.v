`timescale 1ns / 1ps

    module sumator_8b_tb();
    
    reg carry_in_tb;  
    reg [7:0] in0_tb; 
    reg [7:0] in1_tb; 
    wire [7:0] out_tb;
    wire carry_out_tb;
    
    sumator_8b dut(
    
        .carry_in(carry_in_tb),
        .in0(in0_tb),
        .in1(in1_tb),
        .out(out_tb),
        .carry_out(carry_out_tb)
    );
    
    initial begin
    
            carry_in_tb = 0;
            in1_tb = 0;
            in0_tb = 0;
        #5  in1_tb = 8'b1001_1001;
            in0_tb = 8'b0010_0010;
        #15 carry_in_tb = 1;
            in1_tb = 8'b0010_1001;
            in0_tb = 8'b0101_0011;
        #15 carry_in_tb = 0;
            in1_tb = 8'b1100_0101;
            in0_tb = 8'b0110_1101;
        #15 carry_in_tb = 1;
            in1_tb = 8'b1000_0101;
            in0_tb = 8'b1001_0101;
            
        //#20 $stop();
    
    end
    
    
endmodule
