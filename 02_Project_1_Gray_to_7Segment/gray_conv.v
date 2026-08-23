`default_nettype none

module gray_conv #(parameter width = 4)(
    input wire [width-1 : 0] gray_in,
    output reg [width-1 : 0] binary_out
);
    
integer i;
always@(*)
begin
for(i=0 ; i< width ; i = i+1)
binary_out[i] = ^(gray_in >> i) ;
end

endmodule