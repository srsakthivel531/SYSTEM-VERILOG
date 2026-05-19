class transaction;
int address;
int data;
function new(int addr,int value);
address=addr;
data=value;
endfunction
virtual function void display();   
  $display("TRANSACTION:ADDR=%0d,DATA=%0d",address,data);
endfunction
endclass 

class write_transaction extends transaction;
function new(int a,int d);
 super.new(a,d);
endfunction
function void display();   
  $display("WRITE TRANSACTION:ADDR=%0d,DATA=%0d",address,data);
endfunction
endclass 

class read_transaction extends transaction;
function new(int a,int d);
  super.new(a,d);
endfunction
function void display();   
  $display("READ TRANSACTION:ADDR=%0d,DATA=%0d",address,data);
endfunction
endclass 
module test;
transaction t; 
initial begin
write_transaction w; 
read_transaction r;
w=new(10,20);
r=new(15,30);
t=w;
t.display(); 
t=r;
t.display();   
end
endmodule 
OUTPUT:
# KERNEL: WRITE TRANSACTION:ADDR=10,DATA=20
# KERNEL: READ TRANSACTION:ADDR=15,DATA=30
