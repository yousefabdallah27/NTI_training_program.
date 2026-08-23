module division_4 #(parameter dividor = 16)(
    input wire clk_in , rst ,
    output wire clk_out
);
localparam width = $clog2(dividor);
reg [width-1:0] counter ;

always@(negedge clk_in or negedge rst) 
begin 
    if(!rst)
      counter <= 0;
    else 
      counter <= counter + 1'b1;
end

assign clk_out = counter[width-1];

endmodule


















