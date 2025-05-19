vlib work
vlog fulladder.v
vsim full_adder
run -all


/*------------------------------
# *****output of fulladder*****
# ------------------------------
# 	-> A=1 B0 C=0 || s=1 ca=0
# 	-> A=0 B0 C=1 || s=1 ca=0
# 	-> A=0 B0 C=1 || s=1 ca=0
# 	-> A=0 B1 C=1 || s=0 ca=1
# 	-> A=1 B0 C=1 || s=0 ca=1
# 	-> A=1 B0 C=1 || s=0 ca=1
# 	-> A=1 B0 C=1 || s=0 ca=1
# 	-> A=0 B1 C=0 || s=1 ca=0
# 	-> A=0 B0 C=1 || s=1 ca=0
# 	-> A=1 B0 C=1 || s=0 ca=1
# 	-> A=1 B1 C=0 || s=0 ca=1
# 	-> A=1 B0 C=1 || s=0 ca=1 */
