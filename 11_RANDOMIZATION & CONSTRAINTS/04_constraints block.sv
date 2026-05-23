class constraints_block;
rand int x;
rand int y;
//INSIDE THE CLASS 
constraint c1 {
  x inside {[1:20]};  
}
extern constraint c2;
extern constraint c3;
endclass

//OUTSIDE THE CLASS 
constraint  constraints_block::c2 {
  y inside {[10:30]};  
}

constraint  constraints_block::c3 {
  x < y;              
}

module test;
constraints_block cb;
initial begin
cb=new();
cb.srandom(10);
repeat (5) begin
cb.randomize();
  $display("x = %0d  y=%0d",cb.x,cb.y);
 end
 end
endmodule
OUTPUT:
# KERNEL: x = 2  y=10
# KERNEL: x = 11  y=16
# KERNEL: x = 9  y=10
# KERNEL: x = 15  y=24
# KERNEL: x = 10  y=15
