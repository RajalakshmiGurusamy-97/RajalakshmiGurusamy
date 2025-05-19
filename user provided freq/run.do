vlib work
vlog userdefined_freq.v
vsim userdefined_freq +freq=200
add wave -position insertpoint sim:/userdefined_freq/clk
run -all
