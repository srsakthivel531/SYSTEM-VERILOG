//TYPE DEF 
//global type def 
typedef int arr[] ;
module mod1;
  arr array1;
initial begin
  array1=new[3];
  array1='{10,20,30};
  $display("MODULE ARRAY1");
  foreach(array1[i])begin
    $display("array1[%0d]=%0d",i,array1[i]);
  end 
end 
endmodule
  
module mod2;
  arr array2;
initial begin
  array2=new[2];
  array2='{40,50};
  $display("MODULE ARRAY2");
  foreach(array2[i])begin
    $display("array2[%0d]=%0d",i,array2[i]);
  end 
end 
endmodule  
OUTPUT:
KERNEL: MODULE ARRAY1
# KERNEL: array1[0]=10
# KERNEL: array1[1]=20
# KERNEL: array1[2]=30
# KERNEL: MODULE ARRAY2
# KERNEL: array2[0]=40
# KERNEL: array2[1]=50
