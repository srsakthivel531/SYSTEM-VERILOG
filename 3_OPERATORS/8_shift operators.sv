//SHIFT OPERATORS 
module shift_op;
logic signed[3:0]A,B;
logic [3:0]C;
initial begin 
 A=4'b1101;
 $display("LOGICAL LEFT (<<)=%0b",A<<1);
 $display("ARITHMETIC LEFT (<<<)=%0b",A<<<1);
 $display("LOGICAL RIGHT (>>)=%0b",A>>1);
 $display("ARITHMETIC RIGHT (>>>)=%0b",A>>>1);
 C=4'b0011;
 $display("MULTIPLICATION BY 2^n");
  $display("ORIGINAL VALUE=%0d",C);
  $display("SHIFT BY TWO (<<)=%0d",C<<2);
 B=4'b0111;
$display("DIVISION BY 2^n");
  $display("ORIGINAL VALUE=%0d",B);
  $display("SHIFT BY TWO (>>)=%0d",B>>1);
  $display("SHIFT BY TWO FOR SIGNED  (>>>)=%0d",B>>>1);
 end 
endmodule
# KERNEL: LOGICAL LEFT (<<)=1010
# KERNEL: ARITHMETIC LEFT (<<<)=1010
# KERNEL: LOGICAL RIGHT (>>)=110
# KERNEL: ARITHMETIC RIGHT (>>>)=1110
# KERNEL: MULTIPLICATION BY 2^n
# KERNEL: ORIGINAL VALUE=3
# KERNEL: SHIFT BY TWO (<<)=12
# KERNEL: DIVISION BY 2^n
# KERNEL: ORIGINAL VALUE=7
# KERNEL: SHIFT BY TWO (>>)=3
# KERNEL: SHIFT BY TWO FOR SIGNED  (>>>)=3
