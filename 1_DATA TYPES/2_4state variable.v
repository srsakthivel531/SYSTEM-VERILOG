//4 state variable 
module data_type;
reg s;        //unsigned user defined value 
wire a;       //unsigned user defined value 
logic [3:0] k;      //unsigned user defined value 
logic signed [3:0]t;   //signed user defined value 
integer h;    //32bit signed value
real i;       //64bit signed value
time v;       //64bit unsigned value
//default value
initial begin 
  $display("$time=%0t,s=%0d",$time,s);
  $display("$time=%0t,a=%0d",$time,a);
  $display("$time=%0t,k=%0d",$time,k);
  $display("$time=%0t,t=%0d",$time,t);
  $display("$time=%0t,h=%0d",$time,h);
  $display("$time=%0t,i=%0f",$time,i);
  $display("$time=%0t,v=%0d",$time,v);
  //initialized value 
  #5 s=1;t=-1;k=-5;h=-20;i=-110;v=10;
  $display("$time=%0t,s=%0d",$time,s);
  $display("$time=%0t,a=%0d",$time,a);
  $display("$time=%0t,k=%0d",$time,k);
  $display("$time=%0t,t=%0d",$time,t);
  $display("$time=%0t,h=%0d",$time,h);
  $display("$time=%0t,i=%0f",$time,i);
  $display("$time=%0t,v=%0b",$time,v);
end 
endmodule   
OUTPUT:
$time=0,s=x
$time=0,a=z
$time=0,k=x
$time=0,t=x
$time=0,h=x
$time=0,i=0.000000
$time=0,v=x
$time=5,s=1
$time=5,a=z
$time=5,k=11
$time=5,t=-1
$time=5,h=-20
$time=5,i=-110.000000
$time=5,v=1010
