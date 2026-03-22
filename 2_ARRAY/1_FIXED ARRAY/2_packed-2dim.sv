//FIXED ARRAY (packed array)
module array_1D;
  logic [2][4]a;
  int i,j;
initial begin 
  a='hcb;
  foreach(a[i,j])begin 
    $display("a[%0d][%0d]=%h",i,j,a[i][j]);
  end 
end 
endmodule
OUTPUT:
# KERNEL: a[0][0]=1
# KERNEL: a[0][1]=1
# KERNEL: a[0][2]=0
# KERNEL: a[0][3]=0
# KERNEL: a[1][0]=1
# KERNEL: a[1][1]=0
# KERNEL: a[1][2]=1
# KERNEL: a[1][3]=1
