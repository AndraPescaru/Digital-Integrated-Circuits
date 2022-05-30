module T_latch(
    input clk,
    input toggle,
    input reset,
    output reg out
    );
    
    always @(posedge clk) begin
        if(reset) begin
            out <= 0;
        end
            else begin
                if(toggle) begin
                    out <= ~out;
                end
                    else begin
                        out <= out;
                    end
            end
    end
    
endmodule
