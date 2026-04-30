class copy;
byte a,b;
 function void display();
 $display("DATA-1=%0d",a);
 $display("DATA-2=%0d",b); 
 endfunction 
endclass
module class_assign;
 copy c1,c2;
 initial begin 
 c1=new();
 c1.a=10;
 c1.b=20;
 c2=c1;
   $display("CHANGE IN OBJECT ONE");
 $display("OBJECT ONE");
 c1.display();
   $display("OBJECT TWO");
 c2.display();
 c2.a=15;
 c2.b=17;
 $display("CHANGE IN OBJECT TWO");
 $display("OBJECT ONE");
 c1.display();
 $display("OBJECT TWO");
 c2.display();
 end 
endmodule 
OUTPUT:
# KERNEL: CHANGE IN OBJECT ONE
# KERNEL: OBJECT ONE
# KERNEL: DATA-1=10
# KERNEL: DATA-2=20
# KERNEL: OBJECT TWO
# KERNEL: DATA-1=10
# KERNEL: DATA-2=20
# KERNEL: CHANGE IN OBJECT TWO
# KERNEL: OBJECT ONE
# KERNEL: DATA-1=15
# KERNEL: DATA-2=17
# KERNEL: OBJECT TWO
# KERNEL: DATA-1=15
# KERNEL: DATA-2=17
