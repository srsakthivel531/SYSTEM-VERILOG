//CALLING THE FUNCTION WITH VARIABLE AS ARGUMENTS
module function_1;
int x,y,result; 
function int sum(int a,b);
 return a+b;
endfunction
function void display();
  $display("RESULT=%0d",result);
endfunction
initial begin
  x=5;y=20;
  result=sum(x,y);//VARIABLE
  display();
end 
endmodule 
OUTPUT:
# KERNEL: RESULT=25
