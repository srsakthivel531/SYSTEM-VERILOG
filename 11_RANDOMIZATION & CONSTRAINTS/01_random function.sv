module ran_function;
byte seed1,seed2;
logic [31:0]a;
integer b;
bit[3:0] c;
initial begin
$display("================================================================");
$display("-------WITH DEFAULT SEED---------");
repeat(5)begin
a=$urandom();
b=$random();
c=$urandom_range(10,20);
$display("$urandom()=%0d  $random()=%0d $urandom_range(10,20)=%0d ",a,b,c);
#2;
end
$display("================================================================");
$display("-------WITH SAME SEED---------");
seed1=20;
seed2=25;
repeat(5)begin
a=$urandom(seed1);
$display("$urandom(%0d)=%0d ", seed1,a);
#2;
end 
repeat(5)begin
a=$urandom(seed2);
$display("$urandom(%0d)=%0d ", seed2,a);
#2;
end 
$display("================================================================");
$display("-------WITH DIFFERENT SEED---------");

repeat(5)begin
seed1=$urandom_range(10,50);
seed2=$urandom_range(20,30);
a=$urandom(seed1);
c=$urandom(seed2);
$display("$urandom(%0d)=%0d  $urandom(%0d)=%0d", seed1, a, seed2, c);
#2;
end
$display("================================================================");
end 
endmodule
OUTPUT:
# KERNEL: ================================================================
# KERNEL: -------WITH DEFAULT SEED---------
# KERNEL: $urandom()=1057283785  $random()=303379748 $urandom_range(10,20)=4 
# KERNEL: $urandom()=1439885933  $random()=-1064739199 $urandom_range(10,20)=3 
# KERNEL: $urandom()=1662830818  $random()=-2071669239 $urandom_range(10,20)=11 
# KERNEL: $urandom()=3550655244  $random()=-1309649309 $urandom_range(10,20)=0 
# KERNEL: $urandom()=1529931552  $random()=112818957 $urandom_range(10,20)=10 
# KERNEL: ================================================================
# KERNEL: -------WITH SAME SEED---------
# KERNEL: $urandom(20)=3145203844 
# KERNEL: $urandom(20)=3145203844 
# KERNEL: $urandom(20)=3145203844 
# KERNEL: $urandom(20)=3145203844 
# KERNEL: $urandom(20)=3145203844 
# KERNEL: $urandom(25)=370704549 
# KERNEL: $urandom(25)=370704549 
# KERNEL: $urandom(25)=370704549 
# KERNEL: $urandom(25)=370704549 
# KERNEL: $urandom(25)=370704549 
# KERNEL: ================================================================
# KERNEL: -------WITH DIFFERENT SEED---------
# KERNEL: $urandom(35)=3411640551  $urandom(29)=9
# KERNEL: $urandom(25)=370704549  $urandom(28)=12
# KERNEL: $urandom(50)=3678077258  $urandom(21)=1
# KERNEL: $urandom(41)=82241397  $urandom(30)=6
# KERNEL: $urandom(45)=2157609257  $urandom(24)=8
# KERNEL: ================================================================
