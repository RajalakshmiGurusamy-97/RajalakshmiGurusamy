//design for halfadder-data flow modelling
module halfadder(a,b,sum,carry);
input a,b;
output sum,carry;

  assign sum=a^b,carry=a&b;

endmodule

//testbench for halfadder
module halfadder_tb;
 reg a,b;
 wire sum,carry;

 halfadder dut(a,b,sum,carry);

 initial begin
   repeat(6)begin
     {a,b}=$random;
	 #3;
	 $display("\-->t a=%b b=%b |sum=%b carry=%b", a,b,sum,carry);
   end
  end
endmodule


 /*-->t a=0 b=0 |sum=0 carry=0
# -->t a=0 b=1 |sum=1 carry=0
# -->t a=0 b=1 |sum=1 carry=0
# -->t a=1 b=1 |sum=0 carry=1
# -->t a=0 b=1 |sum=1 carry=0
# -->t a=0 b=1 |sum=1 carry=0
*/



