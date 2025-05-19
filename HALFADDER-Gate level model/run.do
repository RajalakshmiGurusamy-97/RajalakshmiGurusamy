#compilation:-
  vlog halfadder.v
#elaboration:-
  vsim tb
#simulation:-
  run -all

/*output
# /t-> a=0 b=0 | s=0 c=0
# /t-> a=0 b=1 | s=1 c=0
# /t-> a=0 b=1 | s=1 c=0
# /t-> a=1 b=1 | s=0 c=1
# /t-> a=0 b=1 | s=1 c=0
# /t-> a=0 b=1 | s=1 c=0
# /t-> a=0 b=1 | s=1 c=0
# /t-> a=1 b=0 | s=1 c=0
# /t-> a=0 b=1 | s=1 c=0 */
