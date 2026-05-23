class rand_variable;
rand  bit [2:0] a;  
randc bit [2:0] b;  
endclass

module test;
initial begin
rand_variable rv=new();
$display("---- RAND AND RANDC ----");
rv.srandom(10);
repeat(10)begin
rv.randomize();
$display("a(rand)=%0d   b(randc)=%0d",rv.a,rv.b);
end
end
endmodule

OUTPUT:
# KERNEL: ---- RAND AND RANDC ----
# KERNEL: a(rand)=7   b(randc)=5
# KERNEL: a(rand)=0   b(randc)=7
# KERNEL: a(rand)=6   b(randc)=3
# KERNEL: a(rand)=6   b(randc)=0
# KERNEL: a(rand)=2   b(randc)=2
# KERNEL: a(rand)=4   b(randc)=4
# KERNEL: a(rand)=4   b(randc)=6
# KERNEL: a(rand)=2   b(randc)=1
# KERNEL: a(rand)=7   b(randc)=5
# KERNEL: a(rand)=4   b(randc)=7
