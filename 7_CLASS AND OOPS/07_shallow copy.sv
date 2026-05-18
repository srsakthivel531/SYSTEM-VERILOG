class class_1;
string name;
function new();
name="SACHIN";
endfunction 
endclass 
class class_2;
int jersey_no ;
//CALLING CLASS_1
 class_1 obj;
 function new();
jersey_no=10;
 obj=new();
endfunction 
endclass 
module shallow_copy;
 class_2 c1,c2;
initial begin 
  $display("=========SHALLOW COPY=========");
  c1=new();
  $display("______BEFORE CHANGE _______");
  $display("______SEPARATE MEMORY OBJECT-1_______");
  $display("c1.jersey_no=%0d",c1.jersey_no);
  $display("c1.obj.name=%s",c1.obj.name);
  c2=new c1;
  $display("______SEPARATE MEMORY OBJECT-2_______");
  $display("c2.jersey_no=%0d",c2.jersey_no);
  $display("c2.obj.name=%s",c2.obj.name);
  c2.jersey_no=7;
  c2.obj.name="MS DHONI";
  $display("______AFTER CHANGE _______");
  $display("______SEPARATE MEMORY OBJECT-1_______");
  $display("c1.jersey_no=%0d",c1.jersey_no);
  $display("c1.obj.name=%s",c1.obj.name);
  $display("______SEPARATE MEMORY OBJECT-2_______");
  $display("c2.jersey_no=%0d",c2.jersey_no);
  $display("c2.obj.name=%s",c2.obj.name);
end 
endmodule 
OUTPUT:
# KERNEL: =========SHALLOW COPY=========
# KERNEL: ______BEFORE CHANGE _______
# KERNEL: ______SEPARATE MEMORY OBJECT-1_______
# KERNEL: c1.jersey_no=10
# KERNEL: c1.obj.name=SACHIN
# KERNEL: ______SEPARATE MEMORY OBJECT-2_______
# KERNEL: c2.jersey_no=10
# KERNEL: c2.obj.name=SACHIN
# KERNEL: ______AFTER CHANGE _______
# KERNEL: ______SEPARATE MEMORY OBJECT-1_______
# KERNEL: c1.jersey_no=10
# KERNEL: c1.obj.name=MS DHONI
# KERNEL: ______SEPARATE MEMORY OBJECT-2_______
# KERNEL: c2.jersey_no=7
# KERNEL: c2.obj.name=MS DHONI
