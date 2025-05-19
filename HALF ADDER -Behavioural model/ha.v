//design - behavioural model
module ha(a,b,sum,carry);
 input a,b;
 output reg sum,carry;

 always@(a,b)begin
  sum=a^b;
  carry=a&b;
  end
endmodule

/*--> a=1 b=1 ||sum=0 co=1
# 	--> a=1 b=1 ||sum=0 co=1
# 	--> a=1 b=1 ||sum=0 co=1
# 	--> a=1 b=0 ||sum=1 co=0
# 	--> a=1 b=0 ||sum=1 co=0
# 	--> a=1 b=0 ||sum=1 co=0
# 	--> a=1 b=0 ||sum=1 co=0
*/
