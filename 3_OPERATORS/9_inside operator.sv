//INSIDE OPERATOR 
module inside_op;
  logic [3:0]a;
  byte b;
initial begin
  a='d15;
  b=$urandom_range(10,5);
  //CHECKING INICIALIZED VALUE
  if(a inside{1,2,[5:10],12})
     $display("a is %0d within the range",a);
  else 
    $display("a is %0d not within the range",a); 
  //CHECKING RANDOMIZED VALUE 
  if(b inside{1,2,[5:16]})
        $display("b is %0d within the range",b);
  else 
    $display("b is not %0d within the range",b); 
end 
 endmodule
OUTPUT:
# KERNEL: a is not 15 within the range
# KERNEL: b is 8 within the range
