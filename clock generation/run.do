vlib work
vlog clk_generation.v
vsim clk_generation
add wave -position insertpoint sim:/clk_generation/clk
run -all
