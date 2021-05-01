// Universal Shift Register 
// Verilog code for a D flip flop
module USR(d,clr,clk,q);
input d,clr,clk;
output q;
reg q;
always@(negedge clr or posedge clk)
begin
if(!clear)
q <= 1'b0;
else
q <= d;
end
endmodule 
