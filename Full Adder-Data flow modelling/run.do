#-->compilation:-
vlog fa_tb.v

#-->elaboration:-
vsim top

#-->simulation:-
run -all


/*------------------------------
# --output of fa--
# ------------------------------
# 	-> A=1 B0 C=0 || sum=1 carry=0
# 	-> A=0 B0 C=1 || sum=1 carry=0
# 	-> A=0 B0 C=1 || sum=1 carry=0
# 	-> A=0 B1 C=1 || sum=0 carry=1
# 	-> A=1 B0 C=1 || sum=0 carry=1
# 	-> A=1 B0 C=1 || sum=0 carry=1
# 	-> A=1 B0 C=1 || sum=0 carry=1
# 	-> A=0 B1 C=0 || sum=1 carry=0
# 	-> A=0 B0 C=1 || sum=1 carry=0
# 	-> A=1 B0 C=1 || sum=0 carry=1
*/
