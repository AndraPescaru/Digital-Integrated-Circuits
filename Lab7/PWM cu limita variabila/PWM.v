module PWM #(
    parameter LIMIT_PERIOD = 100,
    parameter LIMIT_NR_REPETITIONS = 250_000,
    parameter LIMIT_DUTY_CYCLE_LOW = 0,
    parameter LIMIT_DUTY_CYCLE_HIGH= 100
    )
    (
    input clk,
    input reset,
    output out
    );
    
    wire comp_1_out;
    wire comp_2_out;
    wire comp_3_out;
    wire latch_out;
    wire[29:0] counter_1_out;
    wire[29:0] counter_2_out;
    wire[29:0] counter_3_out;
    
    //PWM
    comparator_lower_equal comp_lower_equal_1(
    .in0(LIMIT_PERIOD),
    .in1(counter_1_out),
    .out(comp_1_out)
    );
    
    counter counter_1(
    .clk(clk),
    .reset(reset | comp_1_out),
    .en(1),
    .load(),
    .data_load(),
    .down(),
    .out(counter_1_out)
    );
    
    comparator_higher comp_higher(
    .in0(counter_3_out),
    .in1(counter_1_out),
    .out(out)
    );
    
    //REPETITIONS
    counter counter_2(
    .clk(clk),
    .reset(reset | comp_2_out),
    .en(comp_1_out),
    .load(),
    .data_load(),
    .down(),
    .out(counter_2_out)
    );
    
    comparator_lower_equal comp_lower_equal_2(
    .in0(LIMIT_NR_REPETITIONS),
    .in1(counter_2_out),
    .out(comp_2_out)
    );
    
    //DUTY CYCLE 
    counter counter_3(
    .clk(clk),
    .reset(/*reset | comp_3_out*/),
    .en(comp_2_out),
    .load(reset),
    .data_load(LIMIT_DUTY_CYCLE_LOW),
    .down(latch_out),
    .out(counter_3_out)
    );
    
    comparator_lower_equal comp_lower_equal_3(
    .in0(LIMIT_DUTY_CYCLE_HIGH),
    .in1(counter_3_out),
    .out(comp_3_out)
    );

    SR_latch SR_latch(
    .clk(clk),
    .set(comp_3_out),
    .reset(reset | (counter_3_out == LIMIT_DUTY_CYCLE_LOW)),
    .out(latch_out)
    );
        
//    T_latch T_latch_1(
//    .clk(clk),
//    .toggle(comp_3_out),
//    .reset(reset | (counter_3_out & 0)),
//    .out(latch_out)
//    );
endmodule
