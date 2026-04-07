//RELATIONAL OPERATORS
module rela_op;
  int A,B,C;
  initial begin
    A=4;B=2;C=2;
    $display("A>B=%0d",A>B);
    $display("A<B=%0d",A<B);
    $display("A==B=%0d",A==B); 
    $display("C==B=%0d",C==B);
    $display("A!=B=%0d",A!=B);
    $display("A>=B=%0d",A>=B);
    $display("A>=B=%0d",A>=B);
  end 
endmodule 

OUTPUT:
# KERNEL: A>B=1
# KERNEL: A<B=0
# KERNEL: A==B=0
# KERNEL: C==B=1
# KERNEL: A!=B=1
# KERNEL: A>=B=1
# KERNEL: A>=B=1
