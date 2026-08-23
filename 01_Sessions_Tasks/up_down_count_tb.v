module up_down_count_tb;

reg clk, rst,  enb, up;


wire [3:0] count;

up_down_count s(clk,rst,enb,up,count);

always #1 clk = ~clk;

initial begin
    $monitor("count = %b", count);
    {clk, rst, enb, up} = 0;

    #10;
    rst = 1;
    #10;
    enb = 1;
    up  = 1;
    #50;
    up = 0;
    #50;
    enb = 0;
    #20;
    $finish;
    

end
endmodule