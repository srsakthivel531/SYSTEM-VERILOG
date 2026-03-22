module dyn_2d_array;
int arr[][];
int i,j;
initial begin
//row 
foreach(arr[i])begin
  arr[i]=new[5];
end 
//column
foreach(arr[j])begin
  arr[j]=new[2];
end
arr='{{1,2},{3,4},{5,7},{8,9},{6,12}};
#5;
foreach(arr[i,j])begin
  $display("$time=%0t,arr[%0d][%0d]=%0d",$time,i,j,arr[i][j]);   
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
# KERNEL: $time=5,arr[0][0]=1
# KERNEL: $time=5,arr[0][1]=2
# KERNEL: $time=5,arr[1][0]=3
# KERNEL: $time=5,arr[1][1]=4
# KERNEL: $time=5,arr[2][0]=5
# KERNEL: $time=5,arr[2][1]=7
# KERNEL: $time=5,arr[3][0]=8
# KERNEL: $time=5,arr[3][1]=9
# KERNEL: $time=5,arr[4][0]=6
# KERNEL: $time=5,arr[4][1]=12
# KERNEL: $time=10,ENTIRE ARRAY='{'{1, 2}, '{3, 4}, '{5, 7}, '{8, 9}, '{6, 12}}
# KERNEL: $time=15,SIZE OF ARRAY=5
# KERNEL: $time=20,ARRAY='{}
