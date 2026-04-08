//UNIQUE CASE 
module unique_case;
  logic [1:0] sel;
initial begin 
  sel=2'b10;
  $display("FIRST CASE");
  priority case(sel)
    2'b00:$display("MATCHED1");
    2'b01:$display("MATCHED2");
    2'b10:$display("MATCHED3");
    2'b10:$display("MATCHED4");
    default:$display("NOT MATCHED");
  endcase
  $display("MORE THAN ONE MATCH IS FOUND AND THE WARNING MESSAGE NOT SHOWN");
  $display("SECOND CASE");
  priority case(sel)
    2'b00:$display("MATCHED1");
    2'b01:$display("MATCHED2");
    2'b11:$display("MATCHED3");
    default:$display("NOT MATCHED");
  endcase
  $display(" NO MATCH IS FOUND AND DEFAULT STATEMENT EXIST THE WARNING MESSAGE NOT SHOWN");
  $display("THIRD CASE");
  priority case(sel)
    2'b00:$display("MATCHED1");
    2'b01:$display("MATCHED2");
    2'b11:$display("MATCHED3");
  endcase
  $display(" NO MATCH IS FOUND AND DEFAULT STATEMENT NOT EXIST THE WARNING MESSAGE  SHOWN");
end 
endmodule 
OUTPUT:
FIRST CASE
MATCHED3
MORE THAN ONE MATCH IS FOUND AND THE WARNING MESSAGE NOT SHOWN

SECOND CASE
NOT MATCHED
NO MATCH IS FOUND AND DEFAULT STATEMENT EXIST THE WARNING MESSAGE NOT SHOWN

THIRD CASE
Warning-[RT-NCMPRCS] No condition matches in statement
testbench.sv, 24
  No condition matches in 'priority case' statement. 'default' specification 
  is missing, inside unique_case, at time 0ns.
 NO MATCH IS FOUND AND DEFAULT STATEMENT NOT EXIST THE WARNING MESSAGE  SHOWN
  
