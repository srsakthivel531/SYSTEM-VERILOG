//INCREMENT AND DECREMENT OPERATOR
module incre_decre_op;
byte a,b;
int s,k,sum;
initial begin 
a=5;
b=a++;
  $display("POST INCREMENT ,a=%0d,b=%0d",a,b);
a=8;
b=a--;
  $display("POST DECREMENT ,a=%0d,b=%0d",a,b);
a=10;
b=++a;
  $display("PRE INCREMENT ,a=%0d,b=%0d",a,b);
a=12;
b=--a;
  $display("PRE DECREMENT ,a=%0d,b=%0d",a,b);
  $display("PERFORMING ARITHMETIC OPERATION ");
s=11;k=12;
sum=s++ + k++;
  $display("POST INCREMENT SUM,s=%0d,k=%0d,sum=%0d",s,k,sum);
s=10;k=10;
sum=s-- + k--;
  $display("POST DECREMENT SUM,s=%0d,k=%0d,sum=%0d",s,k,sum);
s=5;k=6;
sum=++s + ++k;
  $display("PRE INCREMENT SUM,s=%0d,k=%0d,sum=%0d",s,k,sum);
s=15;k=9;
sum=s-- + k--;
  $display("PRE DECREMENT SUM,s=%0d,k=%0d,sum=%0d",s,k,sum);
s=5;k=17;
sum=++s + k++;
  $display("PRE  & POST INCREMENT SUM,s=%0d,k=%0d,sum=%0d",s,k,sum);
s=15;k=18;
sum=--s + k--;
  $display("PRE  & POST DECREMENT SUM,s=%0d,k=%0d,sum=%0d",s,k,sum);
s=20;k=21;
sum=--s + k++;
  $display("PRE DECREMENT & POST INCREMENT SUM,s=%0d,k=%0d,sum=%0d",s,k,sum);
s=15;k=18;
sum=s-- + ++k;
  $display("POST DECREMENT  & PRE INCREMENT SUM,s=%0d,k=%0d,sum=%0d",s,k,sum);
end 
endmodule 
OUTPUT:
# KERNEL: POST INCREMENT ,a=6,b=5
# KERNEL: POST DECREMENT ,a=7,b=8
# KERNEL: PRE INCREMENT ,a=11,b=11
# KERNEL: PRE DECREMENT ,a=11,b=11
# KERNEL: PERFORMING ARITHMETIC OPERATION 
# KERNEL: POST INCREMENT SUM,s=12,k=13,sum=23
# KERNEL: POST DECREMENT SUM,s=9,k=9,sum=20
# KERNEL: PRE INCREMENT SUM,s=6,k=7,sum=13
# KERNEL: PRE DECREMENT SUM,s=14,k=8,sum=24
# KERNEL: PRE  & POST INCREMENT SUM,s=6,k=18,sum=23
# KERNEL: PRE  & POST DECREMENT SUM,s=14,k=17,sum=32
# KERNEL: PRE DECREMENT & POST INCREMENT SUM,s=19,k=22,sum=40
# KERNEL: POST DECREMENT  & PRE INCREMENT SUM,s=14,k=19,sum=34
