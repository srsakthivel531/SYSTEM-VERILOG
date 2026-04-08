BITWISE OPERATORS 
module bit_op;
  bit[3:0] A,B;
  initial begin
    A=4'b1010;B=4'b1111;
    $display("BITWISE AND");
    $display("A&B=%0b",A&B);
    $display("BITWISE OR");
    $display("A|B=%0b",A|B);
    $display("BITWISE NOT");
    $display("~A=%0b",~A);
    $display("BITWISE XOR");
    $display("A^B=%0b",A^B);
    $display("BITWISE XNOR");
    $display("A^~B=%0b",A^~B);
    $display("~A^B=%0b",~A^B);
  end 
endmodule 
OUTPUT:
# KERNEL: BITWISE AND
# KERNEL: A&B=1010
# KERNEL: BITWISE OR
# KERNEL: A|B=1111
# KERNEL: BITWISE NOT
# KERNEL: ~A=101
# KERNEL: BITWISE XOR
# KERNEL: A^B=101
# KERNEL: BITWISE XNOR
# KERNEL: A^~B=1010
# KERNEL: ~A^B=1010
