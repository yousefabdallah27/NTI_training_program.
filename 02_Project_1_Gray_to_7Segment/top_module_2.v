`default_nettype none

module top_module_2 #(parameter width = 4)(
    input wire [width-1 : 0] gray_in ,
    output wire [width+2 : 0] segment 
);

 wire [width-1 : 0] n_gray_in;
  wire [width+2 : 0] n_segment;
 wire [width-1 : 0] binary_out;

 assign n_gray_in = ~gray_in ;
 

gray_conv g(n_gray_in , binary_out) ;
hex_7_segement h(binary_out , n_segment) ;
assign segment = ~n_segment  ;

endmodule