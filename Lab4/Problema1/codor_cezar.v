`timescale 1ns / 1ps

module codor_cezar(
    input [7:0] in,
    output reg [7:0] out
    );
    
    always @(*) begin
        case (in)
            "a": begin
                out <= "h";
            end
            "b": begin
                out <= "i";
            end
            "c": begin
                out <= "j";
            end
            "d": begin
                out <= "k";
            end
            "e": begin
                out <= "l";
            end
            "f": begin
                out <= "m";
            end
            "g": begin
                out <= "n";
            end
            "h": begin
                out <= "o";
            end
            "i": begin
                out <= "p";
            end
            "j": begin
                out <= "q";
            end
            "k": begin
                out <= "r";
            end
            "l": begin
                out <= "s";
            end
            "m": begin
                out <= "t";
            end
            "n": begin
                out <= "w";
            end
            "o": begin
                out <= "x";
            end
            "p": begin
                out <= "y";
            end
            "q": begin
                out <= "z";
            end
            "r": begin
                out <= "a";
            end
            "s": begin
                out <= "b";
            end
            "t": begin
                out <= "c";
            end
            "w": begin
                out <= "d";
            end
            "x": begin
                out <= "e";
            end
            "y": begin
                out <= "f";
            end
            "z": begin
                out <= "g";
            end
            default: out = 32;
        endcase
    end
endmodule
