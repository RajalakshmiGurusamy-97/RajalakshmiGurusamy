`timescale 1ns/10ps
module freq_dc_jitter;
reg clk;
real tp,freq,dc,jitter,tp_jitter;
initial begin
$value$plusargs("freq=%f",freq);
$value$plusargs("dc=%f",dc);
$value$plusargs("jitter=%f",jitter);
tp=1000/freq;
forever begin
tp_jitter=($urandom_range(100-jitter,100+jitter)/100.0)*tp;
clk=1;
#(dc*tp_jitter/100.0);
clk=0;
#(tp_jitter-(dc*tp_jitter/100.0));
end end
initial begin
#100;
$finish;
end endmodule
