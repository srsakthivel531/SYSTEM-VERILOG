class player;
string name;
int runs;
function player copy();
player temp;
temp=new();
temp.name=this.name;
temp.runs=this.runs;
return temp;
endfunction
endclass 
class team;
  player p;
function team copy();
 team temp=new();    
 temp.p=this.p.copy();
return temp;
endfunction 
function void display();
 $display("PLAYER=%s RUNS=%0d",p.name,p.runs); 
endfunction
endclass 
module test;
initial begin
team t1, t2;
t1=new();
t1.p=new(); 
t1.p.name="BREWIS";
t1.p.runs=120;
t2=t1.copy();
$display("_____BEFORE MODIFICATION_______");
t1.display();
t2.display();
t2.p.name="MS DHONI";
t2.p.runs=150;
$display("_____AFTER MODIFICATION_______");
t1.display();
t2.display();
end 
endmodule 
OUTPUT:
# KERNEL: _____BEFORE MODIFICATION_______
# KERNEL: PLAYER=BREWIS RUNS=120
# KERNEL: PLAYER=BREWIS RUNS=120
# KERNEL: _____AFTER MODIFICATION_______
# KERNEL: PLAYER=BREWIS RUNS=120
# KERNEL: PLAYER=MS DHONI RUNS=150
