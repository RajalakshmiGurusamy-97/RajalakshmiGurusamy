//frequency->100MHz then Tp->10ns
`timescale 1ns/1ns
module clk_generation;
reg clk;
initial begin
forever begin
clk=0;
#5;
clk=1;
#5;
end end
initial begin 
 #1000;
 $finish;
 end
 endmodule
