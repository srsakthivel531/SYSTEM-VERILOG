//TYPEDEF USING PACKAGE 
 package my_package;
typedef int d_arr[];
typedef logic[2:0] f_arr[5];
endpackage
module mod1;
  import my_package::d_arr;
  d_arr dyn_arr; 
  initial begin
dyn_arr=new[3];
  dyn_arr='{10,20,30};
    $display("FROM PACKAGE TYPEDEF 1");
  foreach(dyn_arr[i])begin
    $display("dyn_arr[%0d]=%0d",i,dyn_arr[i]);
  end 
end 
endmodule
module mod2;
  import my_package::f_arr;
  f_arr fix_arr;
  int i;
  initial begin
    fix_arr='{1,2,3,4,5};
    $display("FROM PACKAGE TYPEDEF 2");
    for(i=0;i<5;i=i+1)begin
    $display("fix_arr[%0d]=%0d",i,fix_arr[i]);
  end 
end 
endmodule
OUTPUT:
KERNEL: FROM PACKAGE TYPEDEF 1
# KERNEL: dyn_arr[0]=10
# KERNEL: dyn_arr[1]=20
# KERNEL: dyn_arr[2]=30
# KERNEL: FROM PACKAGE TYPEDEF 2
# KERNEL: fix_arr[0]=1
# KERNEL: fix_arr[1]=2
# KERNEL: fix_arr[2]=3
# KERNEL: fix_arr[3]=4
# KERNEL: fix_arr[4]=5
