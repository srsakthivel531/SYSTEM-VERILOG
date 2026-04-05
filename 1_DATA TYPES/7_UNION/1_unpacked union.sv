//UNION DATA TYPE 
typedef union packed {
  int i;
  logic[31:0] data;
} union_packed;
module un_pack;
  union_packed u_p;
  initial begin 
    $display("BEFORE INITAILIZE");
    $display("packed value=%0h",u_p.data);
    $display("packed value=%0h",u_p.i);
    $display("AFTER INITIALIZING IN INT I");
    u_p.i=32'h11223344;
    $display("packed value=%0h",u_p.data);
    $display("packed value=%0h",u_p.i);
    $display("AFTER INITIALIZING IN LOGIC DATA" );
    u_p.data='h20304050;
    $display("packed value=%0h",u_p.i);
    $display("packed value=%0h",u_p.data);
  end 
endmodule 
OUTPUT:
# KERNEL: BEFORE INITAILIZE
# KERNEL: packed value=xxxxxxxx
# KERNEL: packed value=0
# KERNEL: AFTER INITIALIZING IN INT I
# KERNEL: packed value=11223344
# KERNEL: packed value=11223344
# KERNEL: AFTER INITIALIZING IN LOGIC DATA
# KERNEL: packed value=20304050
