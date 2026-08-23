`default_nettype none
module hex_7_segement #(parameter width = 4) (
    input wire [width-1 : 0] binary_int,
    output reg [width+2 : 0] segment
);

always@(*)
begin
case(binary_int) 
    4'b0000 :  segment = 7'b0111111 ;
    4'b0001 :  segment = 7'b0110000 ;
    4'b0010 :  segment = 7'b1011001 ;
    4'b0011 :  segment = 7'b1001111 ;
    4'b0100 :  segment = 7'b1100110 ;
    4'b0101 :  segment = 7'b1101101 ;
    4'b0110 :  segment = 7'b1111101 ;
    4'b0111 :  segment = 7'b0000111 ;
    4'b1000 :  segment = 7'b1111111 ;
    4'b1001 :  segment = 7'b1100111 ;
    4'b1010 :  segment = 7'b1110111 ;
    4'b1011 :  segment = 7'b1111100 ;
    4'b1100 :  segment = 7'b0111001 ;
    4'b1101 :  segment = 7'b1011110 ;
    4'b1110 :  segment = 7'b1111001 ;
    4'b1111 :  segment = 7'b1110001 ;
    default:  segment  = 7'b0000000 ;
   
endcase
end 
endmodule