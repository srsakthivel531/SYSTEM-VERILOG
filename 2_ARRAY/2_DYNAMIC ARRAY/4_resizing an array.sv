module dyn_1d_array;
byte arr[];
initial begin
  arr=new[5];
  arr='{10,20,30,40,50};
   $display("$time=%0t,SIZE OF ARRAY=%0d",$time,arr.size());
foreach(arr[i])begin
  $display("$time=%0t,ARRAY[%0d]=%0d",$time,i,arr[i]);
end
//copy the old value 
  #5;
  arr=new[7](arr);
   $display("$time=%0t,SIZE OF ARRAY=%0d",$time,arr.size());
foreach(arr[i])begin
  $display("$time=%0t,ARRAY[%0d]=%0d",$time,i,arr[i]);
end
//without old value 
#5;
  arr=new[7];
   $display("$time=%0t,SIZE OF ARRAY=%0d",$time,arr.size());
foreach(arr[i])begin
  $display("$time=%0t,ARRAY[%0d]=%0d",$time,i,arr[i]);
end
  #2;
  arr.delete();
   $display("$time=%0t,ENTIRE ARRAY=%p",$time,arr);
end 
OUTPUT:
  # KERNEL: $time=0,SIZE OF ARRAY=5
# KERNEL: $time=0,ARRAY[0]=10
# KERNEL: $time=0,ARRAY[1]=20
# KERNEL: $time=0,ARRAY[2]=30
# KERNEL: $time=0,ARRAY[3]=40
# KERNEL: $time=0,ARRAY[4]=50
# KERNEL: $time=5,SIZE OF ARRAY=7
# KERNEL: $time=5,ARRAY[0]=10
# KERNEL: $time=5,ARRAY[1]=20
# KERNEL: $time=5,ARRAY[2]=30
# KERNEL: $time=5,ARRAY[3]=40
# KERNEL: $time=5,ARRAY[4]=50
# KERNEL: $time=5,ARRAY[5]=0
# KERNEL: $time=5,ARRAY[6]=0
# KERNEL: $time=10,SIZE OF ARRAY=7
# KERNEL: $time=10,ARRAY[0]=0
# KERNEL: $time=10,ARRAY[1]=0
# KERNEL: $time=10,ARRAY[2]=0
# KERNEL: $time=10,ARRAY[3]=0
# KERNEL: $time=10,ARRAY[4]=0
# KERNEL: $time=10,ARRAY[5]=0
# KERNEL: $time=10,ARRAY[6]=0
# KERNEL: $time=12,ENTIRE ARRAY='{}
endmodule
