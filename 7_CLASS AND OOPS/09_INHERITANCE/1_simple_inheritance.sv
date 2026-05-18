class cricket;
string name;
int score;
function new(string n,int s);
name=n;
score=s;
endfunction
endclass

class player extends cricket;
string team_name;
function new(string n,int s,string t);
super.new(n,s); 
team_name=t;
endfunction
function void show();
$display("TEAM NAME=%s",team_name);
$display("CRICKTER NAME=%s SCORE=%0d",name,score);
endfunction
endclass

module test;
player p;
initial begin
p=new("MSD",100,"CSK");
p.show();  
end
endmodule
OUTPUT:
# KERNEL: TEAM NAME=CSK
# KERNEL: CRICKTER NAME=MSD SCORE=100
