module gray_conv_tb ;

integer i;
parameter width = 4;
reg [width-1 : 0] gray_in;
wire [width-1 : 0] binary_out;

gray_conv dut(gray_in , binary_out);

initial begin
for(i = 0 ; i < 2 ** width ; i = i+1 ) begin
gray_in = i ;
#1
$display("gray in = %b | binary out = %b", gray_in , binary_out);

end
end
endmodule

