//Public, Protected and Local, all 3 values will get
class sample;
local int a;
protected int b;
int c;

function void print();
   $display("a=%0d b=%0d c=%0d",a,b,c);
endfunction

function set(input int a_t,b_t);
    a=a_t;
	b=b_t;
endfunction
endclass

