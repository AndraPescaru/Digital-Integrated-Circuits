module top_v2
    (
	    input a,
	    input b,
	    output c
    );
  
wire w0;

and and_gate_0(w0,a,b);	// primitiva pentru poarta and
not not_gate_0(c,w0);  	// primitiva pentru poarta not
   
endmodule
