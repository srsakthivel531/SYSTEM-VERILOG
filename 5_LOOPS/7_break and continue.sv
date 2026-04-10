module forever_break_continue_loop;
int num;
initial begin 
//GIVING  DIFFERENT SEED VALUE 
  void'($urandom(5000));
  $display("Seed value= %0d",5000);
    forever begin
      num=$urandom_range(0,100);
      $display("THE RANDOM NUMBER=%0d",num);
      if(num<20)
        begin
          $display("%0d -SKIP THE LESS THAN 20",num);
         continue;
        end 
      if(num>80)
         begin
           $display("%0d -STOP GREATER THAN 80",num);
         break;
    end 
 end 
end
endmodule

OUTPUT:
# KERNEL: Seed value= 5000
# KERNEL: THE RANDOM NUMBER=7
# KERNEL: 7 -SKIP THE LESS THAN 20
# KERNEL: THE RANDOM NUMBER=20
# KERNEL: THE RANDOM NUMBER=42
# KERNEL: THE RANDOM NUMBER=88
# KERNEL: 88 -STOP GREATER THAN 80
