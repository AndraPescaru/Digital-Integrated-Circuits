// comentarii cu "//" sau cu /* .... */ ;
/* 
	ca in c/c++ 
*/ 

module not_gate	// cuvant cheie "module" apoi numele modulului (asemanator clase din c++)
	( // intre paranteze se pune interfata (firele care intra sau ies din modul)
		input wire in0,         // in0 este o intrare => input, in0 este fir => wire ;
		output wire out0	// out0 este o intrare => output, out0 este fir => wire 
	); // aici ";" sa nu il uitati

assign out0 = ~in0;	// cuvant cheie assign; 
					// semnalele de tip wire (cum e out0) iau valoare prin assign
					// ~ e semnul pentru negatie pe biti (ca in c/c++)

endmodule // cuvant cheie "endmodule". orice module se inchide cu endmodule.
