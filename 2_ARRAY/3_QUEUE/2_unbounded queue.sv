module queue;
  int b1[$];//unbounded
  int value;
initial begin 
  b1='{10,20,50,60,70,80};
  $display("size of unbounded queue=%0d",b1.size());
//insert
  b1.insert(1,15);
  $display("after inserting=%p",b1);
//push front
  b1.push_front(5);
$display("after push_front=%p",b1);
//push back
  b1.push_back(100);
  $display("after push_back=%p",b1);
//pop front
  value=b1.pop_front();
  $display("after pop_front_value=%p",value);
  $display("after pop_front=%p",b1);
//pop back 
  value=b1.pop_back();
  $display("after pop_back_value=%p",value);
  $display("after pop_back=%p",b1);
//reversing
  b1.reverse();
  $display("after reversing=%p",b1);
//sorting
  b1.sort();
  $display("after sorting=%p",b1);
//reverse sorting
  b1.rsort();
  $display("after rev_sorting=%p",b1);
//shuffle
  b1.shuffle(); 
  $display("after shuffle=%p",b1);
//delete the specific index value
  b1.delete(2); 
  $display("after delete=%p",b1);
//deleting full array
 b1.delete();
  $display("after delete the whole array=%p",b1);
end 
endmodule 
OUTPUT:
# KERNEL: size of unbounded queue=6
# KERNEL: after inserting='{10, 15, 20, 50, 60, 70, 80}
# KERNEL: after push_front='{5, 10, 15, 20, 50, 60, 70, 80}
# KERNEL: after push_back='{5, 10, 15, 20, 50, 60, 70, 80, 100}
# KERNEL: after pop_front_value=5
# KERNEL: after pop_front='{10, 15, 20, 50, 60, 70, 80, 100}
# KERNEL: after pop_back_value=100
# KERNEL: after pop_back='{10, 15, 20, 50, 60, 70, 80}
# KERNEL: after reversing='{80, 70, 60, 50, 20, 15, 10}
# KERNEL: after sorting='{10, 15, 20, 50, 60, 70, 80}
# KERNEL: after rev_sorting='{80, 70, 60, 50, 20, 15, 10}
# KERNEL: after shuffle='{20, 70, 80, 15, 50, 10, 60}
# KERNEL: after delete='{20, 70, 15, 50, 10, 60}
# KERNEL: after delete the whole array='{}
