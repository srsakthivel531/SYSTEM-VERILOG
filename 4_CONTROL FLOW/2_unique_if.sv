//UNIQUE IF STATEMENT 
module  unique_if;
int a,b;
initial begin
a=4;b=20;
  $display("FIRST CASE");
  unique if(a>b)
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
    unique if(a>b)
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
    unique if(a>b)
    $display("A IS GREATER THAN B");
  else if(a<0)
    $display("A IS LESS THAN 0");
  else if(a==b)
    $display("B IS EQUAL TO A");
  $display("NO CONDITION IS TRUE & ELSE PART NOT EXIST HENCE THE WARNING MESSAGE  SHOWN"); 
end 
endmodule 
OUTPUT:
FIRST CASE
 A IS LESS THAN B
Warning-[RT-MTOCMUIF] More than one condition match in statement
testbench.sv, 6
  More than one condition matches are found in 'unique if' statement inside 
  unique_if, at time 0ns. 
MORE THAN ONE CONDITION IS TRUE AND THE WARNING MESSAGE SHOWN
SECOND CASE
A IS LESS THAN B
NO CONDITION IS TRUE & ELSE PART EXIST HENCE THE WARNING MESSAGE NOT SHOWN
Warning-[RT-NCMUIF] No condition matches in statement
testbench.sv, 26
  No condition matches in 'unique if' statement. 'else' statement is missing 
  for the last 'else if' block, inside unique_if, at time 0ns.
THIRD CASE
NO CONDITION IS TRUE & ELSE PART NOT EXIST HENCE THE WARNING MESSAGE  SHOWN
