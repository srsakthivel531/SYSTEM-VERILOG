//DYNAMIC ARRAY 
module dyn_2d_array;
byte arr[][][];
int i,j,k;
initial begin
//block
foreach(arr[i])begin
  arr[i]=new[5];
end 
//row
foreach(arr[j])begin
  arr[j]=new[2];
end
//column
  foreach(arr[k])begin
  arr[k]=new[2];
end  
 arr='{'{{1,2},{3,4}},'{{5,6},{7,8}},'{{10,9},{11,12}},'{{13,14},{15,16}},'{{20,21},{22,23}}};
#5;
foreach(arr[i,j,k])begin
  $display("$time=%0t,arr[%0d][%0d][%0d]=%0d",$time,i,j,k,arr[i][j][k]);   
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

OUTPUT:
 KERNEL: $time=5,arr[0][0][0]=1
# KERNEL: $time=5,arr[0][0][1]=2
# KERNEL: $time=5,arr[0][1][0]=3
# KERNEL: $time=5,arr[0][1][1]=4
# KERNEL: $time=5,arr[1][0][0]=5
# KERNEL: $time=5,arr[1][0][1]=6
# KERNEL: $time=5,arr[1][1][0]=7
# KERNEL: $time=5,arr[1][1][1]=8
# KERNEL: $time=5,arr[2][0][0]=10
# KERNEL: $time=5,arr[2][0][1]=9
# KERNEL: $time=5,arr[2][1][0]=11
# KERNEL: $time=5,arr[2][1][1]=12
# KERNEL: $time=5,arr[3][0][0]=13
# KERNEL: $time=5,arr[3][0][1]=14
# KERNEL: $time=5,arr[3][1][0]=15
# KERNEL: $time=5,arr[3][1][1]=16
# KERNEL: $time=5,arr[4][0][0]=20
# KERNEL: $time=5,arr[4][0][1]=21
# KERNEL: $time=5,arr[4][1][0]=22
# KERNEL: $time=5,arr[4][1][1]=23
# KERNEL: $time=10,ENTIRE ARRAY='{'{'{1, 2}, '{3, 4}}, '{'{5, 6}, '{7, 8}}, '{'{10, 9}, '{11, 12}}, '{'{13, 14}, '{15, 16}}, '{'{20, 21}, '{22, 23}}}
# KERNEL: $time=15,SIZE OF ARRAY=5
# KERNEL: $time=20,ARRAY='{}
