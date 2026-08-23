`timescale 1ns/1ps
module top_module_1_tb ;


parameter width = 4;
reg clk_in , rst,enb, up;
wire [width+2 : 0] segment ;

top_module_1 dut(clk_in , rst,enb, up, segment);

always #5 clk_in = ~clk_in ;

initial begin
{clk_in , rst,enb, up} = 0;
//$monitor("counter = %d | up_down_counter = %b | segment = %b", dut.clk.counter,dut.counter, segment);

#10;

rst = 1;
enb = 1;
up  = 1;

#3000;



end

    
endmodule