//FIXED ARRAY (mixed array)
module array_2D;
logic[3:0] a[5][2]='{{1,2},{3,4},{5,7},{8,9},{6,12}};
int i;
initial begin
 $display("$time=%0t,ENTIRE ARRAY=%0p",$time,a);
  #5;
foreach(a[i])begin
 $display("$time=%0t,a[%0d]=%0p",$time,i,a[i]);
end 
end 
endmodule
//OUTPUT 
# KERNEL: $time=0,ENTIRE ARRAY={1 2} {3 4} {5 7} {8 9} {6 12}
# KERNEL: $time=5,a[0]=1 2
# KERNEL: $time=5,a[1]=3 4
# KERNEL: $time=5,a[2]=5 7
# KERNEL: $time=5,a[3]=8 9
# KERNEL: $time=5,a[4]=6 12
