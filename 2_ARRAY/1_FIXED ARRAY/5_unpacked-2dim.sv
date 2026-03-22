module array_2D;
byte a[5][2]='{{1,2},{3,4},{5,7},{8,9},{6,12}};
initial begin
 $display("$time=%0t,ENTIRE ARRAY=%p",$time,a);
  #5;
  foreach(a[i,j])begin
    $display("$time=%0t,a[%0d][%0d]=%0d",$time,i,j,a[i][j]);
end 
end 
endmodule 
OUTPUT:
# KERNEL: $time=0,ENTIRE ARRAY='{'{1, 2}, '{3, 4}, '{5, 7}, '{8, 9}, '{6, 12}}
# KERNEL: $time=5,a[0][0]=1
# KERNEL: $time=5,a[0][1]=2
# KERNEL: $time=5,a[1][0]=3
# KERNEL: $time=5,a[1][1]=4
# KERNEL: $time=5,a[2][0]=5
# KERNEL: $time=5,a[2][1]=7
# KERNEL: $time=5,a[3][0]=8
# KERNEL: $time=5,a[3][1]=9
# KERNEL: $time=5,a[4][0]=6
# KERNEL: $time=5,a[4][1]=12
