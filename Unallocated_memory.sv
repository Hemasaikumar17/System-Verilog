/***************************************************** UNALLOCATED MEMORY ******************************************************/

/* UNALLOCATED MEMORY :-

--> By default, the class handle points to no memory location which is commonly called null. When the user tries to access a memory that does not exist, a null pointer dereference is expected.



//Accesssing unallocated memory
class eth_pkt;
  bit [55:0] preamble;
  bit [47:0] da,sa;
  bit [15:0] len;
  
  function void print(string name);
    $display("%s",name);
    $display("\n\tPreamble = %0d         da = %0d          sa = %0d         len = %0d",preamble,da,sa,len);
  endfunction
endclass



module tb;
  eth_pkt pkt1,pkt2;
  
  initial
    begin
      pkt1 = new();
      pkt1.preamble = 56'd5000;
      pkt1.da = 48'd2000;
      pkt1.sa = 48'd3000;
      pkt1.len = 16'd1000;
      pkt1.print("------------------------------ PACKET VALUES --------------------------------");
      $display("\n-----------------------------------------------------------------------------");
      
      pkt2.print("------------------------------ PACKET VALUES --------------------------------");
      
        // Error-[NOA] Null object access
        // testbench.sv, 36
        // The object at dereference depth 0 is being used before it was 
        // constructed/allocated.
        // Please make sure that the object is allocated before using it. 
    end
endmodule*/


// Checking for Null memory access

class eth_pkt;
  bit [55:0] preamble;
  bit [47:0] da,sa;
  bit [15:0] len;
  
  function void print(string name);
    $display("%s",name);
    $display("\n\tPreamble = %0d      Da = %0d         Sa = %0d          Len = %0d",preamble,da,sa,len);
  endfunction
endclass


module tb;
  eth_pkt pkt1,pkt2;
  
  initial
    begin
      pkt1 = new();
      
      if(pkt1 != null)
        begin
          pkt1.preamble = 56'haafd;
          pkt1.da = 48'd5000;
          pkt1.sa = 48'd4000;
          pkt1.len = 16'hffff;
          pkt1.print("------------------------- PACKET VALUES -------------------------------");
          $display("\n-------------------------------------------------------------------------");
        end
      else
        $display("pkt1 is not created");
      
      if(pkt2 != null)
        begin
          pkt2.preamble = 56'hbaca;
          pkt2.da = 48'd4000;
          pkt2.sa = 48'd2000;
          pkt2.len = 16'hfbff;
          pkt2.print("------------------------- PACKET VALUES -------------------------------");
          $display("\n-------------------------------------------------------------------------");
        end
      else
        $display("\n\tpkt2 is not created");
          
    end
endmodule
