class car;
string brand;
local string engine;
function new(string b);
brand=b;
endfunction
//LOCAL PROPERTY CAN BE ACCESSED IN SAME CLASS OR INSIDE THE CLASS 
local function void engine_type();
$display("ENGINE TYPE:TURBO CHARGED INLINE");
endfunction
function void show();
$display("CAR BRAND=%s",brand);
engine_type(); 
endfunction
endclass

class bmw extends car;
function new(string b);
super.new(b);
endfunction
function void test();
//CANNOT ACCESS THE LOCAL METHOD/PROPERTY IN THE CHILD CLASS 
// engine_type();
endfunction
endclass

module test;
car c;
initial begin
c=new("BMW");
c.show();
//CANNOT ACCESS LOCAL METHOD/PROPERTY OUTSIDE THE CLASS 
// c.engine_type();
end
endmodule
OUTPUT:
# KERNEL: CAR BRAND=BMW
# KERNEL: ENGINE TYPE:TURBO CHARGED INLINE
