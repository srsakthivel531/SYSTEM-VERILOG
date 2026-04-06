//ENUM METHODS 
module enum_methods;
typedef enum logic[1:0]{LSG,PK,GT,CSK}crkt;
initial begin
crkt teams;
$display("FIRST ELEMENT");
$display("INDEX VALUE=%0d,NAME=%s",teams.first(),teams.first().name());
teams=GT;
$display("PREVIOUS ELEMENT");
$display("INDEX VALUE=%0d,NAME=%s",teams.prev(),teams.prev().name());
teams=PK;
$display("NEXT ELEMENT");
$display("INDEX VALUE=%0d,NAME=%s",teams.next(),teams.next().name());
$display("LAST ELEMENT");
$display("INDEX VALUE=%0d,NAME=%s",teams.last(),teams.last().name());
$display("NUMBER OF ELEMENTS IN THE ENUM");
$display("ENUM RANGE=%0d",teams.num());
end
endmodule 
OUTPUT:
# KERNEL: FIRST ELEMENT
# KERNEL: INDEX VALUE=0,NAME=LSG
# KERNEL: PREVIOUS ELEMENT
# KERNEL: INDEX VALUE=1,NAME=PK
# KERNEL: NEXT ELEMENT
# KERNEL: INDEX VALUE=2,NAME=GT
# KERNEL: LAST ELEMENT
# KERNEL: INDEX VALUE=3,NAME=CSK
# KERNEL: NUMBER OF ELEMENTS IN THE ENUM
# KERNEL: ENUM RANGE=4
