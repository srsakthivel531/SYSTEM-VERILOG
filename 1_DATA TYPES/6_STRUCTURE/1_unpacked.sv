//STRUCT DATA TYPE 
typedef struct {
  int id;
  byte data;
  string name;
} struct_unpacked;
module st_unpack;
  struct_unpacked s_u;
  initial begin 
    s_u.id=10;
    s_u.data=8'h20;
    s_u.name="AJITH";
    $display("id=%0d",s_u.id);
    $display("data=%0d",s_u.data);
    $display("Name=%s",s_u.name);  
  end 
endmodule 
OUTPUT:
#KERNEL: id=10
# KERNEL: data=32
# KERNEL: Name=AJITH
