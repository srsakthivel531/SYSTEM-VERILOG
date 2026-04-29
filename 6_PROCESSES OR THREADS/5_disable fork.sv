module disable_fork;
  initial begin 
    $display("DISABLE FORK");
    fork:CHILD_BLOCK 
      begin 
        $display("$time=%0t,CHILD-A STARTED",$time);
        #10;
        $display("$time=%0t,CHILD-A FINISHED",$time);
      end 
      begin 
        $display("$time=%0t,CHILD-B STARTED",$time);
        #20;
        $display("$time=%0t,CHILD-B FINISHED",$time);
      end 
    join_any:CHILD_BLOCK 
    $display("$time=%0t,OUT OF FORK_JOIN_ANY",$time);
    disable CHILD_BLOCK;
    $display("$time=%0t,ALL REMAINING CHILD PROCESS ARE STOPPED",$time);
   end 
endmodule 
OUTPUT:
# KERNEL: DISABLE FORK
# KERNEL: $time=0,CHILD-A STARTED
# KERNEL: $time=0,CHILD-B STARTED
# KERNEL: $time=10,CHILD-A FINISHED
# KERNEL: $time=10,OUT OF FORK_JOIN_ANY
# KERNEL: $time=10,ALL REMAINING CHILD PROCESS ARE STOPPED
