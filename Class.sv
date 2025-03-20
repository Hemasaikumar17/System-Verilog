/*************************************************** CLASSES ****************************************************/

/* CLASSES :-

--> The Object-Oriented Programming (OOP) concept is based on an object which is nothing but a container for various data types, functions, tasks, etc. It provides data abstraction. Classes allow objects to create and delete dynamically. It also provides a mechanism like a handle or an object pointer that is used to access the object or assign it to some other handle.

Class properties include data members of the different data types.

Class methods include functions and tasks present inside classes.

--> SYNTAX :-
 
           class <class name>;
           <properties>
             <data members>;
             
           <class methods>
             function <function name>;
             ...
             ...
             endfucntion
             
             task <task name>;
             ...
             ...
             endtask
             
           <constraints>
           endclass
           


class eth_pkt;
  bit [55:0] preamble;
  bit [47:0] da,sa;
  bit [15:0] len;
  
  function void print(string name);
    $display("%s",name);
    $display("\tPreamble = %0d     da = %0d      sa = %0d     len = %0d",preamble,da,sa,len);
  endfunction
endclass


module tb;
  eth_pkt pkt1;
  
  initial
    begin
      pkt1 = new();
      pkt1.print("-------------------------- PACKET VALUES -----------------------------");
      $display("----------------------------------------------------------------------");
    end
endmodule*/





class eth_pkt;
  bit [55:0] preamble;
  bit [47:0] da,sa;
  bit [15:0] len;
  
  function new(bit [55:0] e_preamble, bit [47:0] e_da, bit [47:0] e_sa, bit [15:0] e_len);
    preamble = e_preamble;
    da = e_da;
    sa = e_sa;
    len = e_len;
  endfunction
  
  function void print(string name);
    $display("%s",name);
    $display("\tPreamble = %0d       da = %0d        sa = %0d        len = %0d",preamble,da,sa,len);
  endfunction
endclass


module tb;
  eth_pkt pkt1 = new(10000,1000,1000,100);
  
  initial
    begin
      pkt1.print("------------------------------ PACKET VALUES --------------------------------");
      $display("------------------------------------------------------------------------------");
    end
endmodule
