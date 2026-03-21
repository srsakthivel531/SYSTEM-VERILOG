//2 state variable 
module data_type;
bit s;        //unsigned single bit 
int a;        //32bit signed
byte k;       //8bit signed 
shortint t;   //16bit signed
longint h;    //64bit signed 
bit[7:0] i;   //user defined value
  
//default value
initial begin 
  $display("$time=%0t,s=%0d",$time,s);
  $display("$time=%0t,a=%0d",$time,a);
  $display("$time=%0t,k=%0d",$time,k);
  $display("$time=%0t,t=%0d",$time,t);
  $display("$time=%0t,h=%0d",$time,h);
  $display("$time=%0t,i=%0d",$time,i);
 
  //initialized value 
  #5 s=1;a=-2;t='hbxxb;k=-5;h='hbbxx_1111;i=10;
  $display("$time=%0t,s=%0d",$time,s);
  $display("$time=%0t,a=%0d",$time,a);
  $display("$time=%0t,k=%0d",$time,k);
  $display("$time=%0t,t=%0h",$time,t);
  $display("$time=%0t,h=%0h",$time,h);
  $display("$time=%0t,i=%0d",$time,i);
  end 
endmodule 
//OUTPUT 
$time=0,s=0
$time=0,a=0
$time=0,k=0
$time=0,t=0
$time=0,h=0
$time=0,i=0
$time=5,s=1
$time=5,a=-2
$time=5,k=-5
$time=5,t=b00b
$time=5,h=bb001111
$time=5,i=10
