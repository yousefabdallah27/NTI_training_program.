module top_module_2(
    input wire clk_in, rst,hold,
    output wire [3:0]b
);

wire clk_out;

clk_div_50MHZ_4HZ c2(clk_in, rst, clk_out);
SR s2(clk_out , rst, hold , b);
    
endmodule