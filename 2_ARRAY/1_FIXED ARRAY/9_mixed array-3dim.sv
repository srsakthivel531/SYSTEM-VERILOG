//mixed array
module array_3D;
logic[5:0] a[5][2][2];
initial begin
a= '{'{{1,2},{3,4}},'{{5,6},{7,8}},'{{10,9},{11,12}},'{{13,14},{15,16}},'{{20,21},{22,23}}};
 $display("$time=%0t,ENTIRE ARRAY=%p",$time,a);
  #5;
  foreach(a[i,j,k])begin
    $display("$time=%0t,a[%0d][%0d][%0d]=%0d",$time,i,j,k,a[i][j][k]);
end 
end 
endmodule 
OUTPUT:
# KERNEL: $time=0,ENTIRE ARRAY='{'{'{1, 2}, '{3, 4}}, '{'{5, 6}, '{7, 8}}, '{'{10, 9}, '{11, 12}}, '{'{13, 14}, '{15, 16}}, '{'{20, 21}, '{22, 23}}}
# KERNEL: $time=5,a[0][0][0]=1
# KERNEL: $time=5,a[0][0][1]=2
# KERNEL: $time=5,a[0][1][0]=3
# KERNEL: $time=5,a[0][1][1]=4
# KERNEL: $time=5,a[1][0][0]=5
# KERNEL: $time=5,a[1][0][1]=6
# KERNEL: $time=5,a[1][1][0]=7
# KERNEL: $time=5,a[1][1][1]=8
# KERNEL: $time=5,a[2][0][0]=10
# KERNEL: $time=5,a[2][0][1]=9
# KERNEL: $time=5,a[2][1][0]=11
# KERNEL: $time=5,a[2][1][1]=12
# KERNEL: $time=5,a[3][0][0]=13
# KERNEL: $time=5,a[3][0][1]=14
# KERNEL: $time=5,a[3][1][0]=15
# KERNEL: $time=5,a[3][1][1]=16
# KERNEL: $time=5,a[4][0][0]=20
# KERNEL: $time=5,a[4][0][1]=21
# KERNEL: $time=5,a[4][1][0]=22
# KERNEL: $time=5,a[4][1][1]=23
