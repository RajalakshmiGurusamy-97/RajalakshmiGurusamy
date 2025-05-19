//1bit halfadder design - gate level model
module halfadder(input a,b,output s,c);

  xor gate1(s,a,b);
  and gate2(c,a,b);

endmodule

//testbench 
module tb;
 reg a,b;
 wire s,c;

 halfadder dut(a,b,s,c);

 initial begin
     repeat(9)begin
	 {a,b}=$random;
	 #1;
	 $display("/t-> a=%b b=%b | s=%b c=%b",a,b,s,c);
	 end
  end
endmodule





   

