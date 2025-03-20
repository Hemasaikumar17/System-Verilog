/********************************************************** FOR LOOP ***********************************************************/

/* FOR LOOP :-

1) A for loop in SystemVerilog repeats a given set of statements multiple times until the given expression is not satisfied. Like all other procedural blocks, the for loop requires multiple statements within it to be enclosed by begin and end keywords.

2) The execution of the for loop depends on the
  
     --> Initialization
     --> Condition
     --> Update
     
3)  SYNTAX :-

             
             for(<initialization> <condition> <update>)
             begin
             ...;
             ...;
             end
             
             
*/



module FOR_LOOP;
  byte count[5];
  
  initial
    begin
      $display("--------------------------------- FOR LOOP ------------------------------------");
      for(int i = 0 ; i < 5 ; i++)
        begin
          count[i] = i**2;
          $display("\tcount[%0d] = %0d",i,count[i]);
        end
      $display("-------------------------------------------------------------------------------");
    end
endmodule
