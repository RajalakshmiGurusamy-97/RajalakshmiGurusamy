//-->Implementation of fa TB:-

`include "fa.v"
module top; 
    reg a,b,c;
	wire sum,carry;

	fa dut(a,b,c,sum,carry);

	initial begin
	$display("------------------------------");
	$display("--output of fa--");
	$display("------------------------------");
	  	repeat(10)begin
	       {a,b,c}=$random;
		   #1;
		   $display("\t-> A=%b B%b C=%b || sum=%b carry=%b",a,b,c,sum,carry);
        end
   end
endmodule 


