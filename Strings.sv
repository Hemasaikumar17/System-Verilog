module strings_tb;
  string str1;
  string str2;
  string str3;
  
  initial
    begin
      str1 = "SYSTEM VERILOG";
      str2 = "system verilog";
      
      $display("\n---------------------------- STRINGS ----------------------------");
      $display("\tString A1 = %s",str1);
      $display("\tString A2 = %s",str2);
      $display("-------------------------------------------------------------------");
      
      
      $display("\n\n----------------------- STRING OPERATORS ------------------------");
      
      $display("\n--------------------- STRING(==) OPERATOR -----------------------");
      if(str1 == str2) // (== Operator)
        $display("\tString 1 is equal to String 2");
      else
        $display("\tString 1 is not equal to String 2");
      $display("-------------------------------------------------------------------");
      
      
      $display("\n--------------------- STRING(!=) OPERATOR -----------------------");
      if(str1 != str2) // (!= Operator)
        $display("\tString 1 is not equal to String 2");
      else
        $display("\tString 1 is equal to String 2");
      $display("-------------------------------------------------------------------");
      
      
      $display("\n--------------------- STRING(>) OPERATOR ------------------------");
      if(str1 > str2) // (> Operator)
        $display("\tString 1 is greater than String 2");
      else
        $display("\tString 1 is not greater than String 2");
      $display("-------------------------------------------------------------------");
      
      
      $display("\n--------------------- STRING(<) OPERATOR ------------------------");
      if(str1 < str2) // (< Operator)
        $display("\tString 1 is less than String 2");
      else
        $display("\tString 1 is not less than String 2");
      $display("-------------------------------------------------------------------");
      
      
      $display("\n--------------------- STRING(>=) OPERATOR -----------------------");
      if(str1 >= str2) // (>= Operator)
        $display("\tString 1 is greater than or equal to String 2");
      else
        $display("\tString 1 is not greater than or equal to String 2");
      $display("-------------------------------------------------------------------");
      
      
      $display("\n--------------------- STRING(<=) OPERATOR -----------------------");
      if(str1 <= str2) // (<= Operator)
        $display("\tString 1 is less than or equal to String 2");
      else
        $display("\tString 1 is not less than or equal to String 2");
      $display("-------------------------------------------------------------------");
      
      
      $display("\n--------------------- STRING({}) OPERATOR -----------------------");
      str3 = {str1,str2};
      $display("\tConcatenation of strings is :: %s",str3);
      $display("-------------------------------------------------------------------");
      
      
      $display("\n-------------------- STRING(mul{}) OPERATOR ---------------------");
      str3 = {4{str1}};
      $display("Multiple String Operator :: %s",str3);
      $display("-------------------------------------------------------------------");
      
      
      $display("\n-------------------- STRING[index] OPERATOR ---------------------");
      $display("String Index Operator :: String[1] :: %s",str1[1]);
      $display("-------------------------------------------------------------------");
      
      
      $display("\n\n------------------------- STRING METHODS ------------------------");
      
      $display("\n------------------------ STRING LENGTH ----------------------------");
      $display("Length of the String1 is :: %0d",str1.len()); // To get the length of the string
      $display("---------------------------------------------------------------------");
      
      
      $display("\n-------------------- STRING TO UPPER CASE -------------------------");
      $display("String to Upper case :: %s",str2.toupper()); // To convert string to upper case
      $display("---------------------------------------------------------------------");
      
      
      $display("\n-------------------- STRING TO LOWER CASE -------------------------");
      $display("String to Lower case :: %s",str1.tolower()); // To convert string to lower case
      $display("---------------------------------------------------------------------");
    end
endmodule
