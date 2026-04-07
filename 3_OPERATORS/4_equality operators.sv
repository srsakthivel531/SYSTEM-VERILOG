//EQUALITY OPERATORS
module equ_op;
  logic[3:0] A,B,C;
  initial begin 
    A='hf0;B='hfb;C='hf0;
    $display("LOGICAL EQUALITY WITHOUT X");
    $display("A==B=%0d",A==B);
    $display("A==C=%0d",A==C);
    $display("A!=B=%0d",A!=B);
    $display("A!=C=%0d",A!=C);
    $display("CASE EQUALITY WITHOUT X");
    $display("A==B=%0d",A===B);
    $display("A==C=%0d",A===C);
    $display("A!=B=%0d",A!==B);
    $display("A!=C=%0d",A!==C);
    A='hzx;B='hf0;C='hzx;
    $display("LOGICAL EQUALITY WITH X");
    $display("A==B=%0d",A==B);
    $display("A==C=%0d",A==C);
    $display("A!=B=%0d",A!=B);
    $display("A!=C=%0d",A!=C);
    $display("CASE EQUALITY WITH X");
    $display("A==B=%0d",A===B);
    $display("A==C=%0d",A===C);
    $display("A!=B=%0d",A!==B);
    $display("A!=C=%0d",A!==C);
end 
endmodule 


OUTPUT:
# KERNEL: LOGICAL EQUALITY WITHOUT X
# KERNEL: A==B=0
# KERNEL: A==C=1
# KERNEL: A!=B=1
# KERNEL: A!=C=0
# KERNEL: CASE EQUALITY WITHOUT X
# KERNEL: A==B=0
# KERNEL: A==C=1
# KERNEL: A!=B=1
# KERNEL: A!=C=0
# KERNEL: LOGICAL EQUALITY WITH X
# KERNEL: A==B=x
# KERNEL: A==C=x
# KERNEL: A!=B=x
# KERNEL: A!=C=x
# KERNEL: CASE EQUALITY WITH X
# KERNEL: A==B=0
# KERNEL: A==C=1
# KERNEL: A!=B=1
# KERNEL: A!=C=0
