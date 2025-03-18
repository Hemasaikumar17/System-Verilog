/******************************************************************************************************** FIXED SIZE ARRAYS **********************************************************************************************************/


/*
--> Array :- An Array is a group of variables having same data type.

--> A Fixed-Size Array, also known as a Static Array, is an array whose size is determined at       compile time and remains constant throughout the simulation. Unlike dynamic arrays, fixed-       size arrays cannot be resized or reallocated during runtime.


*/


module fixed_size_array_tb;
  byte FA[10];
  
  initial
    begin
      $display("\n--------------------------- FIXED SIZE ARRAY ------------------------------");
      $display("\tFA = %P",FA);
      foreach(FA[i])
        begin
          FA[i] = i;
          $display("\tFA[%0d] = %0d",i,FA[i]);
          $display("-------------------------------------------------------------------------");
        end
    end
endmodule


/*
Static Arrays are Two Types
1)Packed Array
2)Unpacked Array

Packed Array :-

1)A Packed Array is an array where the size is specified before the variable name, meaning it represents a contiguous set of bits. It is primarily used for bit-level operations and vector arithmetic. Packed arrays are always stored compactly in memory and can only use a single data type such as bit, logic, or reg.

2) byte or int or shortint or longint can't be used for packed array because these data types won't support bit level operations.

*/



module Packed_Array;
  bit [31:0] PA;
  
  initial
    begin
      $display("\n------------------ PACKED ARRAY ----------------------");
      PA = 32'hff;
      $display("\tPA = %b",PA);
      
      $display("\tPA[31:16] :: %b",PA[31:16]);
      $display("--------------------------------------------------------");
    end
endmodule
                
     
                

/*

Unpacked Array :- 

1)An unpacked array is an array where the dimensions are declared after the variable name. These arrays are stored independently in memory, meaning each element can be accessed individually.

*/

module Unpacked_Array;
  byte UPA[10];
  
  initial
    begin
      $display("\n------------------ UNPACKED ARRAY ---------------------");
      $display("\tUNPACKED ARRAY :: %p",UPA);
      foreach(UPA[i])
        begin
          UPA[i] = i;
          $display("Unpacked Array[%0d] = %0d",i,UPA[i]);
        end
    end
endmodule
