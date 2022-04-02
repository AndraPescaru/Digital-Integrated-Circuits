
`timescale 1ns/1ps     // setăm unitatea de timp la 1ns, cu o precizie de 1ps

module waveform1();    // modulul se numește waveform1 și nu are nicio intrare și nicio ieșire. Semnalele de test generate sunt semnale interne.

reg a, b;              // cele două semnale de test sunt modificate într-un bloc de tip initial și trebuie declarate ca elemente de tip reg.

initial begin
    $monitor("time = %2d, a = %b, b=%b", $time, a, b);  // monitorizăm în consolă starea semnalelor a si b
       a = 0;          // semnalul a va avea valoarea 0 la momentul inițial de timp (la momentul t = 0)
       b = 0;          // semnalul b va avea valoarea 0 la momentul inițial de timp (la momentul t = 0)
    #1 a = 1;          // după 1ns de la momentul inițial, a se face 1
    #1 b = 1;          // după 2ns de la momentul inițial, b se face 1
    #1 a = 0;          // după 3ns de la momentul inițial, a se face 0
       b = 0;          // după 3ns de la momentul inițial, b se face 0
    #2 $stop();        // simularea este oprită
end

endmodule              // incheiem descrierea modulului de generare de semnale digitale
