module E5_Encoder(y,a);

input[0:7]y;
output[0:2]a;

or(a[2],y[4],y[5],y[6],y[7]);
or(a[1],y[2],y[3],y[6],y[7]);
or(a[0],y[1],y[3],y[5],y[7]);
endmodule  