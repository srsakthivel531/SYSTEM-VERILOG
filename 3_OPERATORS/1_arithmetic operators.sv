// ARITHMETIC OPERATORS 
module arith_op;
  byte A,B;
  initial begin
    A=5;
    B=2;
    $display("ADDITION");
    A+=B;
    $display("%0d",A);
    $display("SUBRACTION");
    A-=B;
    $display("%0d",A);
    $display("MULTIPLICATION");
    A*=B;
    $display("%0d",A);
    $display("DIVISION");
    A/=B;
    $display("%0d",A);
    $display("MODULUS");
    A%=B;
    $display("%0d",A);
    $display("EXPONENT");
    A=A**B;
    $display("%0d",A);
  end
endmodule 


OUTPUT:
KERNEL: ADDITION
# KERNEL: 7
# KERNEL: SUBRACTION
# KERNEL: 5
# KERNEL: MULTIPLICATION
# KERNEL: 10
# KERNEL: DIVISION
# KERNEL: 5
# KERNEL: MODULUS
# KERNEL: 1
# KERNEL: EXPONENT
# KERNEL: 1
