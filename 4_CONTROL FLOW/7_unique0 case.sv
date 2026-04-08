//UNIQUE0 IF CASE 
module unique0_case;
  logic [1:0] sel;
initial begin 
  sel=2'b10;
  $display("FIRST CASE");
  unique0 case(sel)
    2'b00:$display("MATCHED1");
    2'b01:$display("MATCHED2");
    2'b10:$display("MATCHED3");
    2'b10:$display("MATCHED4");
    default:$display("NOT MATCHED");
  endcase
  $display("MORE THAN ONE MATCH IS FOUND AND THE WARNING MESSAGE SHOWN");
  $display("SECOND CASE");
  unique0 case(sel)
    2'b00:$display("MATCHED1");
    2'b01:$display("MATCHED2");
    2'b11:$display("MATCHED3");
    default:$display("NOT MATCHED");
  endcase
  $display(" NO MATCH IS FOUND AND DEFAULT STATEMENT EXIST THE WARNING MESSAGE NOT SHOWN");
  $display("THIRD CASE");
  unique0 case(sel)
    2'b00:$display("MATCHED1");
    2'b01:$display("MATCHED2");
    2'b11:$display("MATCHED3");
  endcase
  $display(" NO MATCH IS FOUND AND DEFAULT STATEMENT NOT EXIST THE WARNING MESSAGE NOT SHOWN");
end 
endmodule 
OUTPUT:

FIRST CASE
MATCHED3
Warning-[RT-MTOCMU0CS] More than one condition matches in statement
testbench.sv, 7
Unique0 case statement inside unique0_case matches more than one condition 
at time 0ns. Line numbers 10 and 11 match.
MORE THAN ONE MATCH IS FOUND AND THE WARNING MESSAGE SHOWN
  
SECOND CASE
NOT MATCHED
NO MATCH IS FOUND AND DEFAULT STATEMENT EXIST THE WARNING MESSAGE NOT SHOWN
  
THIRD CASE
NO MATCH IS FOUND AND DEFAULT STATEMENT NOT EXIST THE WARNING MESSAGE NOT SHOWN
