class random_cls;
logic [1:0] a;         
rand byte b; 
randc bit[1:0] c;

function void  display();
reg [3:0] d; $display("=======================================================================");
$display("STD::RANDOMIZE - CLASS MEMBERS AND LOCAL VARAIBLES (WITH AND WITHOUT RAND AND RANDC");
repeat(10)begin 
std::randomize(a);
std::randomize(b);
std::randomize(c);
std::randomize(d);
$display("a=%0d  b=%0d  c=%0d  d=%0d", a, b,c,d);
end 
$display("=======================================================================");
endfunction 
endclass 
module test;
bit [1:0]s;
initial begin
random_cls rc=new();
rc.display();
$display("------------STD::RANDOMIZE - INSIDE MODULE -------------");
repeat(5)begin
std::randomize(s);
$display("S=%0d",s);
end 
end 
endmodule 

OUTPUT:
# KERNEL: =======================================================================
# KERNEL: STD::RANDOMIZE - CLASS MEMBERS AND LOCAL VARAIBLES (WITH AND WITHOUT RAND AND RANDC
# KERNEL: a=2  b=114  c=1  d=7
# KERNEL: a=0  b=127  c=2  d=8
# KERNEL: a=3  b=42  c=3  d=2
# KERNEL: a=0  b=12  c=1  d=6
# KERNEL: a=1  b=84  c=2  d=0
# KERNEL: a=1  b=-58  c=0  d=0
# KERNEL: a=2  b=6  c=3  d=12
# KERNEL: a=1  b=22  c=0  d=3
# KERNEL: a=2  b=29  c=2  d=6
# KERNEL: a=2  b=106  c=1  d=3
# KERNEL: =======================================================================
# KERNEL: ------------STD::RANDOMIZE - INSIDE MODULE -------------
# KERNEL: S=2
# KERNEL: S=3
# KERNEL: S=0
# KERNEL: S=3
# KERNEL: S=1
