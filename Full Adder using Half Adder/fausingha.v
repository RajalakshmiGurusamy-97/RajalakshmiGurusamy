//fulladder using halfadder gatelevel modelling

//design - halfadder
module halfadder(input a,b,output sum,carry);
  xor g1(sum,a,b);
  and g2(carry,a,b);
endmodule

//design - fulladder
module fulladder(input A,B,C,output s,ca);
wire x1,x2,x3;
  halfadder h1(.a(A),.b(B),.sum(x1),.carry(x2));
  halfadder h2(.a(x1),.b(C),.sum(s),.carry(x3));
  or g1(ca,x1,x2);
endmodule

//testbench
module full_adder; 
    reg A,B,C;
	wire s,ca;

	fulladder dut(A,B,C,s,ca);

	initial begin
	$display("------------------------------");
	$display("*****output of fulladder*****");
	$display("------------------------------");
	  	repeat(12)begin
	       {A,B,C}=$random;
		   #1;
		   $display("\t-> A=%b B=%b C=%b || s=%b ca=%b",A,B,C,s,ca);
        end
     end
endmodule 

