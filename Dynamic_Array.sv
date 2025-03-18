/*************************************** DYNAMIC ARRAY *******************************************/

/* 

DYNAMIC ARRAY :-
      
1) A Dynamic Array is one dimension unpacked array whose size can be set or changed during run time.
2) The size of an array can be specified during run time by using new[].
3) By Default ,the size of dynamic array is 0 unless new[] is used.

Dynamic Array Methods: -

      new[] : This operator is used to set or change the size of the array.
      size(): This method returns the current size of the array.
      delete() : This method clears all the elements yielding an empty array (zero size).

*/



module Dynamic_Array;
  int DA[];
  
  initial
    begin
      $display("------------------------ DYNAMIC ARRAY ----------------------------");
      DA = new[10];
      foreach(DA[i])
        begin
          DA[i] = i;
          $display("\tDA[%0d] = %0d",i,DA[i]);
        end
      $display("------------------------------------------------------------------");
      $display("\n----------------------- SIZE OF DA -------------------------------");
      $display("\tSize of Dyanmic Array :: %0d",DA.size());
      $display("------------------------------------------------------------------");
      $display("\n------------------------ RESIZING --------------------------------");
      DA = new[50];
      for(int i = 0 ; i < $size(DA) ; i++)
        begin
          DA[i] = i * i;
          $display("\tDA[%0d] = %0d",i,DA[i]);
        end
      $display("-----------------------------------------------------------------");
      $display("\n-------------- RESIZING AND COPYING PREVIOUS DATA ---------------");
      DA = new[100](DA);
      foreach(DA[i])
        begin
          DA[i] = i * i;
          $display("\tDA[%0d] = %0d",i,DA[i]);
        end
      $display("----------------------------------------------------------------");
      $display("----------------------- DELETE METHOD --------------------------");
      DA.delete();
      $display("\tSize of the Dynamic Array :: %0d",DA.size());
      $display("----------------------------------------------------------------");
    end
endmodule
