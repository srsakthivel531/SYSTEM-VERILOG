//WITHOUT WILDCARD OPERATOR 
module asso_arr;
int arr[string];
string idx;
 initial begin 
arr='{"A":10,"B":20,"C":30};
$display("associative array=%p",arr);
foreach(arr[idx])begin
  $display("index=%0s,arr[idx]=%0d",idx,arr[idx]);
end 
 end 
endmodule
OUTPUT:
associative array='{"A":10, "B":20, "C":30}
# KERNEL: index=A,arr[idx]=10
# KERNEL: index=B,arr[idx]=20
# KERNEL: index=C,arr[idx]=30
