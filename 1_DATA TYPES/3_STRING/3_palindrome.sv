module str;
  string s="RACECAR";
  int i;
  string rev="";
  string p;
  initial begin
    p=s;
    for(i=p.len()-1;i>=0;i=i-1)begin
      rev={rev,p[i]};      
      end
    if(s.compare(p)==0)
      $display("THE GIVEN STRING IS PALINDROME");
    else 
      $display("THE GIVEN STRING IS NOT A PALINDROME");
  end 
endmodule 
OUTPUT:
# KERNEL: THE GIVEN STRING IS PALINDROME
