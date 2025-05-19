module tb;
mailbox mbox=new();
int value;
int n;

initial begin
 //PUT METHOD
 for(int i=0;i<10;i++)begin
   value=$urandom_range(10,50);
   mbox.put(value);
 end
 $display("mbox=%p",mbox);

 //NUM METHOD
 n=mbox.num();
 $display("no.of elements in mailbox=%0d",n);

//GET METHOD
 for(int i=0;i<10;i++)begin
  mbox.get(value);
  $display("mbox=%p",mbox);
 end

 //TRY_PUT METHOD
 for(int i=0;i<10;i++)begin
    value=$urandom_range(50,60);
	mbox.try_put(value);
 end
 $display("mbox=%p",mbox);

 //PEEK METHOD
 mbox.peek(value);
 $display("peek value=%0d",value);

 //TRY_GET METHOD
 for(int i=0;i<10;i++)begin
   mbox.try_get(value);
   $display("mbox=%p",mbox);
 end

end
endmodule


