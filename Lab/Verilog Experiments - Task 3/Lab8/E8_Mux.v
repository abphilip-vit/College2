module E8_Mux(s,i,y);
input [0:2]s;
input [0:7]i;
output y;
wire [0:7]n;
wire [0:2]sn;

not(sn[0],s[0]);
not(sn[1],s[1]);
not(sn[2],s[2]);

and(n[7],s[2],s[1],s[0],i[7]);
and(n[6],s[2],s[1],sn[0],i[6]);
and(n[5],s[2],sn[1],s[0],i[5]);
and(n[4],s[2],sn[1],sn[0],i[4]);
and(n[3],sn[2],s[1],s[0],i[3]);
and(n[2],sn[2],s[1],sn[0],i[2]);
and(n[1],sn[2],sn[1],s[0],i[1]);
and(n[0],sn[2],sn[1],sn[0],i[0]);

or(y,n[7],n[6],n[5],n[4],n[3],n[2],n[1],n[0]);
endmodule