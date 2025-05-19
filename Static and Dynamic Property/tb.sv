//STATIC TB
`include "static_dynamic.sv"
module tb;
 
 initial begin
 sample :: a=100;  //::-scope resolution operator,to access static memory
 sample :: print();
 end
endmodule


//DYNAMIC TB
module tb;
sample s;
   initial begin
     s=new();
	 s.b=200;
	 s.print();
   end
endmodule


