module counter(
    input clk,
    input reset,
    input en,
    input load,
    input [29:0] data_load,
    input down,
    output reg[29:0] out
    );
    
    always @(posedge clk) begin
        if(reset) begin
            out <= 0;
        end
            else begin
                if(load) begin
                    out <= data_load;
                end
                    else begin
                        if(en) begin
                            if(down) begin
                                out <= out - 1;
                            end
                                else begin
                                    out <= out + 1;
                                end
                        end
                            else begin
                                out <= out;
                            end
                    end
            end
    end
    
endmodule
