module comparator_lower_equal(
    input [29:0] in0,
    input [29:0] in1,
    output out
    );
    
    assign out = in0 <= in1;
    
endmodule
