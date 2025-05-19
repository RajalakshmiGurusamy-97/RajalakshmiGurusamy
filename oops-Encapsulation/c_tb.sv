module tb;
sample s;
   initial begin
   s=new();
   s.a=100;
   s.b=200;
   s.c=300;
   $display("a=%0d b=%0d c=%0d",s.a,s.b,s.c);
   end 
endmodule
