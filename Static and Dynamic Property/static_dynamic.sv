class sample;
static int a;
int b;

static function void print();
   $display("static property a=%0d",a);
endfunction

function void print();
    $display("dynamic property b=%0d"b);
endfunction

endclass
