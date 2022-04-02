module top_v3
    (
	    input a,
	    input b,
	    output c
    );
   
assign c = ~ (a & b); // a si b, negate
   
endmodule
