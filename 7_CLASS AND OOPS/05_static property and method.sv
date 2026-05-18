class counter;
static int count;
int count_value;
function new();
 count++;
 count_value=count;
endfunction
static function void display_count();
$display("TOATAL OBJECTS CREATED=%0d",count);
endfunction
function void display();
$display("COUNT VALUE=%0d",count_value);
endfunction
endclass 
module static_variable;
 counter c1,c2,c3,c4,c5;
initial begin 
$display("__________STATIC PROPERTY________");
c1=new();
c2=new();
c3=new();
c4=new();
c5=new();
c1.display();
c2.display();
c3.display();
c4.display();
c5.display();
$display("__________STATIC METHOD________");
counter::display_count();  
c2.display_count();
c3.display_count();
c4.display_count();
end 
endmodule 
OUTPUT:
# KERNEL: __________STATIC PROPERTY________
# KERNEL: COUNT VALUE=1
# KERNEL: COUNT VALUE=2
# KERNEL: COUNT VALUE=3
# KERNEL: COUNT VALUE=4
# KERNEL: COUNT VALUE=5
# KERNEL: __________STATIC METHOD________
# KERNEL: TOATAL OBJECTS CREATED=5
# KERNEL: TOATAL OBJECTS CREATED=5
# KERNEL: TOATAL OBJECTS CREATED=5
# KERNEL: TOATAL OBJECTS CREATED=5
    
  
    
    
