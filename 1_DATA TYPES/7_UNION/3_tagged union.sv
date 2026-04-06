//UNION DATA TYPE
module un_pack;
 typedef union tagged{
  int id;
  byte data;
 }unpacked_union;
 
  initial begin
   unpacked_union u_p;
    u_p= tagged id 32'h11223344;
    $display("ID=%0h",u_p.id);
    u_p=tagged data 8'h20;
    $display("DATA=%0h",u_p.data);
    //INVALID ACCESS (BECAUSE THE CURRENT TAG==DATA)
     $display("ID=%0h",u_p.id);
    //RUNTIME ERROR 
  end 
endmodule 
 OUTPUT:
ID=11223344
# DATA=20
Error (suppressible): (vsim-8011) Union is tagged 'data', but is referenced as 'id'.
