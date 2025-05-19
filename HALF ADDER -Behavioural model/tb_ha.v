//testbench
`include "ha.v"
module tb;
 reg a,b;
 wire sum,co;
 integer seed=1286789;

 ha dut(a,b,sum,co);

 initial begin
    repeat(7)begin
	{a,b}=$random(seed);
	#4;
	$monitor("\t--> a=%b b=%b ||sum=%b co=%b",a,b,sum,co);
    end
 end
endmodule

