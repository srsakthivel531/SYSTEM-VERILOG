module str;
  string s="SYSTEMVERILOG";
  int i;
  string rev="";
  initial begin 
    $display("THE GIVEN STRING=%s",s);
    for(i=s.len()-1;i>=0;i=i-1)begin
      rev={rev,s[i]};      
      end
    $display("REVERSE THE STRING=%S",rev);
  end 
endmodule 
OUTPUT:
# KERNEL: THE GIVEN STRING=SYSTEMVERILOG
# KERNEL: REVERSE THE STRING=GOLIREVMETSYS
