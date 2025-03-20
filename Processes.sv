/*************************************************** SV PROCESSES ****************************************************/

/* THREADS :-

1) A thread or process is any piece of code that gets executed as a separate entity. In verilog, each of the initial and always blocks are spawned off as separate threads that start to run in parallel from zero time. A fork join block also creates different threads that run in parallel.

2) Types for "fork - join" 
  
   --> fork - join      - Finishes when all threads are overed.
   --> fork - join_any  - Finishes when any of the child thread gets over.
   --> fork - join_none - Finishes soon after child threads are spawned.
   
   
*/



/*module FORK_JOIN;
  
  initial
    begin
      $display("---------------------------------- FORK JOIN ------------------------------------");
      $display("\n\tSimulation started at time %0tns",$time);
      fork
       begin
         $display("\tProcess A started at time %0tns",$time);
         #10;
         $display("\tProcess A completed at time %0tns",$time);
       end
        
        begin
          $display("\tProcess B started at time %0tns",$time);
          #20;
          $display("\tProcess B completed at time %0tns",$time);
        end
        
        begin
          $display("\tProcess C started at time %0tns",$time);
          #30;
          $display("\tProcess C completed at time %0tns",$time);
        end
      join
      $display("\tSimulation completed at %0tns",$time);
      $display("\n---------------------------------------------------------------------------------");
    end
endmodule


module FORK_JOIN_ANY;
  
  initial
    begin
      $display("--------------------------------- FORK JOIN_ANY ----------------------------------");
      $display("\n\tSimulation started at time %0tns",$time);
      fork
        begin
          $display("\tProcess A is started at time %0tns",$time);
          #10;
          $display("\tProcess A is completed at time %0tns",$time);
        end
        
        begin
          $display("\tProcess B is started at time %0tns",$time);
          #20;
          $display("\tProcess B is completed at time %0tns",$time);
        end
        
        begin
          $display("\tProcess C is started at time %0tns",$time);
          #30;
          $display("\tProcess C is completed at time %0tns",$time);
        end
      join_any
      $display("\tSimulation completed at at time %0tns",$time);
      $display("\n---------------------------------------------------------------------------------");
    end
endmodule




module FORK_JOIN_NONE;
  
  initial
    begin
      $display("--------------------------------- FORK JOIN_NONE ----------------------------------");
      $display("\n\tSimulation started at time %0tns",$time);
      fork
        begin
          $display("\tProcess A is started at time %0tns",$time);
          #10;
          $display("\tProcess A is completed at time %0tns",$time);
        end
        
        begin
          $display("\tProcess B is started at time %0tns",$time);
          #20;
          $display("\tProcess B is completed at time %0tns",$time);
        end
        
        begin
          $display("\tProcess C is started at time %0tns",$time);
          #30;
          $display("\tProcess C is completed at time %0tns",$time);
        end
      join_none
      $display("\tSimulation completed at at time %0tns",$time);
      $display("\n---------------------------------------------------------------------------------");
    end
endmodule*/




/********************************************* DISABLE FORK **********************************************/


/* DISABLE FORK :-
  
--> The ‘disable fork’ statement terminates all outstanding or active processes.

--> SYNATAX
 
         disable fork;

            
            
      
module FORK_JOIN_ANY_WITH_DISABLE_FORK;
  
  initial
    begin
      $display("--------------------------------- FORK JOIN_ANY_WITH_DISABLE_FORK ----------------------------------");
      $display("\n\tSimulation started at time %0tns",$time);
      fork
        begin
          $display("\tProcess A is started at time %0tns",$time);
          #10;
          $display("\tProcess A is completed at time %0tns",$time);
        end
        
        begin
          $display("\tProcess B is started at time %0tns",$time);
          #20;
          $display("\tProcess B is completed at time %0tns",$time);
        end
        
        begin
          $display("\tProcess C is started at time %0tns",$time);
          #30;
          $display("\tProcess C is completed at time %0tns",$time);
        end
      join_any
      disable fork;
      $display("\tSimulation completed at at time %0tns",$time);
      $display("\n---------------------------------------------------------------------------------");
    end
endmodule





module FORK_JOIN_ANY_WITH_DISABLE_FORK;
  
  initial
    begin
      $display("--------------------------------- FORK JOIN_ANY_WITH_DISABLE_FORK ----------------------------------");
      $display("\n\tSimulation started at time %0tns",$time);
      fork
        begin
          $display("\tProcess A is started at time %0tns",$time);
          #10;
          $display("\tProcess A is completed at time %0tns",$time);
        end
        
        begin
          $display("\tProcess B is started at time %0tns",$time);
          #20;
          $display("\tProcess B is completed at time %0tns",$time);
        end
        
        begin
          $display("\tProcess C is started at time %0tns",$time);
          #30;
          $display("\tProcess C is completed at time %0tns",$time);
        end
      join_none
      disable fork;
      $display("\tSimulation completed at at time %0tns",$time);
      $display("\n---------------------------------------------------------------------------------");
    end
endmodule

*/


/************************************************************ WAIT FORK *************************************************************/

/* WAIT FORK :-
 
 --> The ‘wait fork’ statement is used to wait for all forked processes to be completed.
 
 --> SYNTAX 
   
           wait fork
           





module FORK_JOIN_ANY_WITH_WAIT_FORK;
  
  initial
    begin
      $display("--------------------------------- FORK JOIN_ANY_WITH_WAIT_FORK ----------------------------------");
      $display("\n\tSimulation started at time %0tns",$time);
      fork
        begin
          $display("\tProcess A is started at time %0tns",$time);
          #10;
          $display("\tProcess A is completed at time %0tns",$time);
        end
        
        begin
          $display("\tProcess B is started at time %0tns",$time);
          #20;
          $display("\tProcess B is completed at time %0tns",$time);
        end
        
        begin
          $display("\tProcess C is started at time %0tns",$time);
          #30;
          $display("\tProcess C is completed at time %0tns",$time);
        end
      join_any
      wait fork;
      $display("\tSimulation completed at at time %0tns",$time);
      $display("\n---------------------------------------------------------------------------------");
    end
endmodule*/




module FORK_JOIN_NONE_WITH_WAIT_FORK;
  
  initial
    begin
      $display("--------------------------------- FORK JOIN_NONE_WITH_WAIT_FORK ----------------------------------");
      $display("\n\tSimulation started at time %0tns",$time);
      fork
        begin
          $display("\tProcess A is started at time %0tns",$time);
          #10;
          $display("\tProcess A is completed at time %0tns",$time);
        end
        
        begin
          $display("\tProcess B is started at time %0tns",$time);
          #20;
          $display("\tProcess B is completed at time %0tns",$time);
        end
        
        begin
          $display("\tProcess C is started at time %0tns",$time);
          #30;
          $display("\tProcess C is completed at time %0tns",$time);
        end
      join_none
      wait fork;
      $display("\tSimulation completed at at time %0tns",$time);
      $display("\n---------------------------------------------------------------------------------");
    end
endmodule
