//CALLING THE FUNCTION WITH VALUES AS ARGUMENTS
module function_1;
int result; 
function int sum(int a,b);
 return a+b;
endfunction
function void display();
  $display("RESULT=%0d",result);
endfunction
initial begin
   display();
  result=sum(10,20);
  display();
end 
endmodule 
OUTPUT:
# KERNEL: RESULT=0
# KERNEL: RESULT=30
