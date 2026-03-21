//FIXED ARRAY (unpacked array)
module array_1D;
  byte a[5]='{1,2,3,4,5};
initial begin
  $display("$time=%0t,ENTIRE ARRAY=%0p",$time,a);
  #5;
foreach(a[i])begin
  a[i]=$urandom_range(5,15);
  $display("$time=%0t,a[%0d]=%0d",$time,i,a[i]);
end 
end 
endmodule 
//OUTPUT
# KERNEL: $time=0,ENTIRE ARRAY=1 2 3 4 5
# KERNEL: $time=5,a[0]=5
# KERNEL: $time=5,a[1]=9
# KERNEL: $time=5,a[2]=10
# KERNEL: $time=5,a[3]=13
# KERNEL: $time=5,a[4]=9
