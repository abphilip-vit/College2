module E4_Full_Subtractor(a,b,c,d,bo);
input a,b,c;
output d,bo;

wire a_n,w1,w2,w3,w1_n,w2_n;
not(a_n,a);
not(w2_n,w2);
not(w1_n,w1);

and(w1,a_n,b);
and(bo,w1_n,c);
xor(d,a,b,c);
endmodule