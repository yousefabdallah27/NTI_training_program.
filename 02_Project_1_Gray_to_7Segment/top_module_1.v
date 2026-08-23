`default_nettype none

module top_module_1 #(parameter width = 4)(
    input wire [width-1 : 0] gray_in ,
    output wire [width+2 : 0] segment 
);
 
 wire [width-1 : 0]binary_out;

gray_conv g(gray_in , binary_out) ;
hex_7_segement h(binary_out , segment) ;

endmodule