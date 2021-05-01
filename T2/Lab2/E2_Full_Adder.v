module E2_Full_Adder(a,b,c,s,co);
input a,b,c;
output s,co;
wire x1,x2,x3;
xor(s,a,b,c);
and(x1,a,b);
and(x2,a,c);
and(x3,b,c);
or(co,x1,x2,x3);
endmodule