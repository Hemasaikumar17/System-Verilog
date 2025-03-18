module Data_Types_tb;
  wire a;
  wire [7:0] a1; // wire is unsigned data type
  wire signed [7:0] a2;
  
  reg b;
  reg [7:0] b1; // Reg is a unsigned data type
  reg signed [7:0] b2;
  
  integer c;
  integer unsigned c1;
  
  real r;
  
  time t;
  
  bit A;
  bit [7:0] A1;
  bit signed [7:0] A2;
  
  byte B;
  byte unsigned B1;
  
  int C;
  int unsigned C1;
  
  shortint D;
  shortint unsigned D1;
  
  longint E;
  longint unsigned E1;
  
  assign a1 = 8'b1111_1111;
  assign a2 = 8'b0111_1111; //If MSB = 0 positive number , If MSB = 1 Negative Number
  initial
    begin
      $display("-------------------- WIRE DATA TYPE -----------------------");
      $display("\tDefault Value of a wire is            :: %0d",a);
      $display("\tMaximum Value of 8 bit wire vector    :: %0d",a1);
      $display("\tMaximum Value of a signed 8 bit wire vector is :: %0d",a2);
      $display("-----------------------------------------------------------");
      
      
      $display("\n-------------------- REG DATA TYPE -----------------------");
      b1 = 8'b1111_1111;
      b2 = 8'b0111_1111; //If MSB = 0 positive number , If MSB = 1 Negative Number
      $display("\tDefault Value of a reg is             :: %0d",b);
      $display("\tMaximum Value of 8 bit reg vector is  :: %0d",b1);
      $display("\tMaximum Value of a signed 8 bit reg vector is :: %0d",b2);
      $display("-----------------------------------------------------------");
      
      
      $display("\n-------------------- INTEGER DATA TYPE -----------------------");
      $display("\tDefault Value of a integer is         :: %0d",c);
      c = 32'b0111_1111_1111_1111_1111_1111_1111_1111; //As integer is signed data type its value is depends on the MSB wether it is positive or negative number
      $display("\tMaximum Value of integer is           :: %0d",c);
      c1 = 32'b1111_1111_1111_1111_1111_1111_1111_1111;
      $display("\tMaximum Value of unsigend integer is  :: %0d",c1);
      $display("-----------------------------------------------------------");
      
      
      $display("\n-------------------- REAL DATA TYPE -----------------------");
      r = 13.2444;
      $display("\treal data type = %0f",r);
      $display("-----------------------------------------------------------");
      
      
      
      $display("\n-------------------- TIME DATA TYPE -----------------------");
      #10;
      t = $time;
      $display("\tcurrent time = %t",t);
      $display("-----------------------------------------------------------");
      
      
      $display("\n-------------------- BIT DATA TYPE -----------------------");
      A1 = 8'b1111_1111;
      A2 = 8'b0111_1111;
      $display("\tDefault Value of a bit is            :: %0d",A);
      $display("\tMaximum Value of 8 bit vector        :: %0d",A1);
      $display("\tMaximum Value of a signed 8 bit is   :: %0d",A2);
      $display("-----------------------------------------------------------");
      
      
      $display("\n-------------------- BYTE DATA TYPE -----------------------");
      $display("\tDefault Value of a byte is           :: %0d",B);
      B = 8'b0111_1111;
      $display("\tMaximum Value of byte is             :: %0d",B);
      B1 = 8'b1111_1111;
      $display("\tMaximum Value of a unsigned byte is  :: %0d",B1);
      $display("-----------------------------------------------------------");
      
      
      $display("\n-------------------- INT DATA TYPE -----------------------");
      $display("\tDefault Value of a int is           :: %0d",C);
      C = 32'b0111_1111_1111_1111_1111_1111_1111_1111;
      $display("\tMaximum Value of int is             :: %0d",C);
      C1 = 32'b1111_1111_1111_1111_1111_1111_1111_1111;
      $display("\tMaximum Value of a unsigned int is  :: %0d",C1);
      $display("-----------------------------------------------------------");
      
      
      $display("\n-------------------- SHORT INT DATA TYPE -----------------------");
      $display("\tDefault Value of a short int is           :: %0d",D);
      D = 16'b0111_1111_1111_1111;
      $display("\tMaximum Value of short int is             :: %0d",D);
      D1 = 16'b1111_1111_1111_1111;
      $display("\tMaximum Value of a unsigned short int is  :: %0d",D1);
      $display("-----------------------------------------------------------");
      
      
      $display("\n-------------------- LONG INT DATA TYPE -----------------------");
      $display("\tDefault Value of a long int is           :: %0d",E);
      E = 64'b0111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111;
      $display("\tMaximum Value of long int is             :: %0d",E);
      E1 = 64'b1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111;
      $display("\tMaximum Value of a unsigned long int is  :: %0d",E1);
      $display("-----------------------------------------------------------");
      
    end
endmodule
