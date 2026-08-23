`default_nettype none

module up_down_count #(parameter width = 4) 
(
    input wire clk, rst, enb, up,
    output reg [width-1:0] count
);

always @(posedge clk or negedge rst)
begin
    if (!rst)
        count <= 0;

    else if (up && enb)
        count <= count + 1'b1;

    else if (up == 0 && enb)
        count <= count - 1'b1;
end

endmodule