module SISO(clk,d,q,rst);
input clk,d,rst;
wire clk,d,rst;
output q;
reg q;
reg [2:0]s;
always @(posedge clk)
begin 
    if(rst)
	 q<=0;
	 else begin 
	       s[0]<=d;
			 s[1]<=s[0];
			 s[2]<=s[1];
			 q<=s[2];
			 end
end 
endmodule