module unique0_if;
int a,b;
initial begin
a=4;b=20;
  $display("FIRST CASE");
  unique0 if(a>b)
    $display("A IS GREATER THAN B");
  else if(a<b)
    $display("A IS LESS THAN B");
  else if(b>a)
    $display("B IS GREATER THAN A");
  else 
    $display("B IS EQUAL TO A");
  $display("MORE THAN ONE CONDITION IS TRUE AND THE WARNING MESSAGE SHOWN");
 a=5;b=10;
  $display("SECOND CASE");
    unique0 if(a>b)
    $display("A IS GREATER THAN B");
  else if(a<0)
    $display("A IS LESS THAN 0");
  else if(a==b)
    $display("B IS EQUAL TO A");
  else 
    $display("A IS LESS THAN B");
  $display("NO CONDITION IS TRUE & ELSE PART EXIST HENCE THE WARNING MESSAGE NOT SHOWN");
 a=5;b=10;
  $display("THIRD CASE");
    unique0 if(a>b)
    $display("A IS GREATER THAN B");
  else if(a<0)
    $display("A IS LESS THAN 0");
  else if(a==b)
    $display("B IS EQUAL TO A");
  $display("NO CONDITION IS TRUE & ELSE PART NOT EXIST HENCE THE WARNING MESSAGE NOT SHOWN"); 
end 
endmodule 
OUTPUT:
FIRST CASE
A IS LESS THAN B

Warning-[RT-MTOCMU0IF] More than one condition match in statement
testbench.sv, 6
  Unique0 if statement inside unique0_if matches more than one condition at 
  time 0ns.
  
  Line number 8 and 10 match.

MORE THAN ONE CONDITION IS TRUE AND THE WARNING MESSAGE SHOWN
SECOND CASE
NO CONDITION IS TRUE & ELSE PART EXIST HENCE THE WARNING MESSAGE NOT SHOWN
THIRD CASE
NO CONDITION IS TRUE & ELSE PART NOT EXIST HENCE THE WARNING MESSAGE NOT SHOWN
