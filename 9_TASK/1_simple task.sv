module simple_task;
int count,clk;
task counter(input int button);
@(posedge clk);
count<=count+button;
$strobe("$time=%0t,COUNTER VALUE=%0d",$time,count);
endtask 

initial begin 
 clk=0;
 forever #5 clk=~clk;
end 
initial begin
 counter(1);
 counter(2);
 counter(3);
  counter(4);
  counter(6);
  counter(10);
 #10 $finish;
end 
endmodule
OUTPUT:
# KERNEL: $time=5,COUNTER VALUE=1
# KERNEL: $time=15,COUNTER VALUE=3
# KERNEL: $time=25,COUNTER VALUE=6
# KERNEL: $time=35,COUNTER VALUE=10
# KERNEL: $time=45,COUNTER VALUE=16
# KERNEL: $time=55,COUNTER VALUE=26  
  
   
