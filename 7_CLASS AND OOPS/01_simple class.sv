class player_stats;
//PROPERTIES
string cricketer;
int no_of_hundreds;
byte no_of_fifties;
//METHODS
function void performance(string cri,int hun, fif);
  cricketer=cri;
  no_of_hundreds=hun;
  no_of_fifties=fif;
endfunction
 function void display();
  $display("CRICKETER=%s",cricketer);
  $display("NO OF HUNDREDS=%0d",no_of_hundreds);
  $display("NO OF FIFTIES=%0d",no_of_fifties);
endfunction
endclass 
module player; 
player_stats ps1,ps2;//handle name 
initial begin
//OBJECT CREATION 
ps1=new();
ps2=new();
//ACCESSING MEMBERS(METHOD ACCESS)
ps1.performance("DHONI",40,70);
$display("PLAYER 1 STATS");  
ps1.display();
//ACCESSING MEMBERS(DIRECT ACCESS)  
ps2.cricketer="KLRAHUL";
ps2.no_of_hundreds=55;
ps2.no_of_fifties=85;
$display("PLAYER 2 STATS"); 
ps2.display();
end 
endmodule 
OUTPUT:
# KERNEL: PLAYER 1 STATS
# KERNEL: CRICKETER=DHONI
# KERNEL: NO OF HUNDREDS=40
# KERNEL: NO OF FIFTIES=70
# KERNEL: PLAYER 2 STATS
# KERNEL: CRICKETER=KLRAHUL
# KERNEL: NO OF HUNDREDS=55
# KERNEL: NO OF FIFTIES=85
