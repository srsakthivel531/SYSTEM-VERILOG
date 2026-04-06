//ENUM OPERATIONS 
module enum_operations;
//BASIC ENUM
typedef enum{CSK,RCB,MI}b_enum;
//CUSTOM ENUM
typedef enum{A=1,B=4,c}cus_enum;
//ARRAY ENUM
typedef enum{arr[4]}arr_enum;
//VALUE INITIALIZING IN ARRAY ENUM
typedef enum{array[4]=20}arr_ini_enum;
//ARRAY SLICING ENUM
typedef enum{data[2:4]}arr_sli_enum;
//VALUE INITIALIZING IN ARRAY SLICING ENUM
typedef enum{id[2:4]=15}arr_sli_ini_enum;  
initial begin
b_enum b1;
cus_enum c1;
arr_enum a1;
arr_ini_enum a2;
arr_sli_enum a3;
arr_sli_ini_enum a4;
b1=CSK;
$display("b_index=%0d,b_enum=%s",b1,b1.name());
c1=c;
$display("cus_index=%0d,cus_enum=%s",c1,c1.name()); 
a1=arr0;
$display("arr_index=%0d,arr_enum=%s",a1,a1.name());
a2=array0;
$display("array_index=%0d,array_enum=%s",a2,a2.name());
a3=data4;
$display("data_index=%0d,data_enum=%s",a3,a3.name());
a4=id4;
 $display("id_index=%0d,id_enum=%s",a4,a4.name());
end
endmodule 
OUTPUT:
# KERNEL: b_index=0,b_enum=CSK
# KERNEL: cus_index=5,cus_enum=c
# KERNEL: arr_index=0,arr_enum=arr0
# KERNEL: array_index=20,array_enum=array0
# KERNEL: data_index=2,data_enum=data4
# KERNEL: id_index=17,id_enum=id4
