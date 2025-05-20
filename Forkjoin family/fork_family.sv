//fork join family
module tb;
string test_case;

  initial begin
  $value$plusargs("test_case=%0s",test_case);
  
  case(test_case)
   
   "fork_join":begin
   $display("---test_case=fork_jork---");
   $display("%0t :ME-1",$time);
   #2 $display("%0t :ME-2",$time);
   #1; $display("%0t :ME-3",$time);
   fork
   $display("%0t :ME-4",$time);
   #5 $display("%0t :ME-5",$time);
   begin
   #1;
   $display("%0t :ME-6",$time);
   #7 $display("%0t :ME-7",$time);
   end
   begin
   #5; $display("%0t :ME-8",$time);
   $display("%0t :ME-9",$time);
   #4 $display("%0t :ME-10",$time);
   $display("%0t :ME-11",$time);
   end
   $display("%0t :ME-12",$time);
   #12;
   $display("%0t :ME-13",$time);
   #8 $display("%0t :ME-14",$time);
   join
    #6;
   $display("%0t :ME-15",$time);
   #3 $display("%0t :ME-16",$time);
   $display("%0t :ME-17",$time);
   #1; $display("%0t :ME-18",$time);
  end

  "fork_join_any" :begin
   $display("---testcase=fork_join_any---");
   $display("%0t :ME-1",$time);
   #2 $display("%0t :ME-2",$time);
   #1; $display("%0t :ME-3",$time);
   fork
   $display("%0t :ME-4",$time);
   #5 $display("%0t :ME-5",$time);
   begin
   #1;
   $display("%0t :ME-6",$time);
   #7 $display("%0t :ME-7",$time);
   end
   begin
   #5; $display("%0t :ME-8",$time);
   $display("%0t :ME-9",$time);
   #4 $display("%0t :ME-10",$time);
   $display("%0t :ME-11",$time);
   end
   $display("%0t :ME-12",$time);
   #12;
   $display("%0t :ME-13",$time);
   #8 $display("%0t :ME-14",$time);
   join_any
    #6;
   $display("%0t :ME-15",$time);
   #3 $display("%0t :ME-16",$time);
   $display("%0t :ME-17",$time);
   #1; $display("%0t :ME-18",$time);
  end

  "fork_join_none" :begin
   $display("---testcase=fork_join_none---");
   $display("%0t :ME-1",$time);
   #2 $display("%0t :ME-2",$time);
   #1; $display("%0t :ME-3",$time);
   fork
   $display("%0t :ME-4",$time);
   #5 $display("%0t :ME-5",$time);
   begin
   #1;
   $display("%0t :ME-6",$time);
   #7 $display("%0t :ME-7",$time);
   end
   begin
   #5; $display("%0t :ME-8",$time);
   $display("%0t :ME-9",$time);
   #4 $display("%0t :ME-10",$time);
   $display("%0t :ME-11",$time);
   end
   $display("%0t :ME-12",$time);
   #12;
   $display("%0t :ME-13",$time);
   #8 $display("%0t :ME-14",$time);
   join_none
    #6;
   $display("%0t :ME-15",$time);
   #3 $display("%0t :ME-16",$time);
   $display("%0t :ME-17",$time);
   #1; $display("%0t :ME-18",$time);
  end  //3rd case ends here

  "NESTED" :begin
  $display("---nested---");
  fork 
   $display("%0t :nest-1",$time);
   #3;
   $display("%0t :nest-2",$time);
   #2$display("%0t :nest-3",$time);
      fork
      #4;$display("%0t :nest-4",$time);
      $display("%0t :nest-5",$time);
      #1 $display("%0t :nest-6",$time);
          fork
          #7 $display("%0t :nest-7",$time);
          $display("%0t :nest-8",$time);
          #9;$display("%0t :nest-9",$time);
          join_none
          $display("%0t :nest-10",$time);
          #2 $display("%0t :nest-11",$time);
      join_any
      $display("%0t :nest-12",$time);
      $display("%0t :nest-13",$time);
   join
   #1; $display("%0t :nest-14",$time);
   #6 $display("%0t :nest-15",$time);
 end
 endcase
 end  //initial begin ends here
endmodule

/*---test_case=fork_join---
0 :ME-1
2 :ME-2
3 :ME-3
3 :ME-4
3 :ME-12
3 :ME-13
4 :ME-6
8 :ME-5
8 :ME-8
8 :ME-9
11 :ME-7
11 :ME-14
12 :ME-10
12 :ME-11
21 :ME-15
24 :ME-16
24 :ME-17
25 :ME-18 */

/*---testcase=fork_join_any---
0 :ME-1
2 :ME-2
3 :ME-3
3 :ME-4
3 :ME-12
3 :ME-13
4 :ME-6
8 :ME-5
8 :ME-8
8 :ME-9
9 :ME-15
11 :ME-14
11 :ME-7
12 :ME-10
12 :ME-11
12 :ME-16
12 :ME-17
13 :ME-18  */

/*---testcase=fork_join_none---
0 :ME-1
2 :ME-2
3 :ME-3
3 :ME-4
3 :ME-12
3 :ME-13
4 :ME-6
8 :ME-5
8 :ME-8
8 :ME-9
9 :ME-15
11 :ME-14
11 :ME-7
12 :ME-10
12 :ME-11
12 :ME-16
12 :ME-17
13 :ME-18  */

/*---nested---
0 :nest-1
0 :nest-2
0 :nest-4
0 :nest-5
0 :nest-8
0 :nest-9
0 :nest-10
0 :nest-12
0 :nest-13
1 :nest-6
2 :nest-3
2 :nest-11
4 :nest-14
7 :nest-7
10 :nest-15 */
