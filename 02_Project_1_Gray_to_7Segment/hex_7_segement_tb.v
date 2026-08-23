module hex_7_segement_tb ;

integer i;
parameter width = 4;
reg [width-1 : 0] binary_int;
wire [width+2 : 0] segment ;

hex_7_segement dut(binary_int ,segment);

initial begin
for(i = 0 ; i < 2 ** width ; i = i+1 ) begin
binary_int = i ;
#1
$display("binary_int = %b | segment = %b", binary_int , segment);

end
end
    
endmodule