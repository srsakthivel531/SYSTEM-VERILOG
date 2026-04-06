//UNION DATA TYPE
module un_pack;
  typedef union {
  int id;
  byte data;
  }unpacked_union;
 
  initial begin
   unpacked_union u_p;
    $display("BEFORE INITAILIZE");
    $display("ID=%0h,DATA=%0h",u_p.id,u_p.data);
    $display("AFTER INITIALIZING IN INT I");
    u_p.id=32'h11223344;
    $display("ID=%0h,DATA=%0h",u_p.id,u_p.data);
    $display("AFTER INITIALIZING IN LOGIC DATA" );
    u_p.data='h20;
    $display("ID=%0h,DATA=%0h",u_p.id,u_p.data);
  end 
endmodule 
OUTPUT:
# BEFORE INITAILIZE
# ID=0,DATA=0
# AFTER INITIALIZING IN INT I
# ID=11223344,DATA=44
# AFTER INITIALIZING IN LOGIC DATA
# ID=11223320,DATA=20
