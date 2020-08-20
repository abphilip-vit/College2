module E6_Decoder(y,a);

output [0:7]y;
input [0:2]a;
wire [0:2]a0;

not
x1 (a0[0],a[0]),
x2 (a0[1],a[1]),
x3 (a0[2],a[2]);

and
y1 (y[0],a0[2],a0[1],a0[0]),
y2 (y[1],a0[2],a0[1],a[0]),
y3 (y[2],a0[2],a[1],a0[0]),
y4 (y[3],a0[2],a[1],a[0]),
y5 (y[4],a[2],a0[1],a0[0]),
y6 (y[5],a[2],a0[1],a[0]),
y7 (y[6],a[2],a[1],a0[0]),
y8 (y[7],a[2],a[1],a[0]);

endmodule 