module asso_arr;
int arr[int];
int idx;
initial begin 
arr[10]=25;
arr[50]=100;
arr[100]=50;
$display("number of elements in the array=%0d",arr.num());
  if(arr.first(idx))begin 
    $display("FIRST VALUE=%0d ",arr[idx]);
end 
    if(arr.next(idx))begin 
$display("NEXT VALUE=%0d",arr[idx]);
end 
  if(arr.last(idx))begin 
$display("LAST VALUE=%0d",arr[idx]);
end 

  if(arr.prev(idx))begin 
$display("PREVIOUS VALUE=%0d",arr[idx]);
end 
//exist values 
  $display("index 5 exist=%0d",arr.exists(5));
  $display("index 10 exist=%0d",arr.exists(10));
end 
endmodule 
OUTPUT:
 KERNEL: number of elements in the array=3
# KERNEL: FIRST VALUE=25 
# KERNEL: NEXT VALUE=100
# KERNEL: LAST VALUE=50
# KERNEL: PREVIOUS VALUE=100
# KERNEL: index 5 exist=0
# KERNEL: index 10 exist=1
