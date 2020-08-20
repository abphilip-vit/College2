module E3_Half_Subtractor(a,b,d,bo);
input a,b;
output d,bo;
not(an,a);
xor(d,a,b);
and(bo,an,b);
endmodule