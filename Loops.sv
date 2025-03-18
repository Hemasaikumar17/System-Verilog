/******************************************************* LOOPS *******************************************************/

/* 
LOOPS :-

--> A loop is a piece of code that keeps executing over and over. A conditional statement is typically included in a loop so that it can terminate once the condition becomes true. If the loop runs forever, then the simulation will hang indefinitely.

--> Different types of looping constructs in SystemVerilog are given in the table below.

           1) While loop
           2) Do while loop
           3) Forever loop
           4) For loop
           5) Foreach loop
           6) Repeat loop
           
--> In all supported loops, begin and end keywords are used to enclose multiple statements as a single block. A begin and end keywords are optional if the loop encloses a single statement.


1) WHILE LOOP :-

    A while loop is a control flow statement that executes statements repeatedly if the condition holds true else loop terminates.
    
    SYNTAX :-
      
           while(condition)
           begin
           ...
           ...
           end
           
                                   ---------------
                                   |    start    |
                                   ---------------
                                          |
              --------------------------->|
             |                            |
             |                     ---------------
             |                    /               \
         ---------    True       /                 \
        |  Body   |<------------/    condition ?    \
         ---------              \                   /
                                 \                 /
                                  \               /
                                   ---------------
                                          |
                                          |
                                          | False
                                          |
                                     ----------- 
                                    |    End    |
                                     -----------
                                     
                                     
                                     


2) DO WHILE LOOP :-
  
    A do while loop is a control flow statement that executes statements at least once and then the condition is checked. If the condition holds true, statements execute repeatedly else the loop terminates.
    
    SYNTAX :-
    
               do begin
               .....
               .....
               end
               while(condition);
               
               
               
                                    
                                    
                                   ---------------
                                   |    start    |
                                   ---------------
                                          |
                  ----------------------->|
                 |                        |
                 |                   -----------
                 |                   |  Body   |
                 |                   -----------
           True  |                        |
                 |                        |
                 |                        |
                 |                 ---------------
                 |                /               \
                 |               /                 \
                 ---------------/    condition ?    \
                                \                   /
                                 \                 /
                                  \               /
                                   ---------------
                                          |
                                          | False
                                          |
                                     ----------- 
                                    |    End    |
                                     -----------
                                      
                                      

Difference between While and do while loop :-

  In the while loop, a condition is checked first, and if it holds true statements will be executed else the loop terminates.

In do while loop, even if a condition is not true, a loop can execute at once. 
                                       
    
*/


/*module WHILE_LOOP;
  int count;
  
  initial
    begin
      count = 0;
      $display("-------------------------- WHILE LOOP -----------------------------");
      while(count < 100)
        begin
          $display("\tCount = %0d",count);
          #10;
          count++;
        end
      $display("-------------------------------------------------------------------");
    end
endmodule


module DO_WHILE_LOOP;
  int count;
  
  initial
    begin
      $display("----------------------- DO WHILE LOOP ----------------------------");
      do 
        begin
          $display("\tCount = %0d",count);
          #10;
          count++;
        end
      while(count < 50);
    end
endmodule*/



module tb;
  int count = 2;
  
  initial
    begin
      do
        $display("count = %0d",count);
      while(count < 1);
    end
endmodule
