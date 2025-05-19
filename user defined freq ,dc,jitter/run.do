vlib work
vlog freq_dc_jitter.v
vsim freq_dc_jitter  +freq=200 +dc=30 +jitter=3
add wave -position insertpoint sim:/freq_dc_jitter/clk 
run -al
