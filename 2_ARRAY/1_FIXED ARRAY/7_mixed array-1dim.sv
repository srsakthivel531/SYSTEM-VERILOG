//FIXED ARRAY (mixed array)
module array_1D;
bit[3:0] a[5]='{1,2,3,4,5};
int i;
initial begin
 $display("$time=%0t,ENTIRE ARRAY=%p",$time,a);
  #5;
foreach(a[i])begin
 $display("$time=%0t,a[%0d]=%p",$time,i,a[i]);
end 
end 
endmodule 
# KERNEL: $time=0,ENTIRE ARRAY={1, 2, 3, 4, 5}
# KERNEL: $time=5,a[0]=1
# KERNEL: $time=5,a[1]=2
# KERNEL: $time=5,a[2]=3
# KERNEL: $time=5,a[3]=4
# KERNEL: $time=5,a[4]=5
