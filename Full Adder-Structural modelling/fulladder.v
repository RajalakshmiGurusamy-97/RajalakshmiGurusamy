//fulladder gatelevel modelling
module fulladder(input a,b,c,output s,ca);
wire x1,x2,x3,x4;
  xor g1(x1,a,b);
  xor g2(s,x1,c);
  and g3(x2,c,a);
  and g4(x3,a,b);
  and g5(x4,b,c);
  or g6(ca,x2,x3,x4);
endmodule

//testbench
module full_adder; 
    reg a,b,c;
	wire s,ca;

	fulladder dut(a,b,c,s,ca);

	initial begin
	$display("------------------------------");
	$display("*****output of fulladder*****");
	$display("------------------------------");
	  	repeat(12)begin
	       {a,b,c}=$random;
		   #1;
		   $display("\t-> A=%b B%b C=%b || s=%b ca=%b",a,b,c,s,ca);
        end
     end
endmodule 

