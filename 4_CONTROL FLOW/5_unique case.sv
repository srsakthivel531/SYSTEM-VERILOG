//UNIQUE CASE 
module unique_case;
  logic [1:0] sel;
initial begin 
  sel=2'b10;
  $display("FIRST CASE");
  unique case(sel)
    2'b00:$display("MATCHED");
    2'b01:$display("MATCHED");
    2'b10:$display("MATCHED");
    2'b10:$display("MATCHED");
    default:$display("NOT MATCHED");
  endcase
  $display("MORE THAN ONE MATCH IS FOUND AND THE WARNING MESSAGE SHOWN");
  $display("SECOND CASE");
  unique case(sel)
    2'b00:$display("MATCHED");
    2'b01:$display("MATCHED");
    2'b11:$display("MATCHED");
    default:$display("NOT MATCHED");
  endcase
  $display(" NO MATCH IS FOUND AND DEFAULT STATEMENT EXIST THE WARNING MESSAGE NOT SHOWN");
  $display("THIRD CASE");
  unique case(sel)
    2'b00:$display("MATCHED");
    2'b01:$display("MATCHED");
    2'b11:$display("MATCHED");
  endcase
  $display(" NO MATCH IS FOUND AND DEFAULT STATEMENT NOT EXIST THE WARNING MESSAGE  SHOWN");
end 
endmodule 
  OUTPUT:
FIRST CASE
MATCHED
Warning-[RT-MTOCMUCS] More than one condition match in statement
testbench.sv, 7
  More than one condition matches are found in 'unique case' statement inside 
  unique_case, at time 0ns.
  Line number 10 and 11 are overlapping.
MORE THAN ONE MATCH IS FOUND AND THE WARNING MESSAGE SHOWN
    
SECOND CASE
NOT MATCHED
NO MATCH IS FOUND AND DEFAULT STATEMENT EXIST THE WARNING MESSAGE NOT SHOWN
    
THIRD CASE
Warning-[RT-NCMUCS] No condition matches in statement
testbench.sv, 24
  No condition matches in 'unique case' statement. 'default' specification is 
  missing, inside unique_case, at time 0ns.
 NO MATCH IS FOUND AND DEFAULT STATEMENT NOT EXIST THE WARNING MESSAGE  SHOWN
