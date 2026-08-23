`timescale 1ns/1ps

module clk_div_50MHZ_4HZ_tb ;

reg clk_in, rst;
wire clk_out;


clk_div_50MHZ_4HZ #(.input_freq(16), .output_freq(4)) dut( clk_in, rst, clk_out);

always #5 clk_in = ~clk_in ;

initial begin
     
     rst = 1'b0;
     clk_in = 1'b0;

     #10;
     rst = 1'b1 ;

     # 1000;
     $stop

end
    


endmodule