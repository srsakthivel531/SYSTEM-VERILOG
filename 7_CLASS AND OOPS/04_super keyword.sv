class parent;
int a;
  function new(int x);
  a=x;
 $display("PARENT CONSTRUCTOR: a=%0d",a);
endfunction 
 function void display();
   $display("PARENT BEHAVIOR:a=%0d",a);
 endfunction 
endclass
class child extends parent;
int b; 
function new(int x,y);
 //CONSTRUCTOR CALLING
  super.new(x);
  b=y;
  $display("CHILD CONSTRUCTOR: b=%0d",b); 
endfunction
 //OVERRIDING 
function void display();
  super.display();
  $display("CHILD BEHAVIOR:b=%0d",b);
 endfunction 
endclass
module super_keyword;
child c;
initial begin
  $display("_____CONSTRUCTOR CALLING____");
  c=new(5,10);
  $display("________OVERRIDING_________");
  c.display();
end 
endmodule 
OUTPUT:
# KERNEL: _____CONSTRUCTOR CALLING____
# KERNEL: PARENT CONSTRUCTOR: a=5
# KERNEL: CHILD CONSTRUCTOR: b=10
# KERNEL: ________OVERRIDING_________
# KERNEL: PARENT BEHAVIOR:a=5
# KERNEL: CHILD BEHAVIOR:b=10
