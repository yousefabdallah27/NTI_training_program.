module SR_tb ;
reg clk, rst,hold;
wire [3:0] b;

SR s(clk,rst,hold,b);

always #5 clk = ~clk;

initial begin
   $monitor(" b=%b", b);
   {hold,clk,rst} = 0;
   #10;
   rst = 1'b1;
   hold = 1'b1;
   #50;

end
endmodule
