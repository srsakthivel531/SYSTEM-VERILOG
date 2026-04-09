//MEMORY INICIALIZE
module for_loop;
  bit [7:0] mem[11];
  int i,sum;
  initial begin 
    $display("MEMORY UNIT ");
    //INICIALIZE THE MEMORY 
    for(i=0;i<=10;i++)begin
      mem[i]=i*3;
    end
    //DISPLAY THE MEMORY
    for(i=0;i<=10;i++)begin
      $display("mem[%0d]=%0d",i,mem[i]);
    end 
    //SUM OF MEMORY ELEMENTS
     for(i=0;i<=10;i++)begin
       sum=sum+mem[i];
    end 
   $display("SUM OF ELEMENTS IN THE MEMORY=%0d",sum);
  end 
endmodule 
OUTPUT:
# KERNEL: MEMORY UNIT 
# KERNEL: mem[0]=0
# KERNEL: mem[1]=3
# KERNEL: mem[2]=6
# KERNEL: mem[3]=9
# KERNEL: mem[4]=12
# KERNEL: mem[5]=15
# KERNEL: mem[6]=18
# KERNEL: mem[7]=21
# KERNEL: mem[8]=24
# KERNEL: mem[9]=27
# KERNEL: mem[10]=30
# KERNEL: SUM OF ELEMENTS IN THE MEMORY=165
