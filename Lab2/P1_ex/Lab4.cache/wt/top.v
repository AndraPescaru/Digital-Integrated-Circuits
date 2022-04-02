module top
	(
		input a,
		input b,
		output c
    );
    
wire w0;    //declarat un fir intern de legatura 
    
and_gate and_gate_0	// instantiere: nume_modul nume_instanta (asemanator int x din c/c++)
	(
		.in0(a), // la intrarea "in0" a instantei "and_gate_0"  se conecteaza firul "a" din top
		.in1(b), // grija ca "in0", "in1", "out0" sa existe in declararea modulului "and_gate"
		.out0(w0) // grija ca "a", "b", "w0" sa existe la nivelul modulului in care se face instantierea
	);    
    
not_gate not_gate_0
	(
		.in0(w0), // "w0" care iese din "and_gate_0" intra in "not_gate_0"
		.out0(c) // "c" care iese din "not_gate_0" iese din modulul "top" (e iesire in interfata de sus)
	);   // se poate scrie si ".in0(w0),.out0(c)" dar se prefera fiecare fir pe randul sau (lizibilitate si loc de comentarii pt design-uri complexe)
	// Observatie: la varianta de mai sus de instantiere, nu conteaza ordinea firelor. 

/*
not_gate not_gate_0		
	(				// se poate instantia si in forma prescurtata ca aici 
		w0,				// in acest caz se pun conexiunile in ordinea in care sunt declarate intrarile si iesirile din modul
		c	// NU se recomanda stilul asta de instantiere
	); 			// apar greseli frecvent la ordinea firelor, la numarul lor, 
*/				// mai ales daca modulul e complex si are multe intrari si intrari
 
endmodule
