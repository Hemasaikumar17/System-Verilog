/**************************************************** STATIC PROPERTIES ****************************************************/

/* STATIC :-

--> A static keyword is used in a class member to denote class has static properties or static methods.



STATIC PROPERTIES :-

--> The static variable declared inside a class with static keyword shares a single memory location across all class instances. 

--> SYNTAX :-
   
          static <data_type> <variable_name>;
          
*/


class transaction;
  static int count;
  
  function new();
    count++;
  endfunction
  
  function void print(string name);
    $display("\n%s",name);
    $display("\tcount = %0d",count);
  endfunction
endclass


module STATIC_PROPERTIES;
  transaction tr[];
  
  initial
    begin
      tr = new[10];
      foreach(tr[i])
        begin
          tr[i] = new();
          tr[i].print("\n---------------------- TRANSACTION VALUES ------------------------");
          $display("------------------------------------------------------------------");
        end
    end
endmodule
