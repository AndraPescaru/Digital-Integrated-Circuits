module SR_latch(
    input clk,
    input set,
    input reset,
    output reg out
    );
    
    always @(posedge clk) begin
        if(reset) begin
            out <= 0;
        end
            else begin
                if(set) begin
                    out <= 1;
                end
            end
    end                     
endmodule
