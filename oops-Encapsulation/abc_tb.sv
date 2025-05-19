module tb;
sample s;
  initial begin
   s=new():
   s.set(10,20);
   s.c=30;
   s.print();
  end
endmodule
