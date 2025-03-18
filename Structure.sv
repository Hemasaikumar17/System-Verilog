/******************************************** STRUCTURES *********************************************/

/*
 STRUCTURES :-
 
 1) A structure can contain different members of different data types. An array contains elements of the same data type. This makes structures different from an array.
 
 2) SYNTAX :-
   
           struct { <data_type> <member 1>;
                    <data_type> <member 2>;
                    <data_type> <member 3>;
                    ....;
                    ....;
                    } <struct name>;
                    
                    

TYPEDEF :-

1) Only one variable was created using struct keyword, but if there's a need to create multiple structure variables with the same constituents, it'll be better to create a user defined data type of the structure by typedef. Then eth_pkt will become a data-type which can then be used to create variables of that type.

2)SYNTAX :-
     
         typedef struct { <data_type> <member 1>;
                          <data_type> <member 2>;
                          <data_type> <member 3>;
                          ....;
                          ....;
                      } <structure name>;

 */



module STRUCTURE;
  struct {bit [15:0] preamble;
          byte da,sa;
         }eth_pkt;
  
  initial
    begin
      $display("------------------------------ STRUCTURE ------------------------------------------");
      eth_pkt.preamble = 16'b1010_1010_1010_1010;
      eth_pkt.da = 8'b1110_1011;
      eth_pkt.sa = 8'b0111_1101;
      
      $display("\teth_pkt = %p",eth_pkt);
      $display("----------------------------------------------------------------------------------");
    end
endmodule


module TYPEDEF_STRUCTURE;
  typedef struct {bit [15:0] preamble;
                  byte da,sa;
                 }eth_pkt;
  
  initial
    begin
      eth_pkt pkt1,pkt2;
      
      pkt1 = '{16'b1110_1010_0011_1000,8'b0001_1100,8'b1111_1011};
      pkt2 = '{16'b0110_1110_1010_1110,8'b0101_0101,8'b1001_0001};
      $display("\n----------------------- TYPEDEF IN STRUCTURE -----------------------------------");
      $display("\tPKT1 :: %p",pkt1);
      $display("\tPKT2 :: %p",pkt2);
      $display("----------------------------------------------------------------------------------");
    end
endmodule
