`default_nettype none

module  clk_div_50MHZ_4HZ #( parameter input_freq = 50000000, parameter output_freq = 4)

     (
    input wire clk_in,
    input wire rst,
    output reg clk_out
);

localparam count  = (input_freq / (output_freq * 2));
localparam width = $clog2(count);

reg [width-1 : 0] counter ;

always @(posedge clk_in or negedge rst) 
begin
    if(!rst) begin
    counter <= 0;
    clk_out <= 1'b0 ; 
    end

    else 
    if (counter == count-1) begin
    counter <= 0;
    clk_out <= ~clk_out;
    end 

    else 
    counter <= counter + 1;
end
    
endmodule
