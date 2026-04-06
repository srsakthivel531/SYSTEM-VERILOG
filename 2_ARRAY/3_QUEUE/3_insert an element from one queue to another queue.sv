//with array 
module q;
  int q[$:5];
  int q1[$:5];
  initial begin
    q='{10,20,30,40,50};
    foreach(q[i])begin
      q1[i]=q[i];
     end 
  $display("QUEUE =%p",q1);
  end
endmodule 

//WITHOUT ARRAY
module q;
  int q[$:5];
  int q1[$:5];
  initial begin
    q='{10,20,30,40,50};
   q1=q;
  $display("QUEUE =%p",q1);
  end
endmodule 

OUTPUT:
# KERNEL: QUEUE ='{10, 20, 30, 40, 50}
