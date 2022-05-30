module tb();

reg clock, reset, in50, in100;
wire out;

automat_mealy(
    .clock(clock),
    .reset(reset), 
    .in50(in50),
    .in100(in100),
    .out(out)
    );
    
initial begin
    clock = 0;
    forever #5 clock = ~clock;
end

initial begin
    reset = 1;
    in50 = 0;
    in100 = 0;
    @(posedge clock)
    @(posedge clock)
    reset <= 0;
    in50 <= 1;
    in100 <= 0;
    @(posedge clock)
    in50 <= 1;
    in100 <= 1;
    
    @(posedge clock)
    in50 <= 0;
    in100 <= 1;
    
    @(posedge clock)
    @(posedge clock)
    @(posedge clock)
    
    in50 <= 0;
    in100 <= 1;
    
    @(posedge clock)
    @(posedge clock)
    
    in50 <= 0;
    in100 <= 0;
    
    @(posedge clock)
    
    #50 $stop();
    
end

endmodule
