module SR (
    input wire clk, rst,hold,
    output reg [3:0] b 
);

always@(posedge clk or negedge rst) begin
if(!rst)
  b = 4'b1000;
  else
  if(!hold)
    b <= b ;
  else 
  b <= {b[0] , b[3:1]};
end 
endmodule
