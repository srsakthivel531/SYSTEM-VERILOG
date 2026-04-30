module function_ref;
int x,y;
 function void swap(int a,b);
    int temp;
    temp=a;
    a=b;
    b=temp;
 endfunction
 function automatic void swap_r(ref int a,ref int b);
    int temp;
    temp=a;
    a=b;
    b=temp;
 endfunction
 initial begin 
    x=20;y=10;
    $display("WITHOUT REF KEYWORD");
    $display("BEFORE SWAP");
    $display("X=%0d,Y=%0d",x,y);
    swap(x,y);
    $display("AFTER SWAP");
    $display("X=%0d,Y=%0d",x,y);
    $display("WITH REF KEYWORD");
    $display("BEFORE SWAP");
    $display("X=%0d,Y=%0d",x,y);
    swap_r(x,y);
    $display("AFTER SWAP");
    $display("X=%0d,Y=%0d",x,y);
  end 
endmodule 
OUTPUT:
# KERNEL: WITHOUT REF KEYWORD
# KERNEL: BEFORE SWAP
# KERNEL: X=20,Y=10
# KERNEL: AFTER SWAP
# KERNEL: X=20,Y=10
# KERNEL: WITH REF KEYWORD
# KERNEL: BEFORE SWAP
# KERNEL: X=20,Y=10
# KERNEL: AFTER SWAP
# KERNEL: X=10,Y=20
    
