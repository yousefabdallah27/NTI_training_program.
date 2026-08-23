module top_module_1 #(parameter width = 4)(
    input wire clk_in , rst,enb, up,
    output wire [width+2 : 0] segment
);

wire clock_out;
wire [width-1:0] counter;

clk_div_50MHZ_4HZ clk (clk_in , rst,clock_out);
up_down_count cnt (clock_out, rst, enb , up, counter);
hex_7_segement hex (counter,segment );


    
endmodule