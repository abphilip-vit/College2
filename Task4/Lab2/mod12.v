module mod12(enable,out,rst,clk);
output [3:0]out;
input rst,clk,enable;
reg [3:0]out;
always@(posedge clk)
begin
if(rst|out==4'b1011)
out<=4'b0000;
else if(enable)
out<=out+4'b0001;
end
endmodule