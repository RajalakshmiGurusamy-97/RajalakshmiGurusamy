//Public and Protected values will get 
class parent;
local int a;
protected int b;
int c;

function void print();
   $display("a=%0d b=%0d c=%0d",a,b,c);
endfunction
endclass

class child extends parent;
  function new();
    super.a=111;
	super.b=222;
	super.c=333;
  endfunction
  function void print();
     super.print();
  endfunction
endclass
