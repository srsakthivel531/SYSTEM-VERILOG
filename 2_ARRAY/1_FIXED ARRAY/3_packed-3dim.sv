//FIXED ARRAY (packed array)
module array_3D;
  logic [1:0][1:0][2:0]a;
initial begin 
  a='hccb;
  foreach(a[i,j,k])begin 
    $display("a[%0d][%0d][%0d]=%b",i,j,k,a[i][j][k]);
  end 
end 
endmodule
OUTPUT:
 KERNEL: a[1][1][2]=1
# KERNEL: a[1][1][1]=1
# KERNEL: a[1][1][0]=0
# KERNEL: a[1][0][2]=0
# KERNEL: a[1][0][1]=1
# KERNEL: a[1][0][0]=1
# KERNEL: a[0][1][2]=0
# KERNEL: a[0][1][1]=0
# KERNEL: a[0][1][0]=1
# KERNEL: a[0][0][2]=0
# KERNEL: a[0][0][1]=1
# KERNEL: a[0][0][0]=1
