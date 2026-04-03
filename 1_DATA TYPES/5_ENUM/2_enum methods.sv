 typedef enum {A,B,C}state;
module user_enum;
  state state_1;
  initial begin
    $display("first value=%0d",state_1.first());
    $display("second value=%0d",state_1.next());
    $display("third value=%0d",state_1.prev());
  end 
endmodule
