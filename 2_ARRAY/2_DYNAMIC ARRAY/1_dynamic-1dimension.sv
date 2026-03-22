module dyn_1d_array;
int arr[];
int i;
initial begin
  arr=new[5];
  arr='{10,20,30,40,50};
  foreach(arr[i])begin
    $display("$time=%0t,ARRAY[%0d]=%b",$time,i,arr[i]);
  end 
  #5;
  $display("$time=%0t,ENTIRE ARRAY=%p",$time,arr);
  #5;
  $display("$time=%0t,SIZE OF ARRAY=%0d",$time,arr.size());
  #5;
  arr.delete();
  $display("$time=%0t,ARRAY=%p",$time,arr);
end 
endmodule 
OUTPUT :
# KERNEL: $time=0,ARRAY[0]=00000000000000000000000000001010
# KERNEL: $time=0,ARRAY[1]=00000000000000000000000000010100
# KERNEL: $time=0,ARRAY[2]=00000000000000000000000000011110
# KERNEL: $time=0,ARRAY[3]=00000000000000000000000000101000
# KERNEL: $time=0,ARRAY[4]=00000000000000000000000000110010
# KERNEL: $time=5,ENTIRE ARRAY='{10, 20, 30, 40, 50}
# KERNEL: $time=10,SIZE OF ARRAY=5
# KERNEL: $time=15,ARRAY='{}
