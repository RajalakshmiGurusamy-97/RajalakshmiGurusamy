`timescale 1ns/10ps
module freq_dutycycle;
reg clk;
real tp,freq,dc;
initial begin
$value$plusargs("freq=%f",freq);
$value$plusargs("dc=%f",dc);
tp=1000/freq;
forever begin
clk=1;
#(dc*tp/100.0);
clk=0;
#(tp-(dc*tp/100.0));
end end
initial begin
#100;
$finish;
end endmodule
