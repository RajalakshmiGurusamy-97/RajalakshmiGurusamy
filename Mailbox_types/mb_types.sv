module tb;
int a;
real b;
string c;

mailbox mbox=new();   //generic
mailbox #(int)inbox=new();  //parameterized -it will allow only mentioned datatype
initial begin
   a=10;
   b=36.732;
   c="RAJALAKSHMI";

   mbox.put(a);
   mbox.put(b);
   mbox.put(c);
   
   inbox.put(a);   //int
   inbox.put(b);   //real
   inbox.put(c);   //string

   $display("mbox=%p",mbox);
   $display("inbox=%p",inbox);
end
endmodule
