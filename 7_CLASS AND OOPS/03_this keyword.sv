class student;
 longint roll_no;
 string name;
  function new(longint roll_no,string name);
  this.roll_no=roll_no;
  this.name=name;
endfunction
function void display();
  $display("NAME=%s",this.name);
  $display("ROLL_NO=%0h",this.roll_no);
endfunction
endclass
module this_keyword;
  student s1,s2;
initial begin 
  $display("________STUDENT-1__________");
  s1=new('h731122105038,"SURIYAVAMSHI");
  s1.display();
  $display("________STUDENT-2__________");
  s2=new('h731122105029,"SHIVAM DUBE");
  s2.display();
end 
endmodule 
OUTPUT:
# KERNEL: ________STUDENT-1__________
# KERNEL: NAME=SURIYAVAMSHI
# KERNEL: ROLL_NO=731122105038
# KERNEL: ________STUDENT-2__________
# KERNEL: NAME=SHIVAM DUBE
# KERNEL: ROLL_NO=731122105029
