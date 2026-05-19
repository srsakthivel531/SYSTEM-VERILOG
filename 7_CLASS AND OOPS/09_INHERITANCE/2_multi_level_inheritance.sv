class car;
string model;
int maximum_speed;
function new(string m,int m_s); 
model=m;
maximum_speed=m_s;
endfunction
endclass

//INHERITANCE-1
class ev extends car;
int battery_cap;
function new(string m,int m_s,int b_c); 
super.new(m,m_s);
battery_cap=b_c; 
endfunction
endclass 

//INHERITANCE-2
class plug_ev extends ev;
int charging_time;
function new(string m,int m_s,int b_c,int c_t); 
super.new(m,m_s,b_c);
charging_time=c_t;
endfunction
function void show();
$display("========CAR SPECIFICATION========");
$display("MODEL NAME=%s",model);
$display("MAXIMUM SPEED=%0d",maximum_speed);
$display("BATTERY CAPACITY=%0d",battery_cap);
$display("CHARGING TIME=%0d",charging_time);
endfunction
endclass 

module test;
plug_ev p_e;
initial begin
p_e=new("TESLA",200,10000,60);
p_e.show();
end
endmodule
OUTPUT:
# KERNEL: ========CAR SPECIFICATION========
# KERNEL: MODEL NAME=TESLA
# KERNEL: MAXIMUM SPEED=200
# KERNEL: BATTERY CAPACITY=10000
# KERNEL: CHARGING TIME=60
