module fork_join_any;
  initial begin 
    $display("FORK JOIN ANY STARTED");
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
    join_any
    $display("$time=%0t,FORK JOIN ANY FINISHED",$time);
    #10;
    $display("$time=%0t,TVK WON THE ELECTION",$time);
  end 
endmodule 
OUTPUT:
# KERNEL: FORK JOIN ANY STARTED
# KERNEL: $time=0,TVK PARTY-A
# KERNEL: $time=0,TVK PARTY-B
# KERNEL: $time=10,TVK WON IN CHENNAI
# KERNEL: $time=10,FORK JOIN ANY FINISHED
# KERNEL: $time=20,TVK WON IN MADURAI
# KERNEL: $time=20,TVK WON THE ELECTION
