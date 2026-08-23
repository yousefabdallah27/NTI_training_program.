module top_module_1_tb ;

integer i;
parameter width = 4;
reg [width-1 : 0] gray_in;
wire [width+2 : 0] segment ;

//top_module_1 t(gray_in ,segment);
top_module_2 nt(gray_in ,segment);

initial begin
for(i = 0 ; i < 2 ** width ; i = i+1 ) begin
gray_in = i ;
#1
$display("gray_in = %b | segment = %b", gray_in , segment);

end
end
    
endmodule