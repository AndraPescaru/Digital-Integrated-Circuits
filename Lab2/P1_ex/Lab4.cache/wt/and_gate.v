module and_gate
	(
		input in0,	// aici sunt 2 intrari 
		input in1,	// se poate omite "wire". default e wire daca nu e pus nimic 
		output out0
	); // nu conteaza ordinea in care sunt puse intrarile si iesirile.
			// uzual si pentru usurinta se ordoneaza si grupeaza dupa functionalitate
			// in cazul de mai sus, am pus intai intrarile, apoi iesirile.

assign out0 = in0 & in1; // operatia propriu zisa 

endmodule
