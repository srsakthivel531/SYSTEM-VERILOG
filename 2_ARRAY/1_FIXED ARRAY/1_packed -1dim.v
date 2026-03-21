//FIXED ARRAY (packed array)
module array_1D;
bit [7:0]a;
initial begin 
  a='hfx;
  $display("packedarray=%0b",a);
  #5;
  a='hfx;
  $display("packedarray=%0d",a);
  #5;
  a='hfx;
  $display("packedarray=%0o",a);
end 
endmodule 
//OUTPUT 
packedarray=11110000
packedarray=240
packedarray=360
