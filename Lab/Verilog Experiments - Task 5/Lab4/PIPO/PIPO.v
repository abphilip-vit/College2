module PIPO ( din ,clk ,reset ,dout );

output [3:0] dout ;
reg [3:0] dout ;

input [3:0] din ;
wire [3:0] din ;
input clk ;
wire clk ;
input reset ;
wire reset ;

always @ (posedge (clk)) begin
 if (reset)
  dout <= 0;
 else
  dout <= din;
end

endmodule