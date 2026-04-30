task even(input int num);
  if(num%2==0)
    $display("THE NUMBER %0d IS EVEN ",num);
  else 
    $display("THE NUMBER %0d IS ODD ",num);
endtask 
module even_1;
  initial begin 
    $display("MODULE 1 USING THE TASK");
    even(20);
  end
endmodule 
    
module even_2;
  initial begin 
    $display("MODULE 2 USING THE TASK");
    even(25);
  end
endmodule  
OUTPUT:
# KERNEL: MODULE 1 USING THE TASK
# KERNEL: THE NUMBER 20 IS EVEN 
# KERNEL: MODULE 2 USING THE TASK
# KERNEL: THE NUMBER 25 IS ODD
