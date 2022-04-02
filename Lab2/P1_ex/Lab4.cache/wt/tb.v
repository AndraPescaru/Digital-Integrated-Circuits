`timescale 1ns / 1ps

module top_tb(); // din/in tb nu intra si iese nimic. niciodata.

reg a_tb;	// ce va fi intrare pentru dut, aici e declarat ca "reg", ca sa poata tine valori 
reg b_tb;	
wire c_tb;	// ce e declarat ca iesire pentru dut, aici e declarat ca "wire" pentru ca device-ul ii va da valorile

top dut	// instantierea modulului de tip "top" sub numele "dut" 
	(
		.a(a_tb),
		.b(b_tb),
		.c(c_tb)
    );

initial
begin // in loc de { ... } din c/c++, in Verilog se pune begin ... end 
	#10;		// dupa 10 unitati de timp 
	a_tb = 0;		// a_tb ia valoarea 0
	b_tb = 0;
	#10;		// dupa inca 10 unitati de timp, deci in total la 20
	a_tb = 1;
	b_tb = 0;
	#10;
	a_tb = 0;
	b_tb = 1;
	#10;
	a_tb = 1;
	b_tb = 1;
	#10;
	a_tb = 0;
	b_tb = 0;
	
	#20 $stop();	// oprirea simularii 
end //end pentru initial 

endmodule
