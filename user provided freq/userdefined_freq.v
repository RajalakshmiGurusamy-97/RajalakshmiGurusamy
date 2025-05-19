`timescale 1ns/10ps
module userdefined_freq;
reg clk;
real tp,freq;
initial begin
$value$plusargs("freq=%f",freq);
tp=1000/freq;
end
initial begin
clk=0;
forever #(tp/2.0)clk=~clk;
end
initial begin
#100;
$finish;
end
endmodule

