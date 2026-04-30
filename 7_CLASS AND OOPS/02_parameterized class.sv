class election #(parameter int  DEFAULT_VOTES=100 );
string candidate_name;
int total_votes;
 function new(string name,int votes);
 candidate_name=name;
 total_votes=DEFAULT_VOTES+votes;
 endfunction
 function show();
   $display("CANDIDATE NAME=%s", candidate_name);
   $display("TOTAL VOTES=%0d", total_votes);
   $display("DEFAULT VOTES=%0d",DEFAULT_VOTES);
 endfunction
endclass
module election_result;
  election #(1000) e1,e2; 
 initial begin
   e1=new("VIJAY",5000);
   e2=new("STALIN",1000);
   $display("_____________PARTY 1______________");
   e1.show();
   $display("_____________PARTY 2______________");
   e2.show();
   $display("__________ELECTION RESULT________________");
   if(e1.total_votes >e2.total_votes)
     $display("VIJAY WON THE ELECTION BY %0d VOTES",e1.total_votes-e2.total_votes);
   else 
     $display("STALIN WON THE ELECTION BY %0d VOTES",e1.total_votes-e2.total_votes);
 end 
endmodule 
 OUTPUT:
# KERNEL: _____________PARTY 1______________
# KERNEL: CANDIDATE NAME=VIJAY
# KERNEL: TOTAL VOTES=6000
# KERNEL: DEFAULT VOTES=1000
# KERNEL: _____________PARTY 2______________
# KERNEL: CANDIDATE NAME=STALIN
# KERNEL: TOTAL VOTES=2000
# KERNEL: DEFAULT VOTES=1000
# KERNEL: __________ELECTION RESULT________________
# KERNEL: VIJAY WON THE ELECTION BY 4000 VOTES

   
    
   
