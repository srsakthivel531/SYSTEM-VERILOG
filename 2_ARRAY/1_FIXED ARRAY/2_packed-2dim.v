//FIXED ARRAY (packed array)
module array_2D;
  logic [1:0][3:0]a;
initial begin 
  a='hcb;
  foreach(a[i])begin 
    $display("a[%0d]=%0b",i,a[i]);
  end 
end 
endmodule 
//OUTPUT
# KERNEL: a[1]=1100
# KERNEL: a[0]=1011
