`timescale 1ns/1ps     // setăm unitatea de timp la 1ns, cu o precizie de 1ps

module waveform2();    // modulul se numește waveform2 si nu are nicio intrare și nicio iesire

reg clock;             // semnalul de test se va modifica într-un bloc initial, așadar este declarat de tip reg

initial begin
    clock = 0;                   // valoarea inițială a semnalului va fi 0 (la momentul t = 0)
    forever #1 clock = ~clock;   // forever indică faptul că ce urmează se va repeta într-o buclă continuă. 
                                 // La trecea unui timp egal cu unitatea de timp definită, semnalul clock iși va nega valoarea
end

initial begin
    #20 $stop();       // La 20 de unități de timp (aici, 20 ns), simularea se va opri. 
                       // Aici punem $stop într-un bloc separat, deoarece forever blochează blocul initial în care se află
                       // Toate blocurile initial încep la același moment de timp (t = 0) și au efect în paralel
end

endmodule
