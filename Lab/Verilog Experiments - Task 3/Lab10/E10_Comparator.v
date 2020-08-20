module E10_Comparator(a,b,a0,b0,y0,y1,y2);
input a,b,a0,b0;
output y0,y1,y2;
wire a_n,b_n,a0_n,b0_n;
wire a1,a2,a3,a4,a5,a6,a7,a8,a9,b1,b2;

not(a_n,a);
not(b_n,b);
not(a0_n,a0);
not(b0_n,b0);
and(a1,b_n,a);
and(a2,a0,b_n);
and(a3,a0,a);
and(a4,b,a_n);
and(a5,b0,b,a0_n);
and(a6,a_n,a0_n,b0);

xnor(a7,a,b);
xnor(a8,b0,a0);
or(b1,a2,a3);
and(b2,b1,b0_n);
or(y0,b2,a1);
or(y1,a4,a5,a6);
and(y2,a7,a8);

endmodule 