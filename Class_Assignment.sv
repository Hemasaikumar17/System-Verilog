/************************************************* CLASS ASSIGNMENT *************************************************/

/* CLASS ASSIGNMENT :-

--> Class assignment in SystemVerilog refers to the process of assigning one class handle to another. Since classes are reference types, this assignment copies the handle (reference) only, not the actual object. As a result, both handles point to the same memory location, and changes made through one handle reflect in the other.

--> Any handle can change the properties of the object. It will also effect on remaining handle.
*/



class eth_pkt;
  bit [55:0] preamble;
  bit [47:0] da,sa;
  bit [15:0] len;
  
  function void print(string name);
    $display("%s",name);
    $display("\n\tPreamble = %0d       Da = %0d         Sa = %0d         Len = %0d",preamble,da,sa,len);
  endfunction
endclass


module tb;
  eth_pkt pkt1,pkt2;
  
  initial
    begin
      pkt1 = new();
      pkt1.preamble = 56'hfdcaba;
      pkt1.da = 48'hfcddf;
      pkt1.sa = 48'hfffbc;
      pkt1.len = 16'hfbca;
      pkt1.print("\n-------------------------- PACKET 1 VALUES -----------------------------");
      $display("\n---------------------------------------------------------------------");
      
      pkt2 = pkt1;
      pkt2.print("\n------------------------ PACKET 2 VALUES --------------------------");
      $display("\n--------------------------------------------------------------------");
      
      
      pkt1.preamble = 56'hacdfb;
      pkt1.da = 48'hadfff;
      pkt1.sa = 48'habfcbc;
      pkt1.len = 16'hbcff;
      
      pkt1.print("\n-------------------------- PACKET 1 VALUES -----------------------------");
      $display("\n---------------------------------------------------------------------");
      pkt2.print("\n------------------------ PACKET 2 VALUES --------------------------");
      $display("\n--------------------------------------------------------------------");
      
      
      pkt2.preamble = 56'hecdfc;
      pkt2.da = 48'hbdfec;
      pkt2.sa = 48'haefcea;
      pkt2.len = 16'habce;
      
      pkt1.print("\n-------------------------- PACKET 1 VALUES -----------------------------");
      $display("\n---------------------------------------------------------------------");
      pkt2.print("\n------------------------ PACKET 2 VALUES --------------------------");
      $display("\n--------------------------------------------------------------------");
    end
endmodule
