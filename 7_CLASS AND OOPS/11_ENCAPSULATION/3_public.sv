 class shape;
//PUBLIC BY DEFAULT
int side;
int area;
function new(int s);
side=s;
area=s*s;
endfunction
endclass

class square extends shape;
function new(int s);
super.new(s);   
endfunction
function void display();
$display("SQUARE=%0d",side);
$display("Area=%0d",area);
endfunction
endclass

module tb;
square sq;
initial begin
sq=new(5);
sq.display();
//DIRECT ACCESS PUBLIC METHOD/PROPERTY OUTSIDE THE CLASS
end
endmodule
OUTPUT:
# KERNEL: SQUARE=5
# KERNEL: Area=25
