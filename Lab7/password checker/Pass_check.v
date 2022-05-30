`timescale 1ns / 1ps

module Pass_check(
        input [7:0] in,
        input en,
        input rst,
        input clk,
        output reg out
    );
    reg [2:0] stare;
    localparam lett_b = 3'b000;
    localparam lett_o = 3'b001;
    localparam lett_g = 3'b010;
    localparam lett_d = 3'b011;
    localparam lett_a = 3'b100;
    
    always @(posedge clk)
        begin
        if(rst)stare <= lett_b;
        else
            begin
            if(en)
                begin
                if(stare == lett_b && in == "b")begin stare <= lett_o; out <= 0;end
                else if(stare == lett_o && in == "o")begin stare <= lett_g; out <= 0; end
                else if(stare == lett_g && in == "g")begin stare <= lett_d; out <= 0; end
                else if(stare == lett_d && in == "d")begin stare <= lett_a; out <= 0; end
                else if(stare == lett_a && in == "a")begin stare <= lett_b; out <= 1; end
                else begin stare <= lett_b; out <= 0; end
                end
            end
        end
    
endmodule
