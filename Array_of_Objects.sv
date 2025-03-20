/****************************************** Array of Objects ********************************************/

/*Array of Objects :-

--> As discussed earlier SystemVerilog provides a fixed array, dynamic array, and an associative array that can store a single data type. Based on the requirement, a set of objects need to be created, Hence, an array of objects will be useful.

*/


class eth_pkt;
  bit [55:0] preamble;
  bit [47:0] da,sa;
  bit [15:0] len;
  
  function void print(string name);
    $display("%s",name);
    $display("\n\tPreamble = %0d          Da = %0d          Sa = %0d           Len = %0d",preamble,da,sa,len);
  endfunction
endclass


module Array_of_objects;
  eth_pkt pkt[5];
  
  initial
    begin
      foreach(pkt[i])
        begin
          pkt[i] = new();
          pkt[i].print("\n------------------- PACKET VALUES ------------------------------");
          $display("\n----------------------------------------------------------------");
        end
    end
endmodule
