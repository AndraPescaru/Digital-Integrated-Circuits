`timescale 1ns / 1ps

module automat_mealy(
input clock ,
input reset , 
input in50  ,
input in100 ,
output reg out
    );
    
    reg [2:0] stare;
    
    localparam nu = 1'b0,
               da = 1'b1;
    
    localparam 
    s_0_b = 3'b000,
    s_50_b = 3'b001,
    s_100_b = 3'b010,
    s_150_b = 3'b011,
    s_200_b = 3'b100;
    
     
    
    always@(posedge clock)
    if(reset) stare <= s_0_b ;
    else case (stare)
               s_0_b : if (in50==0 && in100==0) stare <= s_0_b;
                        else if (in50 == 1 && in100 == 0) stare <= s_50_b;
                               else if (in50 == 0 && in100 == 1) stare <= s_100_b;
                                      else if (in50 == 1 && in100 == 1) stare <= s_150_b;
              
               s_50_b : if (in50==0 && in100==0) stare <= s_50_b;
                        else if (in50 == 1 && in100 == 0) stare <= s_100_b;
                               else if (in50 == 0 && in100 == 1) stare <= s_150_b;
                                      else if (in50 == 1 && in100 == 1) stare <= s_200_b;
                                      
               s_100_b  : if (in50==0 && in100==0) stare <= s_100_b;
                        else if (in50 == 1 && in100 == 0) stare <= s_150_b;
                               else if (in50 == 0 && in100 == 1) stare <= s_200_b;
                                      else if (in50 == 1 && in100 == 1) stare <= s_0_b;
                                      
               s_150_b  : if (in50==0 && in100==0) stare <= s_150_b;
                        else if (in50 == 1 && in100 == 0) stare <= s_200_b;
                               else if (in50 == 0 && in100 == 1) stare <= s_0_b;
                                      else if (in50 == 1 && in100 == 1) stare <= s_50_b;
                                      
               s_200_b  : if (in50==0 && in100==0) stare <= s_200_b;
                        else if (in50 == 1 && in100 == 0) stare <= s_0_b;
                               else if (in50 == 0 && in100 == 1) stare <= s_50_b;
                                      else if (in50 == 1 && in100 == 1) stare <= s_100_b;
    endcase
                                      
                                      
    always @(posedge clock)
    case (stare)
               s_0_b : if (in50==0 && in100==0) out <= nu;
                        else if (in50 == 1 && in100 == 0) out <= nu;
                               else if (in50 == 0 && in100 == 1) out <= nu;
                                      else if (in50 == 1 && in100 == 1) out <= nu;
              
               s_50_b : if (in50==0 && in100==0) out <= nu;
                        else if (in50 == 1 && in100 == 0) out <= nu;
                               else if (in50 == 0 && in100 == 1) out <= nu;
                                      else if (in50 == 1 && in100 == 1) out <= nu;
                                      
               s_100_b  : if (in50==0 && in100==0) out <= nu;
                        else if (in50 == 1 && in100 == 0) out <= nu;
                               else if (in50 == 0 && in100 == 1) out <= nu;
                                      else if (in50 == 1 && in100 == 1) out <= da;
                                      
               s_150_b  : if (in50==0 && in100==0) out <= nu;
                        else if (in50 == 1 && in100 == 0) out <= nu;
                               else if (in50 == 0 && in100 == 1) out <= da;
                                      else if (in50 == 1 && in100 == 1) out <= da;
                                      
               s_200_b  : if (in50==0 && in100==0) out <= nu;
                        else if (in50 == 1 && in100 == 0) out <= da;
                               else if (in50 == 0 && in100 == 1) out <= da;
                                      else if (in50 == 1 && in100 == 1) out <= da;
                    
    endcase                  
endmodule
