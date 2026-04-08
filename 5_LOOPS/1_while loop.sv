//PRINT THE ODD NUMBER ONLY FROM 1 TO 20
module while_loop;
  int i=1;
  initial begin 
    $display("ODD NUMBER FROM 1 TO 20");
    while(i<=20)begin 
      $display("%0d",i);
      i=i+2;
    end 
  end 
endmodule 
OUTPUT:
# KERNEL: ODD NUMBER FROM 1 TO 20
# KERNEL: 1
# KERNEL: 3
# KERNEL: 5
# KERNEL: 7
# KERNEL: 9
# KERNEL: 11
# KERNEL: 13
# KERNEL: 15
# KERNEL: 17
# KERNEL: 19
