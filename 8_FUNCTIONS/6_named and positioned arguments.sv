module function_position;
function real freq(real cycles,time_period);
 return cycles/time_period;
endfunction 
function void display();
  real correct_freq;
  correct_freq=freq(1000,50);
  $display("CORRECT FREQUENCY=%0f",correct_freq);
endfunction 
  function void show();
  real wrong_freq;
    wrong_freq=freq(.cycles(50),.time_period(1000));
    $display("WRONG FREQUENCY=%0f",wrong_freq);
  endfunction 
initial begin 
  $display("POSITIONED ARGUMENTS");
  display();
  $display("NAMED ARGUMENTS");
  show();
end
endmodule 
OUTPUT:
# KERNEL: POSITIONED ARGUMENTS
# KERNEL: CORRECT FREQUENCY=20.000000
# KERNEL: NAMED ARGUMENTS
# KERNEL: WRONG FREQUENCY=0.050000
