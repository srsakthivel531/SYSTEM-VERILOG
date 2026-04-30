module func_call;
  bit clk,parity;
  function int calc_parity(byte data);
    return ^data;
  endfunction 
  task parity_gen(input byte data_in,output bit result);
    @(posedge clk);
    result<=calc_parity(data_in);
    if(result==1)
      begin 
    $strobe("$time=%0t,DATA_IN=%8b,PARITY=%0d",$time,data_in,result);
    $display("________EVEN PARITY GENERATOR_______");
      end 
    else begin
      $strobe("$time=%0t,ODD PARITY GENERATOR DATA_IN=%8b,PARITY=%0d",$time,data_in,result);
      $display("________ODD PARITY GENERATOR_______");
    end     
  endtask 
  initial begin 
    clk=0;
    forever #5 clk=~clk;
  end 
  initial begin
    parity_gen(8'b10110101,parity);
    parity_gen(8'b11110101,parity);
    parity_gen(8'b10010011,parity);
    #5 $finish;
    
  end 
endmodule 
OUTPUT:
# KERNEL: ________ODD PARITY GENERATOR_______
# KERNEL: $time=5,ODD PARITY GENERATOR DATA_IN=11110101,PARITY=1
# KERNEL: ________EVEN PARITY GENERATOR_______
# KERNEL: $time=15,DATA_IN=10010011,PARITY=0
# KERNEL: ________ODD PARITY GENERATOR_______
# KERNEL: $time=25,ODD PARITY GENERATOR DATA_IN=10010011,PARITY=0
