//WILDCARD OPERATOR 
module wild_op;
  logic [3:0]A,B;
  initial begin
    A=4'b1010;B=4'b10xx;
    $display("RHS SIDE WITH X");
    $display("A==?B=%0d",A==?B);
    $display("A!=?B=%0d",A!=?B);
    A=4'b10xx;B=4'b1010;
    $display("LHS SIDE WITH X");
    $display("A==?B=%0d",A==?B);
    $display("A!=?B=%0d",A!=?B); 
  end 
endmodule 

OUTPUT:
# KERNEL: RHS SIDE WITH X
# KERNEL: A==?B=1
# KERNEL: A!=?B=0
# KERNEL: LHS SIDE WITH X
# KERNEL: A==?B=x
# KERNEL: A!=?B=x
