module task_automatic;
task static_s();
 int count1;
  #1;
  count1++;
  $display("STATIC TASK COUNT=%0d",count1);
endtask
 task automatic automatic_s();
 int count2;
  #1;
  count2++;
   $display("AUTOMATIC TASK COUNT=%0d",count2);
endtask 
initial begin 
  $display("_____STATIC TASK_______");
  fork 
    static_s();
    static_s();
  join
  #5;
  $display("_____AUTOMATIC TASK_______");
  fork 
    automatic_s();
    automatic_s();
  join
end 
endmodule 
OUTPUT:
# KERNEL: _____STATIC TASK_______
# KERNEL: STATIC TASK COUNT=1
# KERNEL: STATIC TASK COUNT=2
# KERNEL: _____AUTOMATIC TASK_______
# KERNEL: AUTOMATIC TASK COUNT=1
# KERNEL: AUTOMATIC TASK COUNT=1
