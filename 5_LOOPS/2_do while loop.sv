//SUM OF FIRST  N NUMBERS  
module do_whileloop;
int N,SUM,i=1;
initial begin 
N=7;
 $write("SUM OF FIRST N NUMBERS: ");
do begin 
SUM=SUM+i;
if(i==N)
  $write("%0d",i);
else
  $write("%0d +",i);
  i++;
end 
while(i<=N);
  $display("\nTOTAL SUM=%0d",SUM);
end 
endmodule 
OUTPUT:
# KERNEL: SUM OF FIRST N NUMBERS: 1 +2 +3 +4 +5 +6 +7
# KERNEL: TOTAL SUM=28
