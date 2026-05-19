//DESIGN FILE 
module counter(counter_if inf);
  always_ff @(posedge inf.clk or posedge inf.rst)begin
    if(inf.rst)
      inf.count<=0;
    else if(inf.enable)
      inf.count<=inf.count+1;
  end 
endmodule 
//INTERFACE 
interface counter_if;
logic clk;
logic rst;
logic enable;
logic [5:0]count;
endinterface 
//TEST BENCH FILE 
module tb;
counter_if inf();
counter dut(inf);
initial begin
inf.clk=0;
forever #5 inf.clk=~inf.clk;
end 
initial begin
inf.rst=1;
#10;
inf.rst=0;
inf.enable=1;
$display("==========COUNTER FROM 0 TO 30========");
repeat(31)begin
@(posedge inf.clk)
$display("COUNT=%0d",inf.count);
end 
#10;
$finish;
end 
endmodule 
OUTPUT:
# KERNEL: ==========COUNTER FROM 0 TO 30========
# KERNEL: COUNT=0
# KERNEL: COUNT=1
# KERNEL: COUNT=2
# KERNEL: COUNT=3
# KERNEL: COUNT=4
# KERNEL: COUNT=5
# KERNEL: COUNT=6
# KERNEL: COUNT=7
# KERNEL: COUNT=8
# KERNEL: COUNT=9
# KERNEL: COUNT=10
# KERNEL: COUNT=11
# KERNEL: COUNT=12
# KERNEL: COUNT=13
# KERNEL: COUNT=14
# KERNEL: COUNT=15
# KERNEL: COUNT=16
# KERNEL: COUNT=17
# KERNEL: COUNT=18
# KERNEL: COUNT=19
# KERNEL: COUNT=20
# KERNEL: COUNT=21
# KERNEL: COUNT=22
# KERNEL: COUNT=23
# KERNEL: COUNT=24
# KERNEL: COUNT=25
# KERNEL: COUNT=26
# KERNEL: COUNT=27
# KERNEL: COUNT=28
# KERNEL: COUNT=29
# KERNEL: COUNT=30
