//LOGICAL OPERATORS
module logic_op;
  byte A,B,C;
  initial begin 
    A=5;B=2;C=0;
    $display("LOGICAL AND ");
    $display("A&&B=%0d",A&&B);
    $display("A&&C=%0d",A&&C);
    $display("LOGICAL OR ");
    $display("A||B=%0d",A||B);
    $display("A||C=%0d",A||C);
    $display("LOGICAL NOT");
    $display("!A=%0d",!A);
    $display("!C=%0d",!C);
    $display("LOGICAL IMPLICATION");
    $display("A->B=%0d",A->B);
    $display("A->C=%0d",A->C);
    $display("LOGICAL EQUIVALANCE");
    $display("A<->B=%0d",A<->B);
    $display("A<->C=%0d",A<->C);
  end 
endmodule 


OUTPUT:
# KERNEL: LOGICAL AND 
# KERNEL: A&&B=1
# KERNEL: A&&C=0
# KERNEL: LOGICAL OR 
# KERNEL: A||B=1
# KERNEL: A||C=1
# KERNEL: LOGICAL NOT
# KERNEL: !A=0
# KERNEL: !C=1
# KERNEL: LOGICAL IMPLICATION
# KERNEL: A->B=1
# KERNEL: A->C=0
# KERNEL: LOGICAL EQUIVALANCE
# KERNEL: A<->B=1
# KERNEL: A<->C=0
