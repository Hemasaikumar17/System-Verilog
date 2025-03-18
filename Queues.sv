/****************************************** QUEUES *******************************************/


/* 
QUEUES : - 
           
1) A Queue is variable size and orderd collection of homogeneous elements.Each element in queue is identified by ordinal number that represents its position within the queue.

2) 0 represents the first and $ represents the last element of the queue.

3) A Queue is analogous to single dimension unpacked array that grows and shrinks automatically.

4) Thus,arryays like queues can be manupulated using the concatenation,indexing,slicing and equality operators.

SYNTAX
     
       <data_type> <queue_name>[$];
       
Types of Queues
  
   --> Bounded Queue    - Queue having specific range or limited entrirs.
   --> Unbounded Queue  - Queue with unlimited number of entries.
   
   Ex:- byte Q1[$]; //Unbounded Queue.
        int  Q2[$:3] // bounded queue with size 4.
        
        
QUEUE METHODS :-


1) insert()     --  The insert() method inserts the given item at the specified index position.

2) pop_front()  --  The pop_front() method removes and returns the first element of the queue.

3) pop_back()   --  The pop_back() method removes and returns the last element of the queue.

4) push_front() --  The push_front() method inserts the given element at the front of the queue.

5) push_back()  --  The push_back() method inserts the given element at the end of the queue.

6) size()       --  The size() method returns the number of items in the queue. If the queue is empty, it returns 0.

7) delete()     --  The delete() method deletes the item at the specified index position.
*/




module QUEUE;
  int Q[$];  //Unbounded Queue
  int Q1;
  
  initial
    begin
      Q = '{0,1,2,3,4,5};
      $display("------------------------------- QUEUE ------------------------------------");
      $display("\tQUEUE (Q) :: %p",Q);
      foreach(Q[i])
        begin
          Q[i] = i;
          $display("\tQ[%0d] = %0d",i,Q[i]);
        end
      $display("------------------------------------------------------------------------");
      $display("\n--------------------------- INSERT METHOD ------------------------------");
      Q.insert(0,100);
      $display("\tQueue after inserting one element :: %p",Q);
      $display("------------------------------------------------------------------------");
      $display("\n------------------------ POP FRONT METHOD ----------------------------");
      Q1 = Q.pop_front();
      $display("\tElement Popped(Front)             :: %0d",Q1);
      $display("------------------------------------------------------------------------");
      $display("\n------------------------ POP BACK METHOD -----------------------------");
      Q1 = Q.pop_back();
      $display("\tElement Popped(back)              :: %0d",Q1);
      $display("------------------------------------------------------------------------");
      $display("\n------------------------ PUSH FRONT METHOD ---------------------------");
      Q.push_front(200);
      $display("\tQueue after adding new element using push front :: %p",Q);
      $display("------------------------------------------------------------------------");
      $display("\n------------------------- PUSH BACK METHOD ---------------------------");
      Q.push_back(300);
      $display("\tQueue after adding new element using push back :: %p",Q);
      $display("------------------------------------------------------------------------");
      $display("\n---------------------------- SIZE METHOD -----------------------------");
      $display("\tSize of the Queue is :: %0d",Q.size());
      $display("------------------------------------------------------------------------");
      $display("\n--------------------------- DELETE METHOD ----------------------------");
      Q.delete();
      $display("\tQueue :: %p",Q);
      $display("\tSize of the Queue is :: %0d",Q.size());
      $display("------------------------------------------------------------------------");
    end
endmodule
