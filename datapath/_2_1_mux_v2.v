module _2_1_mux_v2(a,b,s,out);

input a,b,s;
output out;

wire snot,andA,andB;

not not1(snot,s);
and add1(andA,snot,a);
and add2(andB,s,b);
or or1(out,andA,andB);

endmodule
