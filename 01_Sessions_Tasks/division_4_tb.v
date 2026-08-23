module division_4_tb ;

reg clk_in , rst ;
wire clk_out;

division_4 #(.dividor(4)) d1(clk_in ,rst, clk_out);

always #5 clk_in = ~clk_in;

initial begin
    
    clk_in  = 1'b0;
    rst = 1'b0;
    #10;
    rst = 1;
    #100;
    $stop;
end


    
endmodule