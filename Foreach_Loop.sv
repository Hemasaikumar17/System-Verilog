/********************************************* FOREACH LOOP **********************************************/

/* 

--> SystemVerilog arrays are data structures that allow storage of many values in a single variable. A foreach loop is only used to iterate over such arrays and is the easiest and simplest way to do so.


syntax :-

         1) For single statements
               
                               
                                foreach(<variable>[iterator])
                                
         
         2) For multiple statements
          
                                foreach(<variable>[iterator])
                                begin
                                end
                                
*/



module FOREACH_LOOP;
  int count[10] = '{0,10,20,30,40,50,60,70,80,90};
  
  initial
    begin
      foreach(count[i])
        begin
          $display("count[%0d] = %0d",i,count[i]);
        end
    end
endmodule
