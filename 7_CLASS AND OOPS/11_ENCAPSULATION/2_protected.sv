class car;
string model;
protected int cost;
function new(string b,int c);
model=b;
cost=c;
endfunction
//PROTECTED PROPERTY CAN BE ACCESSED IN SAME CLASS OR INSIDE THE CLASS 
protected  function void engine_type();
$display("ENGINE TYPE:TWIN TURBOCHARGED V12 ENGINE");
endfunction
endclass

class rolls_royce extends car;
function new(string b,int c);
super.new(b,c);
endfunction
function void show();
//CAN BE ACCESS THE PROTECTED METHOD/PROPERTY IN THE CHILD CLASS
$display("CAR MODEL NAME=%s",model);
$display("COST=%0d",cost);
engine_type(); 
endfunction
endclass

module test;
rolls_royce rr;
car c;
initial begin
rr=new("PHANTOM",800000);
rr.show();
//CANNOT ACCESS PROTECTED METHOD/PROPERTY OUTSIDE THE CLASS 
//c.engine_type();
end
endmodule
OUTPUT:
# KERNEL: CAR MODEL NAME=PHANTOM
# KERNEL: COST=800000
# KERNEL: ENGINE TYPE:TWIN TURBOCHARGED V12 ENGINE
