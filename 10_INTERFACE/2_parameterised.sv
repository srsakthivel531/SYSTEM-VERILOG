//INTERFACE 
interface mem_if #(parameter DATA_WIDTH=8,ADDR_WIDTH=4);
logic clk;
logic rst;
logic w_en;
logic r_en;
logic [DATA_WIDTH-1:0]w_data;
logic [DATA_WIDTH-1:0]r_data;
logic [ADDR_WIDTH-1:0]addr;
endinterface

//DESIGN FILE 
module memory #(parameter DATA_WIDTH=8, ADDR_WIDTH=4)(mem_if inf);
  logic [DATA_WIDTH-1:0] mem [0:(2**ADDR_WIDTH)-1];
integer i;
always_ff @(posedge inf.clk or posedge inf.rst)begin
  if(inf.rst)begin 
    for(i=0;i<2**ADDR_WIDTH;i++)
      mem[i]<=0;
      inf.r_data<=0;
    end 
  else begin
    if(inf.w_en)
      mem[inf.addr]<=inf.w_data;
    if(inf.r_en)
      inf.r_data<=mem[inf.addr];
  end 
end 
endmodule 
//TESTBENCH FILE 
module test;
mem_if #(8,4) inf();
memory #(8,4) dut(inf);
initial begin
inf.clk=0;
forever #5 inf.clk=~inf.clk;
end 
initial begin
inf.rst=1;
inf.w_en=0;
inf.r_en=0;
#10;
inf.rst=0;
@(posedge inf.clk);
inf.w_en=1;
@(posedge inf.clk);
inf.w_en=1;
inf.w_data=8'h25;
inf.addr=4'b1011;
@(posedge inf.clk);
inf.w_en=1;
inf.w_data=8'h50;
inf.addr=4'b1010;
@(posedge inf.clk);
inf.w_en=1;
inf.w_data=8'h80;
inf.addr=4'b1000;
@(posedge inf.clk);
inf.w_en=0;
inf.r_en=1;
$display("============READ DATA-1===========");
@(posedge inf.clk)
inf.r_en=1;
inf.addr=4'b1011;
#1;
$display(" ADDRESS:%0b DATA:%0h",inf.addr,inf.r_data);
$display("============READ DATA-2===========");
@(posedge inf.clk)
inf.r_en=1;
inf.addr=4'b1010;
#1;
$display(" ADDRESS:%0b DATA:%0h",inf.addr,inf.r_data);
$display("============READ DATA-3===========");
@(posedge inf.clk)
inf.r_en=1;
inf.addr=4'b1000;
#1;
$display(" ADDRESS:%0b DATA:%0h",inf.addr,inf.r_data);
$finish;
end 
endmodule 
OUTPUT:
# KERNEL: ============READ DATA-1===========
# KERNEL:  ADDRESS:1011 DATA:25
# KERNEL: ============READ DATA-2===========
# KERNEL:  ADDRESS:1010 DATA:50
# KERNEL: ============READ DATA-3===========
# KERNEL:  ADDRESS:1000 DATA:80
