//PRIORITY IF STATEMENT 
module priority_if;
byte a,b;
initial begin
a=4;b=20;
  $display("FIRST CASE");
  priority if(a>b)
    $display("A IS GREATER THAN B");
  else if(a<b)
    $display("A IS LESS THAN B");
  else if(b>a)
    $display("B IS GREATER THAN A");
  else 
    $display("B IS EQUAL TO A");
  $display("MORE THAN ONE CONDITION IS TRUE AND IT DOES NOT GIVE WARNING MESSAGE");
 a=5;b=10;
  $display("SECOND CASE");
   priority if(a>b)
    $display("A IS GREATER THAN B");
  else if(a<0)
    $display("A IS LESS THAN 0");
  else if(a==b)
    $display("B IS EQUAL TO A");
  else 
    $display("A IS LESS THAN B");
  $display("NO CONDITION IS TRUE & ELSE PART EXIST HENCE THE WARNING MESSAGE NOT  SHOWN");
  $display("THIRD CASE");
     priority if(a>b)
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
MORE THAN ONE CONDITION IS TRUE AND IT DOES NOT GIVE WARNING MESSAGE
SECOND CASE
A IS LESS THAN B
NO CONDITION IS TRUE & ELSE PART EXIST HENCE THE WARNING MESSAGE NOT  SHOWN
THIRD CASE

Warning-[RT-NCMPRIF] No condition matches in statement
testbench.sv, 28
  No condition matches in 'priority if' statement. 'else' statement is missing
     the last 'else if' block, inside priority_if, at time 0ns.

NO CONDITION IS TRUE & ELSE PART NOT EXIST HENCE THE WARNING MESSAGE  SHOWN
