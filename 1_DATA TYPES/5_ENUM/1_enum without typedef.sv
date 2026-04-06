//WITHOUT USING TYPEDEF 
module user_enum;
  enum {A,B,C}state_1;
  initial begin
    $display("first value=%0d",state_1.first());
    $display("second value=%0d",state_1.next());
    $display("third value=%0d",state_1.prev());
  end 
endmodule


OUTPUT:
# KERNEL: first value=0
# KERNEL: second value=1
# KERNEL: third value=2
