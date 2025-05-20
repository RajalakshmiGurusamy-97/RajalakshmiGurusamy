//Implementing stack using queue?
module lifo;
int que[$];
int meow;
   initial begin
   for(int i=0;i<6;i++)begin
    meow=$urandom_range(1000,2000);
	que.push_back(meow);
	$display("que=%p",que);
   end
   for(int i=0;i<6;i++)begin
    meow=que.pop_back;
	$display("que=%p",que);
   end
   end
endmodule

# que='{1291}
# que='{1291, 1774}
# que='{1291, 1774, 1920}
# que='{1291, 1774, 1920, 1715}
# que='{1291, 1774, 1920, 1715, 1141}
# que='{1291, 1774, 1920, 1715, 1141, 1946}
# que='{1291, 1774, 1920, 1715, 1141}
# que='{1291, 1774, 1920, 1715}
# que='{1291, 1774, 1920}
# que='{1291, 1774}
# que='{1291}
# que='{}
