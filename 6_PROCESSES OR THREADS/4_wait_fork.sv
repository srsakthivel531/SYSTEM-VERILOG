module wait_fork;
  initial begin 
    $display("WAIT FORK");
    fork 
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
    join_none  
    wait fork;
    $display("$time=%0t,ALL CHILD PROCESS COMPLETED",$time);  
  end 
endmodule 
# KERNEL: WAIT FORK
# KERNEL: $time=0,CHILD-A STARTED
# KERNEL: $time=0,CHILD-B STARTED
# KERNEL: $time=10,CHILD-A FINISHED
# KERNEL: $time=20,CHILD-B FINISHED
# KERNEL: $time=20,ALL CHILD PROCESS COMPLETED
