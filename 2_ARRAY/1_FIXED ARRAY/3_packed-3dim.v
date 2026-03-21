//FIXED ARRAY (packed array)
module array_3D;
  logic [1:0][1:0][2:0]a;
initial begin 
  a='hccb;
  foreach(a[i])begin 
    $display("a[%0d]=%b",i,a[i]);
  end 
end 
endmodule 
//OUTPUT
# KERNEL: a[1]=110011
# KERNEL: a[0]=001011
