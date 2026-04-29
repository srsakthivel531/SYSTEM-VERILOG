module fork_join;
  initial begin 
    $display("FORK JOIN STARTED");
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
       begin 
         $display("$time=%0t,TVK PARTY-c",$time);
        #30;
         $display("$time=%0t,TVK WON IN kARAIKUDI",$time);
      end 
    join
    $display("$time=%0t,FORK JOIN FINISHED",$time);
    #10;
    $display("$time=%0t,TVK WON THE ELECTION",$time);
  end 
endmodule 
OUTPUT:
# KERNEL: FORK JOIN STARTED
# KERNEL: $time=0,TVK PARTY-A
# KERNEL: $time=0,TVK PARTY-B
# KERNEL: $time=0,TVK PARTY-c
# KERNEL: $time=10,TVK WON IN CHENNAI
# KERNEL: $time=20,TVK WON IN MADURAI
# KERNEL: $time=30,TVK WON IN kARAIKUDI
# KERNEL: $time=30,FORK JOIN FINISHED
# KERNEL: $time=40,TVK WON THE ELECTION
