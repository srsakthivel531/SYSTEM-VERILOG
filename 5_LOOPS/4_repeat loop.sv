//COUNTING EVEN AND ODD NUMBERS 
module repeat_loop;
int num,even_count,odd_count;
initial begin
repeat(20)begin
  num=$urandom_range(0,20);
    if(num %2==0)begin
      even_count++;
      $display("even number=%0d",num);
    end 
     else begin
      odd_count++;
       $display("odd number=%0d",num);
     end 
  end 
$display("TOTAL NUMBER OF EVEN NUMBERS=%0d",even_count);
$display("TOTAL NUMBER OF ODD NUMBERS=%0d",odd_count);
end 
endmodule 
OUTPUT:
# KERNEL: even number=20
# KERNEL: odd number=11
# KERNEL: odd number=13
# KERNEL: odd number=13
# KERNEL: even number=6
# KERNEL: odd number=11
# KERNEL: even number=4
# KERNEL: even number=6
# KERNEL: even number=16
# KERNEL: even number=6
# KERNEL: odd number=7
# KERNEL: even number=16
# KERNEL: odd number=13
# KERNEL: even number=12
# KERNEL: odd number=9
# KERNEL: odd number=5
# KERNEL: even number=10
# KERNEL: even number=6
# KERNEL: odd number=1
# KERNEL: even number=20
# KERNEL: TOTAL NUMBER OF EVEN NUMBERS=11
# KERNEL: TOTAL NUMBER OF ODD NUMBERS=9
