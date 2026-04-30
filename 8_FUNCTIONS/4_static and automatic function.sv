module automatic_ex;
int result,x,result_auto,result_static;
 function automatic int fact_automatic(int a);
   if(a<=1)
    return 1;
   else 
    return a*fact_automatic(a-1);
endfunction
function  int fact_static(int a);
    if(a<=1)
     return 1;
    else 
      return a*fact_static(a-1);
endfunction
initial begin 
 x=4;
 result_auto=fact_automatic(x);
$display("AUTOMATIC FUNCTION FACTORIAL OF %0d=%0d",x,result_auto );
 result_static=fact_static(x);
 $display("STATIC FUNCTION FACTORIAL OF %0d=%0d",x,result_static );
end 
endmodule 
OUTPUT:
# KERNEL: AUTOMATIC FUNCTION FACTORIAL OF 4=24
# KERNEL: STATIC FUNCTION FACTORIAL OF 4=1
