module fork_join_none;
  initial begin 
    $display("FORK JOIN NONE STARTED");
    fork 
      begin 
        $display("$time=%0t,TVK PARTY-A",$time);
        #10;
        $display("$time=%0t,TVK WON IN CHENNAI",$time);
      end 
      begin 
        $display("$time=%0t,TVK PARTY-B",$time);
        #20;
        $display("$time=%0t,TVK WON IN MADURAI",$time);
      end 
    join_none
    $display("$time=%0t,FORK JOIN NONE FINISHED",$time);
    #10;
    $display("$time=%0t,TVK WON THE ELECTION",$time);
  end 
endmodule 
OUTPUT:
# KERNEL: FORK JOIN NONE STARTED
# KERNEL: $time=0,FORK JOIN NONE FINISHED
# KERNEL: $time=0,TVK PARTY-A
# KERNEL: $time=0,TVK PARTY-B
# KERNEL: $time=10,TVK WON THE ELECTION
# KERNEL: $time=10,TVK WON IN CHENNAI
# KERNEL: $time=20,TVK WON IN MADURAI
