//FIXED ARRAY (packed array)
module array_1D;
  logic [2][4]a;
initial begin 
  a='hccb;
  foreach(a[i])begin 
    $display("a[%0d]=%b",i,a[i]);
  end 
end 
endmodule
//OUTPUT
# KERNEL: a[1]=1100
# KERNEL: a[0]=1011
