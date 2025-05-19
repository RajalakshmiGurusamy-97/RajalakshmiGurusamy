//fulladder design-behaviour model
module fulladder(a,b,c,sum,carry);
   input a,b,c;
   output reg sum,carry;
   
   always@(a,b,c)begin
    sum=a^b^c;
    carry=a&b|b&c|c&a;
	end
endmodule 

//testbench 
module full_adder; 
    reg a,b,c;
	wire sum,carry;

	fulladder dut(a,b,c,sum,carry);

	initial begin
	$display("------------------------------");
	$display("********output of fa**********");
	$display("------------------------------");
	  	repeat(12)begin
	       {a,b,c}=$random;
		   #1;
		   $display("\t-> A=%b B%b C=%b || sum=%b carry=%b",a,b,c,sum,carry);
        end
     end
endmodule 






