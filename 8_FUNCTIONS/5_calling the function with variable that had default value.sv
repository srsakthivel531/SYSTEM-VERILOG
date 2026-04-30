module function_default;
int x,y;
byte multiplier_out;
function int multiplier(int size,basevalue=10);
  return size*basevalue;
endfunction 
initial begin 
x=5;
multiplier_out=multiplier(x);
$display("MULTIPLIER WITH DEFAULT VALUE=%0d",multiplier_out);
 //OVERRIDE THE DEFAULT VALUE
x=5;y=20;
multiplier_out=multiplier(x,y);
  $display("MULTIPLIER WITH OVERRIDE THE DEFAULT VALUE=%0d",multiplier_out);
end 
endmodule 
OUTPUT:
# KERNEL: MULTIPLIER WITH DEFAULT VALUE=50
# KERNEL: MULTIPLIER WITH OVERRIDE THE DEFAULT VALUE=100
