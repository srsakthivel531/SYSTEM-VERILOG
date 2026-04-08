//REDUCTION OPERATORS 
module reduc_op;
  logic[3:0] A;
  initial begin
    A=4'b101x;
    $display("REDUCTION AND");
    $display("&A=%0b",&A);
    $display("REDUCTION NAND");
    $display("~&A=%0b",~&A);
    $display("REDUCTION OR");
    $display("|A=%0b",|A);
    $display("REDUCTION NOR");
    $display("~|A=%0b",~|A);
    $display("REDUCTION XOR");
    $display("^A=%0b",^A);
    $display("REDUCTION XNOR");
    $display("~^A=%0b",~^A);
  end 
endmodule 
OUTPUT:
# KERNEL: REDUCTION AND
# KERNEL: &A=0
# KERNEL: REDUCTION NAND
# KERNEL: ~&A=1
# KERNEL: REDUCTION OR
# KERNEL: |A=1
# KERNEL: REDUCTION NOR
# KERNEL: ~|A=0
# KERNEL: REDUCTION XOR
# KERNEL: ^A=x
# KERNEL: REDUCTION XNOR
# KERNEL: ~^A=x
