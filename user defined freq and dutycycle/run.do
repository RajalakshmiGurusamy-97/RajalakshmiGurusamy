vlib work
vlog freq_dutycycle.v
vsim freq_dutycycle  +freq=250 +dc=30
add wave -position insertpoint sim:/freq_dutycycle/clk
run -all
