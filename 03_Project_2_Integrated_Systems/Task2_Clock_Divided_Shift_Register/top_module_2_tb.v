module top_module_2_tb ;

  reg clk_in, rst,hold;
  wire  [3:0]b;


top_module_2 t2(clk_in, rst,hold,b);

always #5 clk_in = ~clk_in;

initial begin 
    {clk_in, rst, hold}=0;
    #10
    rst = 1;
    hold = 1;

end
endmodule