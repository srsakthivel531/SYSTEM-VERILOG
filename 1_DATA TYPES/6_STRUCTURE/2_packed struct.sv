//STRUCT DATA TYPE 
typedef struct packed {
  logic [7:0] addr;
  bit[15:0] data;
} struct_packed;
module st_pack;
  struct_packed s_p;
  logic[23:0] temp;
  initial begin 
    s_p.addr=8'haa;
    s_p.data=16'h1234;
    $display("addr=%0h",s_p.addr);
    $display("data=%0d",s_p.data);
    temp=s_p;
    $display("packed_value=%0h",temp);  
  end 
endmodule 
OUTPUT:
# KERNEL: addr=aa
# KERNEL: data=4660
# KERNEL: packed_value=aa1234
